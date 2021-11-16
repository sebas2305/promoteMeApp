require "application_system_test_case"

class DiscsTest < ApplicationSystemTestCase
  setup do
    @disc = discs(:one)
  end

  test "visiting the index" do
    visit discs_url
    assert_selector "h1", text: "Discs"
  end

  test "creating a Disc" do
    visit discs_url
    click_on "New Disc"

    fill_in "Q1", with: @disc.q1
    fill_in "Q10", with: @disc.q10
    fill_in "Q10n", with: @disc.q10n
    fill_in "Q11", with: @disc.q11
    fill_in "Q11n", with: @disc.q11n
    fill_in "Q12", with: @disc.q12
    fill_in "Q12n", with: @disc.q12n
    fill_in "Q13", with: @disc.q13
    fill_in "Q13n", with: @disc.q13n
    fill_in "Q14", with: @disc.q14
    fill_in "Q14n", with: @disc.q14n
    fill_in "Q15", with: @disc.q15
    fill_in "Q15n", with: @disc.q15n
    fill_in "Q16", with: @disc.q16
    fill_in "Q16n", with: @disc.q16n
    fill_in "Q17", with: @disc.q17
    fill_in "Q17n", with: @disc.q17n
    fill_in "Q18", with: @disc.q18
    fill_in "Q18n", with: @disc.q18n
    fill_in "Q19", with: @disc.q19
    fill_in "Q19n", with: @disc.q19n
    fill_in "Q1n", with: @disc.q1n
    fill_in "Q2", with: @disc.q2
    fill_in "Q20", with: @disc.q20
    fill_in "Q20n", with: @disc.q20n
    fill_in "Q21", with: @disc.q21
    fill_in "Q21n", with: @disc.q21n
    fill_in "Q22", with: @disc.q22
    fill_in "Q22n", with: @disc.q22n
    fill_in "Q23", with: @disc.q23
    fill_in "Q23n", with: @disc.q23n
    fill_in "Q24", with: @disc.q24
    fill_in "Q24n", with: @disc.q24n
    fill_in "Q25", with: @disc.q25
    fill_in "Q25n", with: @disc.q25n
    fill_in "Q26", with: @disc.q26
    fill_in "Q26n", with: @disc.q26n
    fill_in "Q27", with: @disc.q27
    fill_in "Q27n", with: @disc.q27n
    fill_in "Q28", with: @disc.q28
    fill_in "Q28n", with: @disc.q28n
    fill_in "Q2n", with: @disc.q2n
    fill_in "Q3", with: @disc.q3
    fill_in "Q3n", with: @disc.q3n
    fill_in "Q4", with: @disc.q4
    fill_in "Q4n", with: @disc.q4n
    fill_in "Q5", with: @disc.q5
    fill_in "Q5n", with: @disc.q5n
    fill_in "Q6", with: @disc.q6
    fill_in "Q6n", with: @disc.q6n
    fill_in "Q7", with: @disc.q7
    fill_in "Q7n", with: @disc.q7n
    fill_in "Q8", with: @disc.q8
    fill_in "Q8n", with: @disc.q8n
    fill_in "Q9", with: @disc.q9
    fill_in "Q9n", with: @disc.q9n
    fill_in "User", with: @disc.user_id
    click_on "Create Disc"

    assert_text "Disc was successfully created"
    click_on "Back"
  end

  test "updating a Disc" do
    visit discs_url
    click_on "Edit", match: :first

    fill_in "Q1", with: @disc.q1
    fill_in "Q10", with: @disc.q10
    fill_in "Q10n", with: @disc.q10n
    fill_in "Q11", with: @disc.q11
    fill_in "Q11n", with: @disc.q11n
    fill_in "Q12", with: @disc.q12
    fill_in "Q12n", with: @disc.q12n
    fill_in "Q13", with: @disc.q13
    fill_in "Q13n", with: @disc.q13n
    fill_in "Q14", with: @disc.q14
    fill_in "Q14n", with: @disc.q14n
    fill_in "Q15", with: @disc.q15
    fill_in "Q15n", with: @disc.q15n
    fill_in "Q16", with: @disc.q16
    fill_in "Q16n", with: @disc.q16n
    fill_in "Q17", with: @disc.q17
    fill_in "Q17n", with: @disc.q17n
    fill_in "Q18", with: @disc.q18
    fill_in "Q18n", with: @disc.q18n
    fill_in "Q19", with: @disc.q19
    fill_in "Q19n", with: @disc.q19n
    fill_in "Q1n", with: @disc.q1n
    fill_in "Q2", with: @disc.q2
    fill_in "Q20", with: @disc.q20
    fill_in "Q20n", with: @disc.q20n
    fill_in "Q21", with: @disc.q21
    fill_in "Q21n", with: @disc.q21n
    fill_in "Q22", with: @disc.q22
    fill_in "Q22n", with: @disc.q22n
    fill_in "Q23", with: @disc.q23
    fill_in "Q23n", with: @disc.q23n
    fill_in "Q24", with: @disc.q24
    fill_in "Q24n", with: @disc.q24n
    fill_in "Q25", with: @disc.q25
    fill_in "Q25n", with: @disc.q25n
    fill_in "Q26", with: @disc.q26
    fill_in "Q26n", with: @disc.q26n
    fill_in "Q27", with: @disc.q27
    fill_in "Q27n", with: @disc.q27n
    fill_in "Q28", with: @disc.q28
    fill_in "Q28n", with: @disc.q28n
    fill_in "Q2n", with: @disc.q2n
    fill_in "Q3", with: @disc.q3
    fill_in "Q3n", with: @disc.q3n
    fill_in "Q4", with: @disc.q4
    fill_in "Q4n", with: @disc.q4n
    fill_in "Q5", with: @disc.q5
    fill_in "Q5n", with: @disc.q5n
    fill_in "Q6", with: @disc.q6
    fill_in "Q6n", with: @disc.q6n
    fill_in "Q7", with: @disc.q7
    fill_in "Q7n", with: @disc.q7n
    fill_in "Q8", with: @disc.q8
    fill_in "Q8n", with: @disc.q8n
    fill_in "Q9", with: @disc.q9
    fill_in "Q9n", with: @disc.q9n
    fill_in "User", with: @disc.user_id
    click_on "Update Disc"

    assert_text "Disc was successfully updated"
    click_on "Back"
  end

  test "destroying a Disc" do
    visit discs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Disc was successfully destroyed"
  end
end
