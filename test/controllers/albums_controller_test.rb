require 'test_helper'

class AlbumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @album = albums(:one)
  end

  test "should get index" do
    get albums_url
    assert_response :success
  end

  test "should get new" do
    get new_album_url
    assert_response :success
  end

  test "should create album" do
    assert_difference('Album.count') do
      post albums_url, params: { album: { artist: @album.artist, image: @album.image, itunes_link: @album.itunes_link, track_10: @album.track_10, track_1: @album.track_1, track_2: @album.track_2, track_3: @album.track_3, track_4: @album.track_4, track_5: @album.track_5, track_6: @album.track_6, track_7: @album.track_7, track_8: @album.track_8, track_9: @album.track_9 } }
    end

    assert_redirected_to album_url(Album.last)
  end

  test "should show album" do
    get album_url(@album)
    assert_response :success
  end

  test "should get edit" do
    get edit_album_url(@album)
    assert_response :success
  end

  test "should update album" do
    patch album_url(@album), params: { album: { artist: @album.artist, image: @album.image, itunes_link: @album.itunes_link, track_10: @album.track_10, track_1: @album.track_1, track_2: @album.track_2, track_3: @album.track_3, track_4: @album.track_4, track_5: @album.track_5, track_6: @album.track_6, track_7: @album.track_7, track_8: @album.track_8, track_9: @album.track_9 } }
    assert_redirected_to album_url(@album)
  end

  test "should destroy album" do
    assert_difference('Album.count', -1) do
      delete album_url(@album)
    end

    assert_redirected_to albums_url
  end
end
