package 'Install MariaDB Server' do 
    package_name 'mariadb-server'
    action :install
end

service 'Start MariaDB service' do 
    service_name  'mariadb'
    action [ :enable, :restart ]
end

#create_db 'SAMPLE' 

