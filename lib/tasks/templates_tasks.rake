def run_templates_install_template(path) system "#{RbConfig.ruby} ./bin/rails app:template LOCATION=#{File.expand_path("../install/#{path}.rb",  __dir__)}" end

namespace :templates do
  desc 'Install Templates'
  task :install do
    run_templates_install_template 'templates'
  end
end

