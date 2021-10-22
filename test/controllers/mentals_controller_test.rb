require "test_helper"

class MentalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mental = mentals(:one)
  end

  test "should get index" do
    get mentals_url
    assert_response :success
  end

  test "should get new" do
    get new_mental_url
    assert_response :success
  end

  test "should create mental" do
    assert_difference('Mental.count') do
      post mentals_url, params: { mental: { q1: @mental.q1, q10: @mental.q10, q11: @mental.q11, q12: @mental.q12, q13: @mental.q13, q14: @mental.q14, q15: @mental.q15, q16: @mental.q16, q17: @mental.q17, q18: @mental.q18, q19: @mental.q19, q2: @mental.q2, q20: @mental.q20, q21: @mental.q21, q22: @mental.q22, q23: @mental.q23, q24: @mental.q24, q3: @mental.q3, q4: @mental.q4, q5: @mental.q5, q6: @mental.q6, q7: @mental.q7, q8: @mental.q8, q9: @mental.q9, user_id: @mental.user_id } }
    end

    assert_redirected_to mental_url(Mental.last)
  end

  test "should show mental" do
    get mental_url(@mental)
    assert_response :success
  end

  test "should get edit" do
    get edit_mental_url(@mental)
    assert_response :success
  end

  test "should update mental" do
    patch mental_url(@mental), params: { mental: { q1: @mental.q1, q10: @mental.q10, q11: @mental.q11, q12: @mental.q12, q13: @mental.q13, q14: @mental.q14, q15: @mental.q15, q16: @mental.q16, q17: @mental.q17, q18: @mental.q18, q19: @mental.q19, q2: @mental.q2, q20: @mental.q20, q21: @mental.q21, q22: @mental.q22, q23: @mental.q23, q24: @mental.q24, q3: @mental.q3, q4: @mental.q4, q5: @mental.q5, q6: @mental.q6, q7: @mental.q7, q8: @mental.q8, q9: @mental.q9, user_id: @mental.user_id } }
    assert_redirected_to mental_url(@mental)
  end

  test "should destroy mental" do
    assert_difference('Mental.count', -1) do
      delete mental_url(@mental)
    end

    assert_redirected_to mentals_url
  end
end
