class ApplicationController < ActionController::Base
  protect_from_forgery
  def after_sign_in_path_for(resource)
    proyecto = Proyecto.has?(current_user.id)
    if proyecto.blank?
      "/proyectos/new"
    else
      "/proyectos/#{proyecto.id}"
    end
    # when true
    #   return request.env['omniauth.origin'] || stored_location_for(resource) || root_path
    # when false
    #   return '/proyectos/new'
    # end
  end
end
