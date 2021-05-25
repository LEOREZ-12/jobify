class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.string :name
      t.date :date
      t.boolean :completed
      t.integer :position
      t.references :apply, null: false, foreign_key: true

      t.timestamps
    end
  end
end
