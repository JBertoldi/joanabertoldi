def create_joanas(url)
  json = get_json(url)

  Joana.create!(
    name: json[:name],
    username: json[:login],
    location: json[:location],
    bio: json[:bio],
    email: json[:email],
    repos_url: json[:repos_url]
  )

  puts Joana.last
end
