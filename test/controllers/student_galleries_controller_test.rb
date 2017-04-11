require 'test_helper'

class StudentGalleriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_gallery = student_galleries(:one)
  end

  test "should get index" do
    get student_galleries_url
    assert_response :success
  end

  test "should get new" do
    get new_student_gallery_url
    assert_response :success
  end

  test "should create student_gallery" do
    assert_difference('StudentGallery.count') do
      post student_galleries_url, params: { student_gallery: { college: @student_gallery.college, faculty: @student_gallery.faculty, postion: @student_gallery.postion, working_in: @student_gallery.working_in } }
    end

    assert_redirected_to student_gallery_url(StudentGallery.last)
  end

  test "should show student_gallery" do
    get student_gallery_url(@student_gallery)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_gallery_url(@student_gallery)
    assert_response :success
  end

  test "should update student_gallery" do
    patch student_gallery_url(@student_gallery), params: { student_gallery: { college: @student_gallery.college, faculty: @student_gallery.faculty, postion: @student_gallery.postion, working_in: @student_gallery.working_in } }
    assert_redirected_to student_gallery_url(@student_gallery)
  end

  test "should destroy student_gallery" do
    assert_difference('StudentGallery.count', -1) do
      delete student_gallery_url(@student_gallery)
    end

    assert_redirected_to student_galleries_url
  end
end
