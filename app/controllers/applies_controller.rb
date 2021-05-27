class AppliesController < ApplicationController
  def show
    @apply = Apply.find(params[:id])
    @offer = @apply.offer
  end

  def index
    @applies = current_user.applies
    if params.dig(:status)
      @applies = @applies.where(status: params[:status])
    end
  end
end
