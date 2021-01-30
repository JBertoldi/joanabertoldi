require_relative 'get_json'
require_relative '../create_joanas'

puts 'Destroying joanas..'
Joana.destroy_all

puts 'Creating joanas..'

url = 'https://api.github.com/users/JBertoldi'
create_joanas(url)

puts 'Done'
