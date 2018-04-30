%w(httpd httpd-devel gcc).each do |pack_name|
    package "Installing #{pack_name} Package"  do 
        package_name "#{pack_name}"
        action :install
    end
end

## Download Tomcat Connector 
remote_file "Downloading Tomncat Connector" do 
    source "#{node['httpd']['JKURL']}"
    path "/opt/#{node['httpd']['TARFILE']}"
end

execute 'Extract tar file' do 
    command  "tar -xf #{node['httpd']['TARFILE']}"
    cwd "/opt"
    not_if { File.exists?("#{node['httpd']['JKDIR']}") }
end 

execute 'Compile Mod_JK' do 
    command './configure --with-apxs=/usr/bin/apxs && make && make install'
    cwd "#{node['httpd']['JKDIR']}/native"
    not_if {File.exists?('/etc/httpd/modules/mod_jk.so')}
end 

cookbook_file 'Copy Mod-JK Conf file' do 
    path    '/etc/httpd/conf.d/mod-jk.conf'
    source 'mod-jk.conf'
end

template 'Copy Worker Properties' do
    path '/etc/httpd/conf.d/worker.properties'
    source 'worker.properties.erb'
  end

service 'Restart httpd'  do 
    service_name "httpd"
    action :restart 
end

