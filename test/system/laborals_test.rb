require "application_system_test_case"

class LaboralsTest < ApplicationSystemTestCase
  setup do
    @laboral = laborals(:one)
  end

  test "visiting the index" do
    visit laborals_url
    assert_selector "h1", text: "Laborals"
  end

  test "creating a Laboral" do
    visit laborals_url
    click_on "New Laboral"

    fill_in "Q1", with: @laboral.q1
    fill_in "Q10", with: @laboral.q10
    fill_in "Q11", with: @laboral.q11
    fill_in "Q12", with: @laboral.q12
    fill_in "Q2", with: @laboral.q2
    fill_in "Q3", with: @laboral.q3
    fill_in "Q4", with: @laboral.q4
    fill_in "Q5", with: @laboral.q5
    fill_in "Q6", with: @laboral.q6
    fill_in "Q7", with: @laboral.q7
    fill_in "Q8", with: @laboral.q8
    fill_in "Q9", with: @laboral.q9
    fill_in "User", with: @laboral.user_id
    click_on "Create Laboral"

    assert_text "Laboral was successfully created"
    click_on "Back"
  end

  test "updating a Laboral" do
    visit laborals_url
    click_on "Edit", match: :first

    fill_in "Q1", with: @laboral.q1
    fill_in "Q10", with: @laboral.q10
    fill_in "Q11", with: @laboral.q11
    fill_in "Q12", with: @laboral.q12
    fill_in "Q2", with: @laboral.q2
    fill_in "Q3", with: @laboral.q3
    fill_in "Q4", with: @laboral.q4
    fill_in "Q5", with: @laboral.q5
    fill_in "Q6", with: @laboral.q6
    fill_in "Q7", with: @laboral.q7
    fill_in "Q8", with: @laboral.q8
    fill_in "Q9", with: @laboral.q9
    fill_in "User", with: @laboral.user_id
    click_on "Update Laboral"

    assert_text "Laboral was successfully updated"
    click_on "Back"
  end

  test "destroying a Laboral" do
    visit laborals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Laboral was successfully destroyed"
  end
end
