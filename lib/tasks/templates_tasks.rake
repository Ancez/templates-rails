namespace :templates do
  desc 'Install Templates'
  task :install do
    if Rails.root.join('config/routes.rb').exist?
      Rake::Task['templates:install'].invoke
    else
      puts 'config/routes.rb file found'
    end
  end
end

