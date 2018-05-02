name "stack"
description "Stack of DB +APP + WEB"
#run_list "recipe[httpd::install]","recipe[tomcat::install]","recipe[tomcat::service]","recipe[mariadb::install]","recipe[mariadb::config]"
env_run_lists "prod" => "recipe[httpd]", "dev" => "recipe[mariadb]", "_default"  => []
