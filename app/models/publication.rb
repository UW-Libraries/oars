# Generated via
#  `rails generate hyrax:work Publication`
class Publication < ActiveFedora::Base
  include ::Hyrax::WorkBehavior

  self.indexer = PublicationIndexer
  # Change this to restrict which works can be added as a child.
  # self.valid_child_concerns = []
  validates :title, presence: { message: 'Your work must have a title.' }

  property :doi, predicate: "http://id.loc.gov/vocabulary/identifiers/doi" do |index|
    index.as :stored_searchable
  end
  property :sponsor, predicate: "mrel:spn" do |index|
    index.as :stored_searchable
  end
  property :datepublishedelsewhere, predicate: "dct:issued" do |index|
    index.as :stored_searchable
  end
  property :citation, predicate: "dct:bibliographicCitation" do |index|
    index.as :stored_searchable
  end
  property :rights, predicate: "dce:rights" do |index|
    index.as :stored_searchable
  end
  property :department_or_school, predicate: "mrel:sht" do |index|
    index.as :stored_searchable
  end
  # This must be included at the end, because it finalizes the metadata
  # schema (by adding accepts_nested_attributes)
  include ::Hyrax::BasicMetadata
end
