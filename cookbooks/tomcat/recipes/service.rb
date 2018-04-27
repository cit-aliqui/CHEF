if system( 'ps -ef | grep /bin/java | grep -v grep' )
    execute "Stopping Tomcat" do 
        command "#{node['tomcat']['DIR']}/bin/shutdown.sh && sleep 10"
    end
end 

execute "Starting Tomcat" do 
    command "#{node['tomcat']['DIR']}/bin/startup.sh"
end