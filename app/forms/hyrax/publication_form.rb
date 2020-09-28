# Generated via
#  `rails generate hyrax:work Publication`
module Hyrax
  # Generated form for Publication
  class PublicationForm < Hyrax::Forms::WorkForm
    self.model_class = ::Publication
    self.terms += [:department_or_school]
    self.terms += [:campus]
    self.terms += [:resource_type]
    self.terms += [:sponsor]
    self.terms += [:datepublishedelsewhere]
    self.terms += [:citation]
    self.terms += [:doi]
    self.terms += [:rights]
    self.terms -= [:rights_statement]
    self.terms -= [:date_created]
    self.terms -= [:source]
    self.required_fields += [:department_or_school]
    self.required_fields += [:campus]
  end
end
