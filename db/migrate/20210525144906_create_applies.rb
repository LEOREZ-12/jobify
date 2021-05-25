class CreateApplies < ActiveRecord::Migration[6.0]
  def change
    create_table :applies do |t|
      t.references :user, null: false, foreign_key: true
      t.references :offer, null: false, foreign_key: true
      t.date :application_date
      t.string :status
      t.string :salary_expectation

      t.timestamps
    end
  end
end
