require "rails_helper"

RSpec.describe Unicorn, :type => :model do
  it "orders them in reverse chronologically" do
    ornot = Unicorn.create(name: "Ornot", color: "white")
    howsat = Unicorn.create(name: "Howsat", color: "grey")
    
    expect(ornot.is_white?).to eq(true)
    expect(howsat.is_white?).to eq(false)
  end
end