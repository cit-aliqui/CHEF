

include_recipe 'mariadb::install'
ruby_block 'Running Hello' do 
  block do 
	puts "   Hello World"
  end
  action :run

end
include_recipe 'mariadb::config'
