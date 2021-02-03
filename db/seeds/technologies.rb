def get_tech(repo_name)
  rails = Technology.create_or_find_by(name: 'Ruby on Rails')
  postgres = Technology.create_or_find_by(name: 'PostgreSQL')
  cloudinary = Technology.create_or_find_by(name: 'Cloudinary')
  bootstrap = Technology.create_or_find_by(name: 'Bootstrap')
  javascript = Technology.create_or_find_by(name: 'Javascript')
  jquery = Technology.create_or_find_by(name: 'jQuery')
  postman = Technology.create_or_find_by(name: 'Postman')
  devise = Technology.create_or_find_by(name: 'Devise')
  elastic = Technology.create_or_find_by(name: 'ElasticSearch')
  scrapeapi = Technology.create_or_find_by(name: 'ScrapeApi')

  common = [rails, postgres]
  case repo_name
  when 'the-mob-club' then [common, jquery, devise, cloudinary, bootstrap]
  when 'grandma-palooza' then [common, jquery, devise, cloudinary, bootstrap]
  when 'fit-food' then [common, jquery, devise, elastic, scrapeapi, cloudinary, bootstrap]
  when 'cocktails-and-beverages' then [common, javascript, jquery, cloudinary, bootstrap]
  when 'one-piece-api' then [common, postman]
  end
end
