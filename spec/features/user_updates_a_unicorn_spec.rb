require 'rails_helper'

RSpec.describe "User can update unicorn" do
  it "is deleted" do
    unicorn_1 = Unicorn.create(name: "Geofficus", color: "grey")
    
    visit unicorns_path
    
    click_link("Edit")

    unicorn = Unicorn.last

    expect(current_path).to eq(edit_unicorn_path(unicorn))

    fill_in "unicorn_name", with: "Darngnats"
    fill_in "unicorn_color", with: "white"

    click_on "Update Unicorn"

    expect(current_path).to eq(unicorn_path(unicorn))

    expect(page).to have_content("Darngnats")
    expect(page).to have_content("white")
    expect(page).to have_content("true")
  end
end