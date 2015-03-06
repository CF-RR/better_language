require 'test_helper'

class Api::V1::DataControllerTest < ActionController::TestCase
  test "index page happens with params" do

    get :index, location: "New York"
    assert_response :success
  end

  test "Error message if params are not specified." do
    get :index
    assert_select "body", "Please specify a location, such as 'Durham NC' or '27705.'"
  end

end
