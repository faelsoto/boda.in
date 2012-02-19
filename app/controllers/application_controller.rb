class ApplicationController < ActionController::Base
  protect_from_forgery
  def after_sign_in_path_for(resource)
    case Proyecto.has?(current_user.id)
    when true
      return request.env['omniauth.origin'] || stored_location_for(resource) || root_path
    when false
      return '/proyecto/crear'
    end
  end
end
