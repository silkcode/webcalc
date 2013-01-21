require 'test_helper'

class FormCalculationsControllerTest < ActionController::TestCase
  setup do
    @form_calculation = form_calculations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:form_calculations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create form_calculation" do
    assert_difference('FormCalculation.count') do
      post :create, form_calculation: {  }
    end

    assert_redirected_to form_calculation_path(assigns(:form_calculation))
  end

  test "should show form_calculation" do
    get :show, id: @form_calculation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @form_calculation
    assert_response :success
  end

  test "should update form_calculation" do
    put :update, id: @form_calculation, form_calculation: {  }
    assert_redirected_to form_calculation_path(assigns(:form_calculation))
  end

  test "should destroy form_calculation" do
    assert_difference('FormCalculation.count', -1) do
      delete :destroy, id: @form_calculation
    end

    assert_redirected_to form_calculations_path
  end
end
