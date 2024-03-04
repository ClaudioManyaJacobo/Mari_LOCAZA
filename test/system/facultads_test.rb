require "application_system_test_case"

class FacultadsTest < ApplicationSystemTestCase
  setup do
    @facultad = facultads(:one)
  end

  test "visiting the index" do
    visit facultads_url
    assert_selector "h1", text: "Facultads"
  end

  test "should create facultad" do
    visit facultads_url
    click_on "New facultad"

    fill_in "Id facultad", with: @facultad.id_facultad
    fill_in "Nombre", with: @facultad.nombre
    click_on "Create Facultad"

    assert_text "Facultad was successfully created"
    click_on "Back"
  end

  test "should update Facultad" do
    visit facultad_url(@facultad)
    click_on "Edit this facultad", match: :first

    fill_in "Id facultad", with: @facultad.id_facultad
    fill_in "Nombre", with: @facultad.nombre
    click_on "Update Facultad"

    assert_text "Facultad was successfully updated"
    click_on "Back"
  end

  test "should destroy Facultad" do
    visit facultad_url(@facultad)
    click_on "Destroy this facultad", match: :first

    assert_text "Facultad was successfully destroyed"
  end
end
