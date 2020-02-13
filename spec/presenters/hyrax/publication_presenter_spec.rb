require 'rails_helper'

RSpec.describe Hyrax::PublicationPresenter do
  subject { presenter }

  let(:title) { ['Journey to Skull Island'] }
  let(:creator) { ['Quest, Jane'] }
  let(:keyword) { ['Pirates', 'Adventure'] }
  let(:degree) { ['Master of Pirate Studies'] }
  let(:doi) { ['DummyDOI'] }
  let(:visibility) { Hydra::AccessControls::AccessRight::VISIBILITY_TEXT_VALUE_PUBLIC }
  let :publication do
    Publication.new(
      title: title,
      creator: creator,
      keyword: keyword,
      doi: doi,
      visibility: visibility
    )
  end

  let(:ability) { Ability.new(user) }

  let(:solr_document) { SolrDocument.new(publication.to_solr) }

  let(:presenter) do
    described_class.new(solr_document, nil)
  end

  it "delegates doi to solr document" do
    expect(solr_document).to receive(:doi)
    presenter.doi
  end
end
