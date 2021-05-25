class ChangeCompletedToSteps < ActiveRecord::Migration[6.0]
  def change
    change_column :steps, :completed, :boolean, :default => false
  end
end
