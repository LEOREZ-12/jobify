require "open-uri"

puts "Cleaning database..."
Comment.destroy_all
Step.destroy_all
Apply.destroy_all
Offer.destroy_all
User.destroy_all

puts "Creating user..."

  nicolas = User.new({ email: "nicolas@gmail.com", password: "aaaaaa",
  first_name: "Nicolas", last_name: "Sarkozy", address: "84 Avenue de la République, Paris"
  })
  file = URI.open('https://res.cloudinary.com/bsm/image/upload/v1622041241/sarko.jpg')
  nicolas.photo_avatar.attach(io: file, filename: 'sarko.jpg', content_type: 'image/jpg')
  nicolas.save!

  puts "User finished!"

# OFFERS

puts "Creating offers..."
  blablacar = Offer.new({ job_title: "Product Owner Senior", company_name: "BlaBlaCar",
                company_street: "84 Avenue de la République", company_city: "Paris", company_zipcode: "75011", publish_date: "2021-04-05",
                job_description: "Intégré.à l’équipe Produit, ton rôle sera de manager le cycle de développement de fonctionnalités et d’être l’interlocuteur dédié autour du produit auprès de nos clients ainsi qu’auprès de nos équipes.",
                glassdoor_rate: 4, recruiter_name: "Paul LEFEVRE", recruiter_email: "paul.lefevre@blablacar.fr", recruiter_phone_number: "06 05 04 03 02",
                salary: 50, created_at: "2021-04-06", updated_at: "2021-04-07"
  })

  file = URI.open('https://res.cloudinary.com/bsm/image/upload/v1622035931/blablacar.svg')
  blablacar.company_logo.attach(io: file, filename: 'blablacar.svg', content_type: 'image/svg')
  blablacar.save!

  back_market = Offer.new({ job_title: "Product Owner", company_name: "Back Market",
                company_street: "152 Boulevard Macdonald", company_city: "Paris", company_zipcode: "75019", publish_date: "2021-04-13",
                job_description: "En tant que Product Owner, vous avez pour mission de développer les produits Back Market au sein d’une équipe agile, en lien avec le Chef de Produit.",
                glassdoor_rate: 4, recruiter_name: "Paul LEFEVRE", recruiter_email: "paul.lefevre@backmarket.fr", recruiter_phone_number: "06 05 04 03 02",
                salary: 50, created_at: "2021-04-13", updated_at: "2021-04-14"
  })

  file = URI.open('https://res.cloudinary.com/bsm/image/upload/v1622034899/back_market.png')
  back_market.company_logo.attach(io: file, filename: 'back_market.png', content_type: 'image/png')
  back_market.save!

  deezer = Offer.new({ job_title: "Product Owner Senior", company_name: "Deezer",
                company_street: "12 Rue d'Athènes", company_city: "Paris", company_zipcode: "75009", publish_date: "2021-04-09",
                job_description: "En tant que Product Owner, vous avez pour mission de développer les produits Deezer au sein d’une équipe agile, en lien avec le Chef de Produit.",
                glassdoor_rate: 4, recruiter_name: "Paul LEFEVRE", recruiter_email: "paul.lefevre@deezer.fr", recruiter_phone_number: "06 05 04 03 02",
                salary: 45, created_at: "2021-04-09", updated_at: "2021-04-12"
  })

  file = URI.open('https://res.cloudinary.com/bsm/image/upload/v1622034727/deezer.svg')
  deezer.company_logo.attach(io: file, filename: 'deezer.svg', content_type: 'image/svg')
  deezer.save!

  mano_mano = Offer.new({ job_title: "Product Manager", company_name: "ManoMano",
                company_street: "52 Rue Bayen", company_city: "Paris", company_zipcode: "75017", publish_date: "2021-04-09",
                job_description: "En tant que Product Manager, vous avez pour mission de développer les produits Mano Mano au sein d’une équipe agile, en lien avec le Chef de Produit.",
                glassdoor_rate: 5, recruiter_name: "Guillaume DEBAILLY", recruiter_email: "guillaume.debailly@manomano.fr", recruiter_phone_number: "06 05 04 03 02",
                salary: 48, created_at: "2021-04-09", updated_at: "2021-04-12"
  })

  file = URI.open('https://res.cloudinary.com/bsm/image/upload/v1622035024/mano_mano.png')
  mano_mano.company_logo.attach(io: file, filename: 'mano_mano.png', content_type: 'image/png')
  mano_mano.save!

  alan = Offer.new({ job_title: "Product Owner / PM", company_name: "Alan",
                company_street: "75 Rue de Tocqueville", company_city: "Paris", company_zipcode: "750017", publish_date: "2021-04-20",
                job_description: "Pour l’entité digitale NOV, nous recherchons un PO/PM pour gérer les projets digitaux.",
                glassdoor_rate: 4, recruiter_name: "Paul LEFEVRE", recruiter_email: "paul.lefevre@alan.fr", recruiter_phone_number: "06 05 04 03 02",
                salary: 52, created_at: "2021-04-20", updated_at: "2021-04-22"
  })

  file = URI.open('https://res.cloudinary.com/bsm/image/upload/v1622034662/alan.png')
  alan.company_logo.attach(io: file, filename: 'alan.png', content_type: 'image/png')
  alan.save!

  ab_tasty = Offer.new({ job_title: "Product Owner / PM", company_name: "AB Tasty",
                company_street: "19 Rue Michel-le-Comte", company_city: "Paris", company_zipcode: "75003", publish_date: "2021-04-21",
                job_description: "Pour l’entité digitale NOV, nous recherchons un PO/PM pour gérer les projets digitaux.",
                glassdoor_rate: 4, recruiter_name: "Paul LEFEVRE", recruiter_email: "paul.lefevre@abtasty.fr", recruiter_phone_number: "06 05 04 03 02",
                salary: 52, created_at: "2021-04-21", updated_at: "2021-04-21"
  })

  file = URI.open('https://res.cloudinary.com/bsm/image/upload/v1622035143/ab-tasty.png')
  ab_tasty.company_logo.attach(io: file, filename: 'ab-tasty.png', content_type: 'image/png')
  ab_tasty.save!

  qonto = Offer.new({ job_title: "Product Owner / PM", company_name: "Qonto",
                company_street: "20B Rue la Fayette", company_city: "Paris", company_zipcode: "75009", publish_date: "2021-04-21",
                job_description: "Pour l’entité digitale NOV, nous recherchons un PO/PM pour gérer les projets digitaux.",
                glassdoor_rate: 4, recruiter_name: "Paul LEFEVRE", recruiter_email: "paul.lefevre@qonto.fr", recruiter_phone_number: "06 05 04 03 02",
                salary: 52, created_at: "2021-04-21", updated_at: "2021-04-21"
  })

  file = URI.open('https://res.cloudinary.com/bsm/image/upload/v1622035212/qonto.jpg')
  qonto.company_logo.attach(io: file, filename: 'qonto.jpg', content_type: 'image/jpg')
  qonto.save!

