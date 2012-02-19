require 'test_helper'

class ProyectoControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get crear" do
    get :crear
    assert_response :success
  end

end
