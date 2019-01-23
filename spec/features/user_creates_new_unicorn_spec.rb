require 'rails_helper'

RSpec.describe "User creates a unicorn" do
  it "a unicorn is created" do
    visit unicorns_path

    click_on "New Unicorn"
    expect(current_path).to eq(new_unicorn_path)
    
    expect(page).to have_content("New Unicorn")

    fill_in "unicorn_name", with: "Geocifus"
    fill_in "unicorn_color", with: "grey"

    click_on "Create Unicorn"

    unicorn = Unicorn.last

    expect(current_path).to eq(unicorn_path(unicorn))
  end

  it "redirects to new path if no name" do
    visit unicorns_path
    click_on "New Unicorn"
    expect(current_path).to eq(new_unicorn_path)
    expect(page).to have_content("New Unicorn")

    fill_in "unicorn_color", with: "grey"
    click_on "Create Unicorn"

    expect(current_path).to eq(new_unicorn_path)
  end

  it "redirects to new path if no color" do
    visit unicorns_path
    click_on "New Unicorn"
    expect(current_path).to eq(new_unicorn_path)
    expect(page).to have_content("New Unicorn")

    fill_in "unicorn_name", with: "Geofficus"
    click_on "Create Unicorn"

    expect(current_path).to eq(new_unicorn_path)
  end
end