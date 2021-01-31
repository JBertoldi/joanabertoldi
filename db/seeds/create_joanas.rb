def display_joana(joana)
  joana.as_json.each { |attr| puts attr }
end

def create_joanas(json)
  Joana.create!(
    name: json[:name],
    username: json[:login],
    location: json[:location],
    bio: json[:bio],
    email: json[:email],
    repos_url: 'https://api.github.com/user/repos',
    gh_created_at: json[:created_at]
  )

  puts display_joana(Joana.last)
end
