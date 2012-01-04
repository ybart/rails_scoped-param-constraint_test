require 'test_helper'

class ScopedParamConstraintTest < ActionDispatch::IntegrationTest
  test "Can fetch scoped page" do
    get helper.success_path(scoped_param: 'test')
    assert_response :success
  end

  test "Can recognize scoped page path" do
    assert_recognizes({:controller => 'issues', :action => 'show'}, helper.success_path(scoped_param: 'test'))
    #assert_not_nil Rails.application.routes.recognize_path(helper.success_path(scoped_param: 'test'))
  end
end
