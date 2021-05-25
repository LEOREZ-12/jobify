class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :job_title
      t.string :company_name
      t.string :company_street
      t.date :publish_date
      t.text :job_description
      t.integer :glassdoor_rate
      t.string :recruiter_name
      t.string :recruiter_email
      t.string :recruiter_phone_number
      t.string :company_city
      t.string :company_zipcode
      t.integer :salary

      t.timestamps
    end
  end
end
