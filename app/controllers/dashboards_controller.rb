class DashboardsController < ApplicationController

  def show
    @user = current_user
    @applies = Apply.where(user_id: @user.id)
    @entretiens = @applies.where(status: "Entretien")
    @candidatures = Apply.where(status: "A postuler")
#    @relances = Apply.where(updated_at: "2021-05-07 00:00:00")
  end
end
