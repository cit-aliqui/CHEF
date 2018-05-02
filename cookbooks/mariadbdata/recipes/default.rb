DB = data_bag_item('sample', 'mariadb' )
#puts "#{DB['DBNAME']}"
#puts "#{DB[:DBNAME]}"
template 'Copy sample sql file' do 
  path '/tmp/sample.sql'
  source 'sample.sql.erb'
  variables(
        DBNAME: DB['DBNAME'],
     	DBUSER: DB['DBUSER'],
	DBPASS: DB['DBPASS']
)
end


#node['fqdn'] = 'latte'
template '/tmp/foo' do
  source 'foo.erb'
  variables(x_men: 'are keen')
end
