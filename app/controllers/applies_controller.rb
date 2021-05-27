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
    @candidatures = Apply.where(user: current_user)
    @entretiens = Apply.where(user: current_user && "status" == "Entretien")
  end
end
