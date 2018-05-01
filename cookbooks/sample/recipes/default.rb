#mariadb = search(:sample, "id:mariadb")
#dbname = "#{node['mariadb']['DBNAME']}"
#puts "#{dbname}"
ruby_block 'Sample Ruby Block Usage' do
    block do
      puts "URL = #{node['sample']['URL']}"
    end
    action :run
  end

ruby_block 'Sample Ruby Block Usage' do
    block do
      mariadb = search(:sample, "id:mariadb")
      dbname = "#{node['mariadb']['DBNAME']}"
      puts "DBNAME = #{dbname}"
    end
    action :run
  end  
