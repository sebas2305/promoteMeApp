require "test_helper"

class EnviromentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enviroment = enviroments(:one)
  end

  test "should get index" do
    get enviroments_url
    assert_response :success
  end

  test "should get new" do
    get new_enviroment_url
    assert_response :success
  end

  test "should create enviroment" do
    assert_difference('Enviroment.count') do
      post enviroments_url, params: { enviroment: { q1: @enviroment.q1, q10: @enviroment.q10, q11: @enviroment.q11, q12: @enviroment.q12, q13: @enviroment.q13, q14: @enviroment.q14, q15: @enviroment.q15, q16: @enviroment.q16, q17: @enviroment.q17, q18: @enviroment.q18, q19: @enviroment.q19, q2: @enviroment.q2, q20: @enviroment.q20, q21: @enviroment.q21, q22: @enviroment.q22, q23: @enviroment.q23, q3: @enviroment.q3, q4: @enviroment.q4, q5: @enviroment.q5, q6: @enviroment.q6, q7: @enviroment.q7, q8: @enviroment.q8, q9: @enviroment.q9, user_id: @enviroment.user_id } }
    end

    assert_redirected_to enviroment_url(Enviroment.last)
  end

  test "should show enviroment" do
    get enviroment_url(@enviroment)
    assert_response :success
  end

  test "should get edit" do
    get edit_enviroment_url(@enviroment)
    assert_response :success
  end

  test "should update enviroment" do
    patch enviroment_url(@enviroment), params: { enviroment: { q1: @enviroment.q1, q10: @enviroment.q10, q11: @enviroment.q11, q12: @enviroment.q12, q13: @enviroment.q13, q14: @enviroment.q14, q15: @enviroment.q15, q16: @enviroment.q16, q17: @enviroment.q17, q18: @enviroment.q18, q19: @enviroment.q19, q2: @enviroment.q2, q20: @enviroment.q20, q21: @enviroment.q21, q22: @enviroment.q22, q23: @enviroment.q23, q3: @enviroment.q3, q4: @enviroment.q4, q5: @enviroment.q5, q6: @enviroment.q6, q7: @enviroment.q7, q8: @enviroment.q8, q9: @enviroment.q9, user_id: @enviroment.user_id } }
    assert_redirected_to enviroment_url(@enviroment)
  end

  test "should destroy enviroment" do
    assert_difference('Enviroment.count', -1) do
      delete enviroment_url(@enviroment)
    end

    assert_redirected_to enviroments_url
  end
end
