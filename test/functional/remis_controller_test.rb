require 'test_helper'

class RemisControllerTest < ActionController::TestCase
  setup do
    @remi = remis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:remis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create remi" do
    assert_difference('Remi.count') do
      post :create, remi: { create: @remi.create, index: @remi.index, new: @remi.new, update: @remi.update }
    end

    assert_redirected_to remi_path(assigns(:remi))
  end

  test "should show remi" do
    get :show, id: @remi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @remi
    assert_response :success
  end

  test "should update remi" do
    put :update, id: @remi, remi: { create: @remi.create, index: @remi.index, new: @remi.new, update: @remi.update }
    assert_redirected_to remi_path(assigns(:remi))
  end

  test "should destroy remi" do
    assert_difference('Remi.count', -1) do
      delete :destroy, id: @remi
    end

    assert_redirected_to remis_path
  end
end
