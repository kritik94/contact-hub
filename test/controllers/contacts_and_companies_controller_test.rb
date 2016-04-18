require 'test_helper'

class ContactsAndCompaniesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
