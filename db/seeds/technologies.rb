def get_tech(repo_name)
  rails = Technology.find_or_create_by(name: 'Ruby on Rails')
  postgres = Technology.find_or_create_by(name: 'PostgreSQL')
  cloudinary = Technology.find_or_create_by(name: 'Cloudinary')
  bootstrap = Technology.find_or_create_by(name: 'Bootstrap')
  javascript = Technology.find_or_create_by(name: 'Javascript')
  jquery = Technology.find_or_create_by(name: 'jQuery')
  postman = Technology.find_or_create_by(name: 'Postman')
  devise = Technology.find_or_create_by(name: 'Devise')
  elastic = Technology.find_or_create_by(name: 'ElasticSearch')
  scrapeapi = Technology.find_or_create_by(name: 'ScrapeApi')

  common = [rails, postgres]
  case repo_name
  when 'the-mob-club' then [common, jquery, devise, cloudinary, bootstrap]
  when 'grandma-palooza' then [common, jquery, devise, cloudinary, bootstrap]
  when 'fit-food' then [common, jquery, devise, elastic, scrapeapi, cloudinary, bootstrap]
  when 'cocktails-and-beverages' then [common, javascript, jquery, cloudinary, bootstrap]
  when 'one-piece-api' then [common, postman]
  end
end
