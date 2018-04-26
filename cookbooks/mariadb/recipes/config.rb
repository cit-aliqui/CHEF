cookbook_file 'Copying Student SQL File' do
    source 'student.sql'
    path '/tmp/student.sql'
    action :create
end

execute 'Load SQL file' do
    command 'mysql </tmp/student.sql'
  end
  