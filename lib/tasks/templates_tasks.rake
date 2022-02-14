def run_templates_install_template(path) system "#{RbConfig.ruby} ./bin/rails app:template LOCATION=#{File.expand_path("../install/#{path}.rb",  __dir__)}" end

namespace :templates do
  desc 'Install Templates'
  task :install do
    if Rails.root.join('config/routes.rb').exist?
      run_templates_install_template 'templates'
    else
      puts 'config/routes.rb file found'
    end
  end
end

