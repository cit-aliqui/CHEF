default['httpd']['JKURL']='http://www-us.apache.org/dist/tomcat/tomcat-connectors/jk/tomcat-connectors-1.2.43-src.tar.gz'
default['httpd']['TARFILE']="#{node['httpd']['JKURL']}".split('/').last
default['httpd']['JKDIR']="/opt/#{node['httpd']['TARFILE']}".sub('.tar.gz', '')
default['httpd']['TOMCATIP']='localhost'
