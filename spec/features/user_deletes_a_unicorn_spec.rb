require 'rails_helper'

RSpec.describe "User can delete unicorn" do
  it "is deleted" do
    unicorn_1 = Unicorn.create(name: "Geofficus", color: "grey")

    visit unicorns_path

    click_link("Destroy")

    expect(page).to_not have_content("Geofficus")
  end
end