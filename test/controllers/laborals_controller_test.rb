require "test_helper"

class LaboralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @laboral = laborals(:one)
  end

  test "should get index" do
    get laborals_url
    assert_response :success
  end

  test "should get new" do
    get new_laboral_url
    assert_response :success
  end

  test "should create laboral" do
    assert_difference('Laboral.count') do
      post laborals_url, params: { laboral: { q1: @laboral.q1, q10: @laboral.q10, q11: @laboral.q11, q12: @laboral.q12, q2: @laboral.q2, q3: @laboral.q3, q4: @laboral.q4, q5: @laboral.q5, q6: @laboral.q6, q7: @laboral.q7, q8: @laboral.q8, q9: @laboral.q9, user_id: @laboral.user_id } }
    end

    assert_redirected_to laboral_url(Laboral.last)
  end

  test "should show laboral" do
    get laboral_url(@laboral)
    assert_response :success
  end

  test "should get edit" do
    get edit_laboral_url(@laboral)
    assert_response :success
  end

  test "should update laboral" do
    patch laboral_url(@laboral), params: { laboral: { q1: @laboral.q1, q10: @laboral.q10, q11: @laboral.q11, q12: @laboral.q12, q2: @laboral.q2, q3: @laboral.q3, q4: @laboral.q4, q5: @laboral.q5, q6: @laboral.q6, q7: @laboral.q7, q8: @laboral.q8, q9: @laboral.q9, user_id: @laboral.user_id } }
    assert_redirected_to laboral_url(@laboral)
  end

  test "should destroy laboral" do
    assert_difference('Laboral.count', -1) do
      delete laboral_url(@laboral)
    end

    assert_redirected_to laborals_url
  end
end
