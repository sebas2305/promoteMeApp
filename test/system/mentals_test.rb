require "application_system_test_case"

class MentalsTest < ApplicationSystemTestCase
  setup do
    @mental = mentals(:one)
  end

  test "visiting the index" do
    visit mentals_url
    assert_selector "h1", text: "Mentals"
  end

  test "creating a Mental" do
    visit mentals_url
    click_on "New Mental"

    fill_in "Q1", with: @mental.q1
    fill_in "Q10", with: @mental.q10
    fill_in "Q11", with: @mental.q11
    fill_in "Q12", with: @mental.q12
    fill_in "Q13", with: @mental.q13
    fill_in "Q14", with: @mental.q14
    fill_in "Q15", with: @mental.q15
    fill_in "Q16", with: @mental.q16
    fill_in "Q17", with: @mental.q17
    fill_in "Q18", with: @mental.q18
    fill_in "Q19", with: @mental.q19
    fill_in "Q2", with: @mental.q2
    fill_in "Q20", with: @mental.q20
    fill_in "Q21", with: @mental.q21
    fill_in "Q22", with: @mental.q22
    fill_in "Q23", with: @mental.q23
    fill_in "Q24", with: @mental.q24
    fill_in "Q3", with: @mental.q3
    fill_in "Q4", with: @mental.q4
    fill_in "Q5", with: @mental.q5
    fill_in "Q6", with: @mental.q6
    fill_in "Q7", with: @mental.q7
    fill_in "Q8", with: @mental.q8
    fill_in "Q9", with: @mental.q9
    fill_in "User", with: @mental.user_id
    click_on "Create Mental"

    assert_text "Mental was successfully created"
    click_on "Back"
  end

  test "updating a Mental" do
    visit mentals_url
    click_on "Edit", match: :first

    fill_in "Q1", with: @mental.q1
    fill_in "Q10", with: @mental.q10
    fill_in "Q11", with: @mental.q11
    fill_in "Q12", with: @mental.q12
    fill_in "Q13", with: @mental.q13
    fill_in "Q14", with: @mental.q14
    fill_in "Q15", with: @mental.q15
    fill_in "Q16", with: @mental.q16
    fill_in "Q17", with: @mental.q17
    fill_in "Q18", with: @mental.q18
    fill_in "Q19", with: @mental.q19
    fill_in "Q2", with: @mental.q2
    fill_in "Q20", with: @mental.q20
    fill_in "Q21", with: @mental.q21
    fill_in "Q22", with: @mental.q22
    fill_in "Q23", with: @mental.q23
    fill_in "Q24", with: @mental.q24
    fill_in "Q3", with: @mental.q3
    fill_in "Q4", with: @mental.q4
    fill_in "Q5", with: @mental.q5
    fill_in "Q6", with: @mental.q6
    fill_in "Q7", with: @mental.q7
    fill_in "Q8", with: @mental.q8
    fill_in "Q9", with: @mental.q9
    fill_in "User", with: @mental.user_id
    click_on "Update Mental"

    assert_text "Mental was successfully updated"
    click_on "Back"
  end

  test "destroying a Mental" do
    visit mentals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mental was successfully destroyed"
  end
end
