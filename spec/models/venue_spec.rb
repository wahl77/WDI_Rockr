require 'spec_helper'

describe Venue do
  describe "#ordered" do
    it "orders venues by name" do
      FactoryGirl.create(:venue)
      FactoryGirl.create(:venue, {name: "AAA Concert Hall"})
      FactoryGirl.create(:venue, {name: "Zed's Studio"})

      expect(Venue.ordered.first.name).to eq("AAA Concert Hall")
      expect(Venue.ordered.last.name).to eq("Zed's Studio")
    end
  end
end