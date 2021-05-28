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
    @applies_user = current_user.applies
    @candidatures = Apply.where(user: current_user)
    @entretiens = Apply.where(user: current_user && "status" == "Entretien")
    @entretiens = @applies_user.where(status: "Entretien")
    @candidatures = Apply.where(status: "A postuler")
  end
end
