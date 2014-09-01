require 'test_helper'

class DistrictCoursesControllerTest < ActionController::TestCase
  setup do
    @district_course = district_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:district_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create district_course" do
    assert_difference('DistrictCourse.count') do
      post :create, district_course: { district_id: @district_course.district_id, name: @district_course.name, state_course_id: @district_course.state_course_id, subject_id: @district_course.subject_id }
    end

    assert_redirected_to district_course_path(assigns(:district_course))
  end

  test "should show district_course" do
    get :show, id: @district_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @district_course
    assert_response :success
  end

  test "should update district_course" do
    patch :update, id: @district_course, district_course: { district_id: @district_course.district_id, name: @district_course.name, state_course_id: @district_course.state_course_id, subject_id: @district_course.subject_id }
    assert_redirected_to district_course_path(assigns(:district_course))
  end

  test "should destroy district_course" do
    assert_difference('DistrictCourse.count', -1) do
      delete :destroy, id: @district_course
    end

    assert_redirected_to district_courses_path
  end
end
