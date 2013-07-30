FactoryGirl.define do
  factory :venue do
    name "Shoreline Amphitheater"

    factory :concert do
      artist_name "The Band"
      performing_on Time.now
    end
  end
end