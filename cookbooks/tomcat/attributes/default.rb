default['tomcat']['URL']='http://redrockdigimark.com/apachemirror/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz'
default['tomcat']['TAR']="#{node['tomcat']['URL']}".split('/').last
default['tomcat']['DIR']="/opt/#{node['tomcat']['TAR']}".sub('.tar.gz', '')
default['tomcat']['WAR_URL']='https://github.com/cit-aliqui/APP-STACK/raw/master/student.war'
default['tomcat']['JDBC_URL']='https://github.com/cit-aliqui/APP-STACK/raw/master/mysql-connector-java-5.1.40.jar'
