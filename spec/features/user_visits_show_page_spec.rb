require 'rails_helper'

RSpec.describe "User visits the show page" do
  it "shows a unicorn" do
    unicorn = Unicorn.create(name: "Testicorn", color: "blue")

    visit unicorn_path(unicorn)

    expect(current_path).to eq(unicorn_path(unicorn))

    expect(page).to have_content("Name: #{unicorn.name}")
    expect(page).to have_content("Color: #{unicorn.color}")
    expect(page).to have_content("Is white: #{unicorn.is_white?}")
  end
end