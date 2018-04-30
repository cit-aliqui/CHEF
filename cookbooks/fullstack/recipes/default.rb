#
# Cookbook:: fullstack
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'mariadb::install'
include_recipe 'mariadb::config'

include_recipe 'tomcat::install'
include_recipe 'tomcat::service'

include_recipe 'httpd::install'
