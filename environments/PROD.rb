name 'prod'
description 'The production environment'
cookbook "mariadb", "= 0.1.1"
default_attributes 'mariadb' => { 'DBNAME' => 'studentprod' }

