
ruby_block 'Sample Ruby Block Usage' do
    block do
      puts "URL = #{node['sample']['URL']}"
    end
    action :run
  end
  
