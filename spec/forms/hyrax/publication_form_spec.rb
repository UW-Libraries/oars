# Generated via
#  `rails generate hyrax:work Publication`
require 'rails_helper'

RSpec.describe Hyrax::PublicationForm do
  subject { form }
  let(:publication)    { Publication.new }
  let(:ability) { Ability.new(nil) }
  let(:request) { nil }
  let(:form)    { described_class.new(publication, ability, request) }
  it "has the expected terms" do
    expect(form.terms).to include(:title)
    expect(form.terms).to include(:doi)
    expect(form.terms).to include(:sponsor)
    expect(form.terms).to include(:datepublishedelsewhere)
    expect(form.terms).to include(:citation)
    expect(form.terms).to include(:rights)
  end
end
