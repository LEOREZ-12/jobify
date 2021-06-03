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
    @echanges = @allapplies_user.where(status: "Echange téléphonique")
    @candidatures = @allapplies_user.where(status: "A postuler")
    @propositions = @allapplies_user.where(status: "Proposition à recevoir")
    @refusees = @allapplies_user.where("status LIKE :prefix", prefix: "Refus%")
    @allexceptdeclined = @allapplies_user.where("status NOT LIKE :prefix", prefix: "Refus%")
    @reminders = @allexceptdeclined.where("DATE(application_date) < ?", Date.today - 14.day)
    @applies = current_user.applies

    @applies_for_fullcalendar = @applies.map { |apply| apply.content_for_fullcalendar }
    # @applies_for_fullcalendar = @applies.map(&:content_for_fullcalendar)

    @status = params[:status]

    if params[:query].present?
      @applies = @applies.search_by_company_name(params[:query]).order(:updated_at)
    elsif params.dig(:status) == "reminder"
      @applies = @allexceptdeclined.where("DATE(application_date) < ?", Date.today - 14.day).order(:updated_at)
    elsif params.dig(:status)
      @applies = @applies.where("status LIKE :prefix", prefix: "#{params[:status]}%").order(:updated_at)
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
