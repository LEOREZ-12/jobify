class AppliesController < ApplicationController
  def show
    @apply = Apply.find(params[:id])
    @offer = @apply.offer
  end
end
