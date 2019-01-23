require 'rails_helper'

RSpec.describe "User visits the index page" do
  it "shows unicorns" do
    unicorn_1 = Unicorn.create(name: "Geofficus", color: "grey")
    unicorn_2 = Unicorn.create(name: "Fluffy", color: "white")
    unicorn_3 = Unicorn.create(name: "Voldrude", color: "black")
    
    visit unicorns_path

    expect(current_path).to eq(unicorns_path)

    expect(page).to have_content(unicorn_1.name)
    expect(page).to have_content(unicorn_1.color)
    expect(page).to have_content(unicorn_1.is_white?)

    expect(page).to have_content(unicorn_2.name)
    expect(page).to have_content(unicorn_2.color)
    expect(page).to have_content(unicorn_2.is_white?)

    expect(page).to have_content(unicorn_3.name)
    expect(page).to have_content(unicorn_3.color)
    expect(page).to have_content(unicorn_3.is_white?)

  end
end