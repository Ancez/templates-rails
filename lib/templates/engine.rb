module Templates
  class Engine < ::Rails::Engine
    initializer 'templates', before: :load_config_initializers do
      if Templates.auto_mount
        Rails.application.routes.append do
          mount Templates::Engine => Templates.mount_at
        end
      end
    end

    initializer 'templates.assets' do
      if Rails.application.config.respond_to?(:assets)
        Rails.application.config.assets.precompile += %w( templates/application.css )
      end
    end
  end
end
