package 'Install Java' do 
    package_name "java"
    action :install
end

remote_file "Downloading Tomcat" do 
    source "#{node['tomcat']['URL']}"
    path "/opt/#{node['tomcat']['TAR']}"
end

execute 'Extract tar file' do 
    command  "tar -xf #{node['tomcat']['TAR']}"
    cwd "/opt"
    not_if { File.exists?("#{node['tomcat']['DIR']}") }
end

Dir["#{node['tomcat']['DIR']}/webapps/*"].each do |filename|

    if File.file?("#{filename}") 
        file "Deleting #{filename}" do   
            path "#{filename}"
            action :delete
        end
    end 

    if File.directory?("#{filename}") 
        directory "Deleting #{filename}" do   
            path "#{filename}"
            recursive true
            action :delete
        end
    end 
end

remote_file "Downloading Warfile" do 
    source "#{node['tomcat']['WAR_URL']}"
    path "#{node['tomcat']['DIR']}/webapps/student.war"
end

remote_file "Downloading JDBC Jar file" do 
    source "#{node['tomcat']['JDBC_URL']}"
    path "#{node['tomcat']['DIR']}/lib/mysql-connector-java-5.1.40.jar"
end


