require "test_helper"

class SeriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @serie = series(:one)
  end

  test "should get index" do
    get series_url
    assert_response :success
  end

  test "should get new" do
    get new_serie_url
    assert_response :success
  end

  test "should create serie" do
    assert_difference("Serie.count") do
      post series_url, params: { serie: { director: @serie.director, name: @serie.name, synopsis: @serie.synopsis } }
    end

    assert_redirected_to serie_url(Serie.last)
  end

  test "should show serie" do
    get serie_url(@serie)
    assert_response :success
  end

  test "should get edit" do
    get edit_serie_url(@serie)
    assert_response :success
  end

  test "should update serie" do
    patch serie_url(@serie), params: { serie: { director: @serie.director, name: @serie.name, synopsis: @serie.synopsis } }
    assert_redirected_to serie_url(@serie)
  end

  test "should destroy serie" do
    assert_difference("Serie.count", -1) do
      delete serie_url(@serie)
    end

    assert_redirected_to series_url
  end
end
