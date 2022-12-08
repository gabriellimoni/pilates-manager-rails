require "application_system_test_case"

class ModalitiesTest < ApplicationSystemTestCase
  setup do
    @modality = modalities(:one)
  end

  test "visiting the index" do
    visit modalities_url
    assert_selector "h1", text: "Modalities"
  end

  test "should create modality" do
    visit modalities_url
    click_on "New modality"

    fill_in "Description", with: @modality.description
    fill_in "Name", with: @modality.name
    click_on "Create Modality"

    assert_text "Modality was successfully created"
    click_on "Back"
  end

  test "should update Modality" do
    visit modality_url(@modality)
    click_on "Edit this modality", match: :first

    fill_in "Description", with: @modality.description
    fill_in "Name", with: @modality.name
    click_on "Update Modality"

    assert_text "Modality was successfully updated"
    click_on "Back"
  end

  test "should destroy Modality" do
    visit modality_url(@modality)
    click_on "Destroy this modality", match: :first

    assert_text "Modality was successfully destroyed"
  end
end
