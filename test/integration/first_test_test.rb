require 'test_helper'

class FirstTestTest < ActionDispatch::IntegrationTest
  def setup; end

  def teardown; end

  test 'compare response' do
    get result_path, params: {:value => 33}
    res1 = response.body
    get result_path, params: {:value => 7}
    res2 = response.body
    assert_not_equal res1, res2
  end
end
