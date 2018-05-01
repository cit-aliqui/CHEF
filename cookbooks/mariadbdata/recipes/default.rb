DB = data_bag_item('sample', 'mariadb' )
puts "#{DB['DBNAME']}"
#puts "#{DB[:DBNAME]}"
template 'Copy sample sql file' do 
  path '/tmp/sample.sql'
  source 'demo.erb'
end
