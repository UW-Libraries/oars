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
  describe "#sponsor" do
    context "with a new Publication" do
      it "has no sponsor value when it is first created" do
        publication = Publication.new
        expect(publication.sponsor).to be_empty
      end
    end

    context "with an Publication that has a sponsor defined" do
      it "can set and retrieve a sponsor value" do
        publication = Publication.new
        publication.sponsor = ["Sponsoring Org"]
        expect(publication.sponsor).to eq(["Sponsoring Org"])
      end
    end
  end
  describe "#datepublishedelsewhere" do
    context "with a new Publication" do
      it "has no date published datepublishedelsewhere value when it is first created" do
        publication = Publication.new
        expect(publication.datepublishedelsewhere).to be_empty
      end
    end

    context "with an Publication that has a datepublishedelsewhere defined" do
      it "can set and retrieve a datepublishedelsewhere value" do
        publication = Publication.new
        publication.datepublishedelsewhere = ["1776"]
        expect(publication.datepublishedelsewhere).to eq(["1776"])
      end
    end
  end
  describe "#citation" do
    context "with a new Publication" do
      it "has no citation value when it is first created" do
        publication = Publication.new
        expect(publication.citation).to be_empty
      end
    end

    context "with an Publication that has a citation defined" do
      it "can set and retrieve a citation value" do
        publication = Publication.new
        publication.citation = ["test"]
        expect(publication.citation).to eq(["test"])
      end
    end
  end
  describe "#rights" do
    context "with a new Publication" do
      it "has no rights value when it is first created" do
        publication = Publication.new
        expect(publication.rights).to be_empty
      end
    end

    context "with an Publication that has a rights defined" do
      it "can set and retrieve a rights value" do
        publication = Publication.new
        publication.rights = ["test"]
        expect(publication.rights).to eq(["test"])
      end
    end
  end
end
