# Generated via
#  `rails generate hyrax:work Publication`
module Hyrax
  class PublicationPresenter < Hyrax::WorkShowPresenter
    delegate :doi, to: :solr_document
    delegate :sponsor, to: :solr_document
    delegate :datepublishedelsewhere, to: :solr_document
    delegate :citation, to: :solr_document
    delegate :rights, to: :solr_document
    delegate :campus, to: :solr_document
    delegate :department_or_school, to: :solr_document
  end
end
