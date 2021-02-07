desc 'update commits'
task update_commits: :environment do
  puts 'Updating commits...'
  load "#{Rails.root}/db/seeds/production/commits.seeds.rb"
  puts 'Commits updated!'
end
