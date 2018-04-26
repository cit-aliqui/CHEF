
puts 'Hello World'

ruby_block 'Sample Ruby Block Usage' do
    block do
      puts 'Hello from Ruby Block'
    end
    action :run
  end
  