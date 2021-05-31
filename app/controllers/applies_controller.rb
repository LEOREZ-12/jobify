class AppliesController < ApplicationController
  def show
    @apply = Apply.find(params[:id])
    @offer = @apply.offer
    @step = Step.new
  end

  def index
    @allapplies_user = current_user.applies
    @entretiens = Apply.where(user: current_user && "status" == "Entretien")
    @entretiens = @allapplies_user.where(status: "Entretien")
    @candidatures = @allapplies_user.where(status: "A postuler")
    @propositions = @allapplies_user.where(status: "Proposition à recevoir")
    @refusees = @allapplies_user.where("status LIKE :prefix", prefix: "Refus%")
    @allexceptdeclined = @allapplies_user.where("status NOT LIKE :prefix", prefix: "Refus%")
    @reminders = @allexceptdeclined.where("DATE(updated_at) >= ?", Date.today - 7.day)
    @applies = current_user.applies
    if params.dig(:status) == "reminder"
      @applies = @allexceptdeclined.where("DATE(updated_at) >= ?", Date.today - 7.day)
    elsif params.dig(:status)
      @applies = @applies.where("status LIKE :prefix", prefix: "#{params[:status]}%")
    end
  end
end

