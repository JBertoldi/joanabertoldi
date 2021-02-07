def display_object(object)
  object.as_json.each { |key, val| puts "#{key}:     #{val}" }
end

def create_joanas(json)
  joana = Joana.create!(
    name: json[:name],
    username: json[:login],
    location: json[:location],
    bio: json[:bio],
    email: json[:email],
    repos_url: 'https://api.github.com/user/repos',
    gh_created_at: json[:created_at]
  )

  puts display_object(joana)
end
