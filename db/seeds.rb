# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

offer_test = Offer.create(job_title: 'Product Owner', company_name: 'Microsoft', company_street: '2, rue de la Boétie', publish_date: '21-02-12', job_description: 'bla bla', glassdoor_rate: '4.6', recruiter_name: 'Jean Richard', recruiter_phone_number: '06 07 08 09 10', recruiter_email: 'jean.richar@gmail.com', company_city: 'Paris', company_zipcode: '75008', salary: '55')

apply_test = Apply.create( user_id: '1', offer_id:'1', application_date:'21-03-12', status: 'Entretien n °2', salary_expectation: 55)