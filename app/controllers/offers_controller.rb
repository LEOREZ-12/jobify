class OffersController < ApplicationController
  def new
    @offer = Offer.new
  end
end
