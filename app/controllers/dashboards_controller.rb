class DashboardsController < ApplicationController

  def show
    @user = current_user
    @applies = Apply.where(status: "A postuler")
    @candidatures = Apply.where(user_id: @user.id)
    @entretiens = Apply.where(user_id: @user.id && "status" == "Entretien")
  end
end
