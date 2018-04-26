define :create_db do 
    ruby_block 'Sample Ruby Block Usage' do
        block do
            puts "DB NAME = #{params[:name]}"
        end
        action :run
      end
   
end
