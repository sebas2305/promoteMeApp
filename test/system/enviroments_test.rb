require "application_system_test_case"

class EnviromentsTest < ApplicationSystemTestCase
  setup do
    @enviroment = enviroments(:one)
  end

  test "visiting the index" do
    visit enviroments_url
    assert_selector "h1", text: "Enviroments"
  end

  test "creating a Enviroment" do
    visit enviroments_url
    click_on "New Enviroment"

    fill_in "Q1", with: @enviroment.q1
    fill_in "Q10", with: @enviroment.q10
    fill_in "Q11", with: @enviroment.q11
    fill_in "Q12", with: @enviroment.q12
    fill_in "Q13", with: @enviroment.q13
    fill_in "Q14", with: @enviroment.q14
    fill_in "Q15", with: @enviroment.q15
    fill_in "Q16", with: @enviroment.q16
    fill_in "Q17", with: @enviroment.q17
    fill_in "Q18", with: @enviroment.q18
    fill_in "Q19", with: @enviroment.q19
    fill_in "Q2", with: @enviroment.q2
    fill_in "Q20", with: @enviroment.q20
    fill_in "Q21", with: @enviroment.q21
    fill_in "Q22", with: @enviroment.q22
    fill_in "Q23", with: @enviroment.q23
    fill_in "Q3", with: @enviroment.q3
    fill_in "Q4", with: @enviroment.q4
    fill_in "Q5", with: @enviroment.q5
    fill_in "Q6", with: @enviroment.q6
    fill_in "Q7", with: @enviroment.q7
    fill_in "Q8", with: @enviroment.q8
    fill_in "Q9", with: @enviroment.q9
    fill_in "User", with: @enviroment.user_id
    click_on "Create Enviroment"

    assert_text "Enviroment was successfully created"
    click_on "Back"
  end

  test "updating a Enviroment" do
    visit enviroments_url
    click_on "Edit", match: :first

    fill_in "Q1", with: @enviroment.q1
    fill_in "Q10", with: @enviroment.q10
    fill_in "Q11", with: @enviroment.q11
    fill_in "Q12", with: @enviroment.q12
    fill_in "Q13", with: @enviroment.q13
    fill_in "Q14", with: @enviroment.q14
    fill_in "Q15", with: @enviroment.q15
    fill_in "Q16", with: @enviroment.q16
    fill_in "Q17", with: @enviroment.q17
    fill_in "Q18", with: @enviroment.q18
    fill_in "Q19", with: @enviroment.q19
    fill_in "Q2", with: @enviroment.q2
    fill_in "Q20", with: @enviroment.q20
    fill_in "Q21", with: @enviroment.q21
    fill_in "Q22", with: @enviroment.q22
    fill_in "Q23", with: @enviroment.q23
    fill_in "Q3", with: @enviroment.q3
    fill_in "Q4", with: @enviroment.q4
    fill_in "Q5", with: @enviroment.q5
    fill_in "Q6", with: @enviroment.q6
    fill_in "Q7", with: @enviroment.q7
    fill_in "Q8", with: @enviroment.q8
    fill_in "Q9", with: @enviroment.q9
    fill_in "User", with: @enviroment.user_id
    click_on "Update Enviroment"

    assert_text "Enviroment was successfully updated"
    click_on "Back"
  end

  test "destroying a Enviroment" do
    visit enviroments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Enviroment was successfully destroyed"
  end
end
