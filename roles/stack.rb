name "stack"
description "Stack of DB +APP + WEB"
run_list "recipe[httpd::install]","recipe[tomcat::install]","recipe[tomcat::service]","recipe[mariadb::install]","recipe[mariadb::config]"
