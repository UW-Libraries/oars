# frozen_string_literal: true

class SolrDocument
  include Blacklight::Solr::Document
  include Blacklight::Gallery::OpenseadragonSolrDocument

  # Adds Hyrax behaviors to the SolrDocument.
  include Hyrax::SolrDocumentBehavior

  # self.unique_key = 'id'

  # Email uses the semantic field mappings below to generate the body of an email.
  SolrDocument.use_extension(Blacklight::Document::Email)

  # SMS uses the semantic field mappings below to generate the body of an SMS email.
  SolrDocument.use_extension(Blacklight::Document::Sms)

  # DublinCore uses the semantic field mappings below to assemble an OAI-compliant Dublin Core document
  # Semantic mappings of solr stored fields. Fields may be multi or
  # single valued. See Blacklight::Document::SemanticFields#field_semantics
  # and Blacklight::Document::SemanticFields#to_semantic_values
  # Recommendation: Use field names from Dublin Core
  use_extension(Blacklight::Document::DublinCore)

  # Do content negotiation for AF models.

  use_extension(Hydra::ContentNegotiation)

  def doi
    self[Solrizer.solr_name('doi')]
  end
  def datepublishedelsewhere
    self[Solrizer.solr_name('datepublishedelsewhere')]
  end
  def sponsor
    self[Solrizer.solr_name('sponsor')]
  end
  def citation
    self[Solrizer.solr_name('citation')]
  end
  def rights
    self[Solrizer.solr_name('rights')]
  end
  def department_or_school
    self[Solrizer.solr_name('department_or_school')]
  end
  def campus
    self[Solrizer.solr_name('campus')]
  end
end
