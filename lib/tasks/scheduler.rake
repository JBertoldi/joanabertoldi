desc 'Update commits'
task update_commits: :environment do
  puts 'Updating commits...'
  load "#{Rails.root}/lib/tasks/update_commits.rb"
  puts 'Commits updated!'
end
