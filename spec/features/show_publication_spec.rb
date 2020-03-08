require 'rails_helper'

RSpec.feature 'Display an Publication' do
  let(:title)      { ['Journey to Skull Island'] }
  let(:creator)    { ['Quest, Jane'] }
  let(:keyword)    { ['Pirates', 'Adventure'] }
  let(:visibility) { Hydra::AccessControls::AccessRight::VISIBILITY_TEXT_VALUE_PUBLIC }
  let(:user)       { 'test@example.com' }
  let(:doi)        { ['DummyDOI'] }
  let(:sponsor)        { ['DummySponsor'] }
  let(:datepublishedelsewhere)        { ['DummyDate'] }
  let(:citation)        { ['DummyCitation'] }
  let(:rights)        { ['DummyRights'] }

  let :publication do
    Publication.create(title:      title,
                creator:    creator,
                keyword:    keyword,
                visibility: visibility,
                depositor:  user,
                doi:        doi,
                sponsor:    sponsor,
                datepublishedelsewhere: datepublishedelsewhere,
                citation:   citation,
                rights:     rights)
  end

  scenario "Show a public Publication" do
    visit("/concern/publications/#{publication.id}")

    expect(page).to have_content publication.title.first
    expect(page).to have_content publication.creator.first
    expect(page).to have_content publication.keyword.first
    expect(page).to have_content publication.keyword.last
    expect(page).to have_content publication.doi.first
    expect(page).to have_content publication.sponsor.first
    expect(page).to have_content publication.datepublishedelsewhere.first
    expect(page).to have_content publication.citation.first
    expect(page).to have_content publication.rights.first
  end
end
