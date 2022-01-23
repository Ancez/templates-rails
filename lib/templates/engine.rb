module Templates
  class Engine < ::Rails::Engine
    isolate_namespace Templates

    initializer 'templates.assets.precompile' do |app|
      app.config.assets.precompile += %w( application.css )
    end
  end
end
