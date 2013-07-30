require 'spec_helper'

describe "homepage", js: true do 
  before do 
    visit root_path
    @option = FactoryGirl.create(:venue, name: 'Exc')
  end

  it "displays the New Venue form via Ajax" do
    click_link "New Venue"
    expect(page).to have_css('form#new_venue')
  end

  it "displays the New Concert form via Ajax" do
    click_link "New Concert"
    expect(page).to have_css('form#new_concert')
  end

  describe "submitting new venue form" do 
    it "updates list of concerts" do
      click_link "New Venue"
      fill_in "Name", with: "The Slowdown"
      click_button "Save Venue"
      expect(page).to_not have_css("form#new_venue")
      expect(page.find('#concerts')).to have_content('The Slowdown')
    end

    it "updates the list of venues for a new concert" do 
      click_link "New Venue"
      fill_in "Name", with: "The filmore"
      click_button "Save Venue"
      click_link "New Concert"
      expect(page.find('#concert_venue_id')).to have_content('The filmore')
    end

  end

  describe "submitting new concert form", js: true do 
    it "updates list of concerts" do

      click_link "New Concert"
      fill_in "Artist Name", with: "The Eagles"
      select(@option.id, from: "concert[venue_id]")
      click_button "Save Concert"
      expect(page).to_not have_css("form#new_concert")
      expect(page.find('#concerts')).to have_content('The Eagles')
    end
  end
end
