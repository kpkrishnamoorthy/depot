require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a' , :minimum => 4
    assert_select '#store #columns #main .entry', 3
    assert_select '#store #columns #main h3' , 'Programming Ruby 1.9'
    assert_select '.price' , /\$[,\d]+\.\d\d/
  end
end