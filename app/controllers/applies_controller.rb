class AppliesController < ApplicationController
  def show
    @apply = Apply.find(params[:id])
    @offer = @apply.offer
    @step = Step.new
    @last_step = @apply.steps.last
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

    @status = params[:status]

    if params[:query].present?
      @applies = @applies.search_by_company_name(params[:query])
    elsif params.dig(:status) == "reminder"

      @applies = @allexceptdeclined.where("DATE(updated_at) >= ?", Date.today - 7.day)
    elsif params.dig(:status)
      @applies = @applies.where("status LIKE :prefix", prefix: "#{params[:status]}%")
    end
  end

  private
  def transform_status(status)
    if status == "A postuler"
      "a_postuler"
    elsif status == "Proposition à recevoir"
      "recevoir_proposition"
    elsif status == "Refus"
      "refus"
    end
  end
end
