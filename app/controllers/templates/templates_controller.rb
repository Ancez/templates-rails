module Templates
  class TemplatesController < Templates.parent_controller.constantize
    def index
      render template: 'templates/templates/index', layout: 'templates/index'
    end

    def show
      if params[:id].present? && File.directory?("./app/views/#{Templates.views_path}/#{params[:id]}")
        render template: 'templates/templates/nested_index', layout: 'templates/index'
      else
        render "#{Templates.views_path}/#{params[:id]}", layout: 'templates/show'
      end
    end
  end
end
