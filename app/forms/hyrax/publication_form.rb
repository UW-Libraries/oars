# Generated via
#  `rails generate hyrax:work Publication`
module Hyrax
  # Generated form for Publication
  class PublicationForm < Hyrax::Forms::WorkForm
    self.model_class = ::Publication
    self.terms += [:resource_type]
    self.terms += [:sponsor]
    self.terms += [:datepublishedelsewhere]
    self.terms += [:citation]
    self.terms += [:doi]
    self.terms += [:rights]
    self.terms -= [:rights_statement]
    self.terms -= [:date_created]
    self.terms -= [:source]
  end
end
