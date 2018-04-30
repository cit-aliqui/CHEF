name 'sample'
run_list "recipe[sample]"
default_attributes "sample" => { "URL" => "role.google.com" }
