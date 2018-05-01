name 'dev'
description 'The development environment'
cookbook "mariadb", "= 0.1.0"
default_attributes 'mariadb' => { 'DBNAME' => 'studentdev' }

