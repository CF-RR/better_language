require 'test_helper'

class Api::V1::DataControllerTest < ActionController::TestCase
  test "index page happens with params" do

    get :index, query: "money"
    assert_response :success
  end

  test "five articles are returned" do
    get :index, query: "finance"
    news_count = News.new("finance").content["nprml"]["list"]["story"].count
    assert_equal 5, news_count
  end

  test "article title becomes yodafied" do
    test_string = Language.new("This is a test string").content
    assert_equal test_string, "A test string this is. Yes, Hmmm."
  end
end
