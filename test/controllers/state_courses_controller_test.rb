require 'test_helper'

class StateCoursesControllerTest < ActionController::TestCase
  setup do
    @state_course = state_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:state_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create state_course" do
    assert_difference('StateCourse.count') do
      post :create, state_course: { name: @state_course.name }
    end

    assert_redirected_to state_course_path(assigns(:state_course))
  end

  test "should show state_course" do
    get :show, id: @state_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @state_course
    assert_response :success
  end

  test "should update state_course" do
    patch :update, id: @state_course, state_course: { name: @state_course.name }
    assert_redirected_to state_course_path(assigns(:state_course))
  end

  test "should destroy state_course" do
    assert_difference('StateCourse.count', -1) do
      delete :destroy, id: @state_course
    end

    assert_redirected_to state_courses_path
  end
end
