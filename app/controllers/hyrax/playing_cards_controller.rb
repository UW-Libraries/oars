# Generated via
#  `rails generate hyrax:work PlayingCard`
module Hyrax
  # Generated controller for PlayingCard
  class PlayingCardsController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::PlayingCard

    # Use this line if you want to use a custom presenter
    self.show_presenter = Hyrax::PlayingCardPresenter
  end
end
