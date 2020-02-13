# Generated via
#  `rails generate hyrax:work Publication`
class Publication < ActiveFedora::Base
  include ::Hyrax::WorkBehavior

  self.indexer = PublicationIndexer
  # Change this to restrict which works can be added as a child.
  # self.valid_child_concerns = []
  validates :title, presence: { message: 'Your work must have a title.' }

  property :doi, predicate: "http://id.loc.gov/vocabulary/identifiers/doi"

  # This must be included at the end, because it finalizes the metadata
  # schema (by adding accepts_nested_attributes)
  include ::Hyrax::BasicMetadata
end
