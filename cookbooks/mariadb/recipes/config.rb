template 'Copying Student SQL File' do
    source 'student.sql.erb'
    path '/tmp/student.sql'
    action :create
end

execute 'Load SQL file' do
    command 'mysql </tmp/student.sql'
  end
  
