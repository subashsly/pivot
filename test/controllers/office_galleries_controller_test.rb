require 'test_helper'

class OfficeGalleriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @office_gallery = office_galleries(:one)
  end

  test "should get index" do
    get office_galleries_url
    assert_response :success
  end

  test "should get new" do
    get new_office_gallery_url
    assert_response :success
  end

  test "should create office_gallery" do
    assert_difference('OfficeGallery.count') do
      post office_galleries_url, params: { office_gallery: { title: @office_gallery.title } }
    end

    assert_redirected_to office_gallery_url(OfficeGallery.last)
  end

  test "should show office_gallery" do
    get office_gallery_url(@office_gallery)
    assert_response :success
  end

  test "should get edit" do
    get edit_office_gallery_url(@office_gallery)
    assert_response :success
  end

  test "should update office_gallery" do
    patch office_gallery_url(@office_gallery), params: { office_gallery: { title: @office_gallery.title } }
    assert_redirected_to office_gallery_url(@office_gallery)
  end

  test "should destroy office_gallery" do
    assert_difference('OfficeGallery.count', -1) do
      delete office_gallery_url(@office_gallery)
    end

    assert_redirected_to office_galleries_url
  end
end
