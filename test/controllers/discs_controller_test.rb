require "test_helper"

class DiscsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disc = discs(:one)
  end

  test "should get index" do
    get discs_url
    assert_response :success
  end

  test "should get new" do
    get new_disc_url
    assert_response :success
  end

  test "should create disc" do
    assert_difference('Disc.count') do
      post discs_url, params: { disc: { q1: @disc.q1, q10: @disc.q10, q10n: @disc.q10n, q11: @disc.q11, q11n: @disc.q11n, q12: @disc.q12, q12n: @disc.q12n, q13: @disc.q13, q13n: @disc.q13n, q14: @disc.q14, q14n: @disc.q14n, q15: @disc.q15, q15n: @disc.q15n, q16: @disc.q16, q16n: @disc.q16n, q17: @disc.q17, q17n: @disc.q17n, q18: @disc.q18, q18n: @disc.q18n, q19: @disc.q19, q19n: @disc.q19n, q1n: @disc.q1n, q2: @disc.q2, q20: @disc.q20, q20n: @disc.q20n, q21: @disc.q21, q21n: @disc.q21n, q22: @disc.q22, q22n: @disc.q22n, q23: @disc.q23, q23n: @disc.q23n, q24: @disc.q24, q24n: @disc.q24n, q25: @disc.q25, q25n: @disc.q25n, q26: @disc.q26, q26n: @disc.q26n, q27: @disc.q27, q27n: @disc.q27n, q28: @disc.q28, q28n: @disc.q28n, q2n: @disc.q2n, q3: @disc.q3, q3n: @disc.q3n, q4: @disc.q4, q4n: @disc.q4n, q5: @disc.q5, q5n: @disc.q5n, q6: @disc.q6, q6n: @disc.q6n, q7: @disc.q7, q7n: @disc.q7n, q8: @disc.q8, q8n: @disc.q8n, q9: @disc.q9, q9n: @disc.q9n, user_id: @disc.user_id } }
    end

    assert_redirected_to disc_url(Disc.last)
  end

  test "should show disc" do
    get disc_url(@disc)
    assert_response :success
  end

  test "should get edit" do
    get edit_disc_url(@disc)
    assert_response :success
  end

  test "should update disc" do
    patch disc_url(@disc), params: { disc: { q1: @disc.q1, q10: @disc.q10, q10n: @disc.q10n, q11: @disc.q11, q11n: @disc.q11n, q12: @disc.q12, q12n: @disc.q12n, q13: @disc.q13, q13n: @disc.q13n, q14: @disc.q14, q14n: @disc.q14n, q15: @disc.q15, q15n: @disc.q15n, q16: @disc.q16, q16n: @disc.q16n, q17: @disc.q17, q17n: @disc.q17n, q18: @disc.q18, q18n: @disc.q18n, q19: @disc.q19, q19n: @disc.q19n, q1n: @disc.q1n, q2: @disc.q2, q20: @disc.q20, q20n: @disc.q20n, q21: @disc.q21, q21n: @disc.q21n, q22: @disc.q22, q22n: @disc.q22n, q23: @disc.q23, q23n: @disc.q23n, q24: @disc.q24, q24n: @disc.q24n, q25: @disc.q25, q25n: @disc.q25n, q26: @disc.q26, q26n: @disc.q26n, q27: @disc.q27, q27n: @disc.q27n, q28: @disc.q28, q28n: @disc.q28n, q2n: @disc.q2n, q3: @disc.q3, q3n: @disc.q3n, q4: @disc.q4, q4n: @disc.q4n, q5: @disc.q5, q5n: @disc.q5n, q6: @disc.q6, q6n: @disc.q6n, q7: @disc.q7, q7n: @disc.q7n, q8: @disc.q8, q8n: @disc.q8n, q9: @disc.q9, q9n: @disc.q9n, user_id: @disc.user_id } }
    assert_redirected_to disc_url(@disc)
  end

  test "should destroy disc" do
    assert_difference('Disc.count', -1) do
      delete disc_url(@disc)
    end

    assert_redirected_to discs_url
  end
end
