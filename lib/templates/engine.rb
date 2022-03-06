module Templates
  class Engine < ::Rails::Engine
    isolate_namespace Templates

    initializer 'templates', before: :load_config_initializers do
      Rails.application.routes.append do
        mount Templates::Engine => '/'
      end
    end

    initializer 'templates.assets.precompile' do |app|
      app.config.assets.precompile += %w( templates/application.css )
    end
  end
end
