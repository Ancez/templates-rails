module Templates
  class Engine < ::Rails::Engine
    initializer 'templates', before: :load_config_initializers do
      Rails.application.routes.append do
        mount Templates::Engine => '/templates' if Rails.env.development?
      end
    end

    initializer 'templates.assets.precompile' do |app|
      app.config.assets.precompile += %w( templates/application.css )
    end
  end
end
