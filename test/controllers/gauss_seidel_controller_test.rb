require 'test_helper'

class GaussSeidelControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get metodo" do
    get :metodo
    assert_response :success
  end

  test "should get generar" do
    get :generar
    assert_response :success
  end

end