puts "Offers finished!"


# APPLIES

apply_a = Apply.new({ user: nicolas, offer: blablacar, application_date: "2021-04-07", created_at: "2021-04-07", updated_at: "2021-04-07",
              status: "Candidature envoyée", salary_expectation: "52"
})
apply_a.save!

apply_b = Apply.new({ user: nicolas, offer: back_market, application_date: "2021-04-14", created_at: "2021-04-16", updated_at: "2021-04-16",
              status: "Echange téléphonique", salary_expectation: "53"
})
apply_b.save!

apply_c = Apply.new({ user: nicolas, offer: deezer, application_date: "2021-04-12", created_at: "2021-04-20", updated_at: "2021-04-20",
              status: "Entretien", salary_expectation: "49"
})
apply_c.save!

apply_d = Apply.new({ user: nicolas, offer: mano_mano, application_date: "2021-04-12", created_at: "2021-04-30", updated_at: "2021-04-31",
              status: "Proposition à recevoir", salary_expectation: "50"
})
apply_d.save!

apply_e = Apply.new({ user: nicolas, offer: alan, application_date: "2021-04-22", created_at: "2021-05-11", updated_at: "2021-05-11",
              status: "Entretien", salary_expectation: "55"
})
apply_e.save!

apply_f = Apply.new({ user: nicolas, offer: ab_tasty, application_date: "2021-04-21", created_at: "2021-05-03", updated_at: "2021-05-03",
              status: "Echange téléphonique", salary_expectation: "50"
})
apply_f.save!

apply_g = Apply.new({ user: nicolas, offer: qonto, application_date: "2021-04-22", created_at: "2021-05-07", updated_at: "2021-05-07",
              status: "A postuler", salary_expectation: ""
})
apply_g.save!

puts "Applies finished!"

# COMMENT


comment_a = Comment.new({ content: "Poste intéressant, équipe conviviale, à suivre...", apply: apply_a, created_at: "2021-04-08", updated_at: "2021-04-09"
  })
comment_a.save!

comment_b = Comment.new({ content: "J'ai croisé le CEO à la machine à café, il est cool", apply: apply_a, created_at: "2021-04-08", updated_at: "2021-04-09"
  })
comment_b.save!

puts "Comments finished!"


# STEPS

step_a = Step.new({ name: "A postuler", apply: apply_a, date: "2021-04-06"
  })
step_a.save!

step_b = Step.new({ name: "A postuler", apply: apply_c, date: "2021-04-09"
  })
step_b.save!

step_c = Step.new({ name: "Candidature envoyée", apply: apply_c, date: "2021-04-12"
  })
step_c.save!

step_d = Step.new({ name: "Echange téléphonique", apply: apply_c, date: "2021-04-13"
  })
step_d.save!

step_e = Step.new({ name: "Entretien", apply: apply_c, date: "2021-04-18"
  })
step_e.save!

puts "Steps finished!"