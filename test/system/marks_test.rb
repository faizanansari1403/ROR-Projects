require "application_system_test_case"

class MarksTest < ApplicationSystemTestCase
  setup do
    @mark = marks(:one)
  end

  test "visiting the index" do
    visit marks_url
    assert_selector "h1", text: "Marks"
  end

  test "creating a Mark" do
    visit marks_url
    click_on "New Mark"

    fill_in "M1", with: @mark.m1
    fill_in "M2", with: @mark.m2
    fill_in "M3", with: @mark.m3
    fill_in "M4", with: @mark.m4
    fill_in "M5", with: @mark.m5
    fill_in "Percentage", with: @mark.percentage
    fill_in "Student", with: @mark.student_id
    fill_in "Total", with: @mark.total
    click_on "Create Mark"

    assert_text "Mark was successfully created"
    click_on "Back"
  end

  test "updating a Mark" do
    visit marks_url
    click_on "Edit", match: :first

    fill_in "M1", with: @mark.m1
    fill_in "M2", with: @mark.m2
    fill_in "M3", with: @mark.m3
    fill_in "M4", with: @mark.m4
    fill_in "M5", with: @mark.m5
    fill_in "Percentage", with: @mark.percentage
    fill_in "Student", with: @mark.student_id
    fill_in "Total", with: @mark.total
    click_on "Update Mark"

    assert_text "Mark was successfully updated"
    click_on "Back"
  end

  test "destroying a Mark" do
    visit marks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mark was successfully destroyed"
  end
end
