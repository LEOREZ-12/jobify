class StepsController < ApplicationController
  def create
    @apply = Apply.find(params[:apply_id])
    @step = Step.new(steps_params)
    @step.apply = @apply
    @step.save
    if @step.save
      redirect_to apply_path(@apply, anchor: "anchor-step")
    else
      redirect_to apply_path(@apply)
    end
  end

  def update
    # @apply = Apply.find(params[:apply_id])
    # @step = Step.find(params[:id])
    # authorize @step
    # @step.update(steps_params)
    # redirect_to apply_path(@apply)
  end

  private

  def steps_params
    params.require(:step).permit(:name, :date)
  end
end
