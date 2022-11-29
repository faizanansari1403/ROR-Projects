require 'test_helper'

class MarksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mark = marks(:one)
  end

  test "should get index" do
    get marks_url
    assert_response :success
  end

  test "should get new" do
    get new_mark_url
    assert_response :success
  end

  test "should create mark" do
    assert_difference('Mark.count') do
      post marks_url, params: { mark: { m1: @mark.m1, m2: @mark.m2, m3: @mark.m3, m4: @mark.m4, m5: @mark.m5, percentage: @mark.percentage, student_id: @mark.student_id, total: @mark.total } }
    end

    assert_redirected_to mark_url(Mark.last)
  end

  test "should show mark" do
    get mark_url(@mark)
    assert_response :success
  end

  test "should get edit" do
    get edit_mark_url(@mark)
    assert_response :success
  end

  test "should update mark" do
    patch mark_url(@mark), params: { mark: { m1: @mark.m1, m2: @mark.m2, m3: @mark.m3, m4: @mark.m4, m5: @mark.m5, percentage: @mark.percentage, student_id: @mark.student_id, total: @mark.total } }
    assert_redirected_to mark_url(@mark)
  end

  test "should destroy mark" do
    assert_difference('Mark.count', -1) do
      delete mark_url(@mark)
    end

    assert_redirected_to marks_url
  end
end
