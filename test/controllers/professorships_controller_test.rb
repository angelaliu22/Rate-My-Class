require 'test_helper'

class ProfessorshipsControllerTest < ActionController::TestCase
  setup do
    @professorship = professorships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professorships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create professorship" do
    assert_difference('Professorship.count') do
      post :create, professorship: { end_date: @professorship.end_date, start_date: @professorship.start_date }
    end

    assert_redirected_to professorship_path(assigns(:professorship))
  end

  test "should show professorship" do
    get :show, id: @professorship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @professorship
    assert_response :success
  end

  test "should update professorship" do
    patch :update, id: @professorship, professorship: { end_date: @professorship.end_date, start_date: @professorship.start_date }
    assert_redirected_to professorship_path(assigns(:professorship))
  end

  test "should destroy professorship" do
    assert_difference('Professorship.count', -1) do
      delete :destroy, id: @professorship
    end

    assert_redirected_to professorships_path
  end
end
