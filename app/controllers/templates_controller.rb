class TemplatesController < ActionController::Base
  def index
    render :index, layout: 'templates/index'
  end

  def show
    if params[:id].present? && File.directory?("./app/views/templates/#{params[:id]}")
      render :nested_index, layout: 'templates/index'
    else
      render "templates/#{params[:id]}", layout: 'templates/show'
    end
  end
end
