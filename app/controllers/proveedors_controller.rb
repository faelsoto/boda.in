class ProveedorsController < ApplicationController
  def index
  end

  def show
  end

  def create
    params[:proveedor]['user_id'] = 1
    @proveedor = Proveedor.create(params[:proveedor])
  end
end
