# Generated via
#  `rails generate hyrax:work Publication`
require 'rails_helper'

RSpec.describe Publication do
  describe "#doi" do
    context "with a new Publication" do
      it "has no doi value when it is first created" do
        publication = Publication.new
        expect(publication.doi).to be_empty
      end
    end

    context "with an Publication that has a doi defined" do
      it "can set and retrieve a doi value" do
        publication = Publication.new
        publication.doi = ["DummyDOI"]
        expect(publication.doi).to eq(["DummyDOI"])
      end
    end
  end
end
