require 'spec_helper'

describe Concert do
  describe "#ordered" do
    it "orders concerts by performance time" do
      venue = FactoryGirl.create(:venue)

      venue.concerts.create(performing_on: Time.now.tomorrow, artist_name: "Queen")
      venue.concerts.create(performing_on: Time.now.yesterday, artist_name: "Fiona Apple")
      venue.concerts.create(performing_on: Time.now)

      expect(venue.concerts.ordered.first.artist_name).to eq("Fiona Apple")
      expect(venue.concerts.ordered.last.artist_name).to eq("Queen")
    end
  end
end