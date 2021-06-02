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
                company_street: "84 Avenue de la République", company_city: "Paris", company_zipcode: "75011", publish_date: "2021-05-05",
                job_description: "Tu travailleras au sein de l’équipe Product, en relation étroite avec Victoire, notre Head of Product. Ton rôle ? Identifier les besoins clients, et travailler avec ta squad à la mise en place de solutions qui répondent à ton objectif.

                🌟 Tu auras l’opportunité de travailler sur plusieurs produits :

                L’app mobile pour les clients qui leur permet de gérer leurs réservations
                Le produit client côté web, qui permet le suivi de leur réservation
                Les outils interne pour venir en support des ops afin de faciliter le suivi au quotidien",
                glassdoor_rate: 4, recruiter_name: "Paul LEFEVRE", recruiter_email: "paul.lefevre@blablacar.fr", recruiter_phone_number: "06 05 04 03 02",
                salary: 50, created_at: "2021-05-06", updated_at: "2021-05-07"
  })

  logo = URI.open('https://res.cloudinary.com/bsm/image/upload/v1622035931/blablacar.svg')
  banner = URI.open('https://res.cloudinary.com/bsm/image/upload/v1622621993/new-banner-bla_cdkrdl.jpg')
  blablacar.company_logo.attach(io: logo, filename: 'blablacar.svg', content_type: 'image/svg')
  blablacar.banner.attach(io: banner, filename: 'blablacar_banner.jpg', content_type: 'image/jpg')
  blablacar.save!

  back_market = Offer.new({ job_title: "Product Owner", company_name: "Back Market",
                company_street: "152 Boulevard Macdonald", company_city: "Paris", company_zipcode: "75019", publish_date: "2021-05-13",
                job_description: "En tant que Product Owner, vous avez pour mission de développer les produits Back Market au sein d’une équipe agile, en lien avec le Chef de Produit.",
                glassdoor_rate: 4, recruiter_name: "Paul LEFEVRE", recruiter_email: "paul.lefevre@backmarket.fr", recruiter_phone_number: "06 05 04 03 02",
                salary: 50, created_at: "2021-05-13", updated_at: "2021-05-14"
  })

  logo = URI.open('https://res.cloudinary.com/bsm/image/upload/v1622034899/back_market.png')
  banner = URI.open('https://res.cloudinary.com/dhtljpbp8/image/upload/v1622552980/back_market_banner_cqeyij.jpg')
  back_market.company_logo.attach(io: logo, filename: 'back_market.png', content_type: 'image/png')
  back_market.banner.attach(io: banner, filename: 'back_market_banner.jpeg', content_type: 'image/jpeg')
  back_market.save!

  deezer = Offer.new({ job_title: "Product Owner Senior", company_name: "Deezer",
                company_street: "12 Rue d'Athènes", company_city: "Paris", company_zipcode: "75009", publish_date: "2021-05-09",
                job_description: "En tant que Product Owner, vous avez pour mission de développer les produits Deezer au sein d’une équipe agile, en lien avec le Chef de Produit.",
                glassdoor_rate: 4, recruiter_name: "Paul LEFEVRE", recruiter_email: "paul.lefevre@deezer.fr", recruiter_phone_number: "06 05 04 03 02",
                salary: 55, created_at: "2021-05-09", updated_at: "2021-05-12"
  })

  logo = URI.open('https://res.cloudinary.com/bsm/image/upload/v1622034727/deezer.svg')
  banner = URI.open('https://res.cloudinary.com/dhtljpbp8/image/upload/v1622552971/deezer_banner_sje0p1.jpg')
  deezer.company_logo.attach(io: logo, filename: 'deezer.svg', content_type: 'image/svg')
  deezer.banner.attach(io: banner, filename: 'deezer_banner.jpeg', content_type: 'image/jpeg')
  deezer.save!

  mano_mano = Offer.new({ job_title: "Product Manager", company_name: "ManoMano",
                company_street: "52 Rue Bayen", company_city: "Paris", company_zipcode: "75017", publish_date: "2021-05-09",
                job_description: "En tant que Product Manager, vous avez pour mission de développer les produits Mano Mano au sein d’une équipe agile, en lien avec le Chef de Produit.",
                glassdoor_rate: 5, recruiter_name: "Guillaume DEBAILLY", recruiter_email: "guillaume.debailly@manomano.fr", recruiter_phone_number: "06 05 04 03 02",
                salary: 48, created_at: "2021-05-09", updated_at: "2021-05-12"
  })

  logo = URI.open('https://res.cloudinary.com/bsm/image/upload/v1622035024/mano_mano.png')
  banner = URI.open('https://res.cloudinary.com/dhtljpbp8/image/upload/v1622552827/manomano_banner_iviaar.jpg')
  mano_mano.company_logo.attach(io: logo, filename: 'mano_mano.png', content_type: 'image/png')
  mano_mano.banner.attach(io: banner, filename: 'manomano_banner.jpeg', content_type: 'image/jpeg')
  mano_mano.save!

  alan = Offer.new({ job_title: "Product Owner / PM", company_name: "Alan",
                company_street: "75 Rue de Tocqueville", company_city: "Paris", company_zipcode: "750017", publish_date: "2021-05-20",
                job_description: "Pour l’entité digitale NOV, nous recherchons un PO/PM pour gérer les projets digitaux.",
                glassdoor_rate: 4, recruiter_name: "Paul LEFEVRE", recruiter_email: "paul.lefevre@alan.fr", recruiter_phone_number: "06 05 04 03 02",
                salary: 52, created_at: "2021-05-20", updated_at: "2021-05-22"
  })

  logo = URI.open('https://res.cloudinary.com/bsm/image/upload/v1622034662/alan.png')
  banner = URI.open('https://res.cloudinary.com/dhtljpbp8/image/upload/v1622552809/alan2_jl3h7n.jpg')
  alan.company_logo.attach(io: logo, filename: 'alan.png', content_type: 'image/png')
  alan.banner.attach(io: banner, filename: 'alan_banner.jpeg', content_type: 'image/jpeg')
  alan.save!

  ab_tasty = Offer.new({ job_title: "Product Owner / PM", company_name: "AB Tasty",
                company_street: "19 Rue Michel-le-Comte", company_city: "Paris", company_zipcode: "75003", publish_date: "2021-05-21",
                job_description: "Pour l’entité digitale NOV, nous recherchons un PO/PM pour gérer les projets digitaux.",
                glassdoor_rate: 4, recruiter_name: "Paul LEFEVRE", recruiter_email: "paul.lefevre@abtasty.fr", recruiter_phone_number: "06 05 04 03 02",
                salary: 52, created_at: "2021-05-21", updated_at: "2021-05-21"
  })

  logo = URI.open('https://res.cloudinary.com/bsm/image/upload/v1622035143/ab-tasty.png')
  banner = URI.open('https://res.cloudinary.com/dhtljpbp8/image/upload/v1622555158/abtasty2_dgcola.jpg')
  ab_tasty.company_logo.attach(io: logo, filename: 'ab-tasty.png', content_type: 'image/png')
  ab_tasty.banner.attach(io: banner, filename: 'abtasty_banner.jpeg', content_type: 'image/jpeg')
  ab_tasty.save!

  qonto = Offer.new({ job_title: "Product Owner", company_name: "Qonto",
                company_street: "20B Rue la Fayette", company_city: "Paris", company_zipcode: "75009", publish_date: "2021-05-21",
                job_description: "Pour l’entité digitale NOV, nous recherchons un PO/PM pour gérer les projets digitaux.",
                glassdoor_rate: 4, recruiter_name: "Paul LEFEVRE", recruiter_email: "paul.lefevre@qonto.fr", recruiter_phone_number: "06 05 04 03 02",
                salary: 45, created_at: "2021-05-21", updated_at: "2021-05-21"
  })

  logo = URI.open('https://res.cloudinary.com/bsm/image/upload/v1622552181/qonto2.png')
  banner = URI.open('https://res.cloudinary.com/dhtljpbp8/image/upload/v1622555172/qonto2_ato8dd.jpg')
  qonto.company_logo.attach(io: logo, filename: 'qonto.png', content_type: 'image/png')
  qonto.banner.attach(io: banner, filename: 'qonto_banner.jpeg', content_type: 'image/jpeg')
  qonto.save!

  deezer_b = Offer.new({ job_title: "Product Manager Senior", company_name: "Deezer",
                company_street: "12 Rue d'Athènes", company_city: "Paris", company_zipcode: "75009", publish_date: "2021-05-28",
                job_description: "En tant que Product Owner, vous avez pour mission de développer les produits Deezer au sein d’une équipe agile, en lien avec le Chef de Produit.",
                glassdoor_rate: 4, recruiter_name: "Paul LEFEVRE", recruiter_email: "paul.lefevre@deezer.fr", recruiter_phone_number: "06 05 04 03 02",
                salary: 51, created_at: "2021-05-28", updated_at: "2021-05-28"
  })

  logo = URI.open('https://res.cloudinary.com/bsm/image/upload/v1622034727/deezer.svg')
  banner = URI.open('https://res.cloudinary.com/dhtljpbp8/image/upload/v1622552971/deezer_banner_sje0p1.jpg')
  deezer_b.company_logo.attach(io: logo, filename: 'deezer.svg', content_type: 'image/svg')
  deezer_b.banner.attach(io: banner, filename: 'deezer_banner.jpeg', content_type: 'image/jpeg')
  deezer_b.save!

puts "Offers finished!"


# APPLIES

apply_a = Apply.new({ user: nicolas, offer: blablacar, application_date: "2021-05-07", created_at: "2021-05-07", updated_at: "2021-05-07",
              status: "Candidature envoyée", salary_expectation: "52"
})
apply_a.save!

apply_b = Apply.new({ user: nicolas, offer: back_market, application_date: "2021-05-14", created_at: "2021-05-16", updated_at: "2021-05-16",
              status: "Echange téléphonique", salary_expectation: "53"
})
apply_b.save!

apply_c = Apply.new({ user: nicolas, offer: deezer, application_date: "2021-05-12", created_at: "2021-05-20", updated_at: "2021-05-20",
              status: "Refus du candidat", salary_expectation: "49"
})
apply_c.save!

apply_d = Apply.new({ user: nicolas, offer: mano_mano, application_date: "2021-05-12", created_at: "2021-05-30", updated_at: "2021-05-31",
              status: "Proposition à recevoir", salary_expectation: "50"
})
apply_d.save!

apply_e = Apply.new({ user: nicolas, offer: alan, application_date: "2021-05-22", created_at: "2021-05-11", updated_at: "2021-05-11",
              status: "Entretien", salary_expectation: "55"
})
apply_e.save!

apply_f = Apply.new({ user: nicolas, offer: ab_tasty, application_date: "2021-05-21", created_at: "2021-05-03", updated_at: "2021-05-03",
              status: "Echange téléphonique", salary_expectation: "50"
})
apply_f.save!

apply_g = Apply.new({ user: nicolas, offer: qonto, application_date: "2021-05-22", created_at: "2021-05-07", updated_at: "2021-05-07",
              status: "A postuler", salary_expectation: ""
})
apply_g.save!

apply_h = Apply.new({ user: nicolas, offer: deezer_b, application_date: "2021-05-31", created_at: "2021-05-31", updated_at: "2021-05-31",
              status: "A postuler", salary_expectation: ""
})
apply_h.save!

apply_i = Apply.new({ user: nicolas, offer: qonto, application_date: "2021-05-03", created_at: "2021-05-03", updated_at: "2021-05-03",
              status: "Proposition à recevoir", salary_expectation: ""
})
apply_i.save!

puts "Applies finished!"

# COMMENT


comment_a = Comment.new({ content: "Poste intéressant, se renseigner sur Victoire à qui je serai rattaché et les locaux sont canons !!!", apply: apply_a, created_at: "2021-05-10", updated_at: "2021-05-10"
  })
comment_a.save!

comment_b = Comment.new({ content: "Echange avec le recruteur, process de recrutement en 3 entretiens: RH, Manager, C-levels", apply: apply_a, created_at: "2021-05-12", updated_at: "2021-05-12"
  })
comment_b.save!

comment_c = Comment.new({ content: "Echange avec le recruteur, process de recrutement en 3 entretiens: RH, Manager, C-levels", apply: apply_c, created_at: "2021-05-12", updated_at: "2021-05-12"
  })
comment_c.save!

comment_a = Comment.new({ content: "Poste intéressant, se renseigner sur Victoire à qui je serai rattaché et les locaux sont canons !!!", apply: apply_c, created_at: "2021-05-10", updated_at: "2021-05-10"
  })
comment_a.save!

puts "Comments finished!"


# STEPS
#apply_a
step_a = Step.new({ name: "A postuler", apply: apply_a, date: "2021-05-06"
  })
step_a.save!

step_b = Step.new({ name: "Candidature envoyée", apply: apply_a, date: "2021-05-07"
  })
step_b.save!


#apply_b
step_d = Step.new({ name: "A postuler", apply: apply_b, date: "2021-05-09"
  })
step_d.save!

step_e = Step.new({ name: "Candidature envoyée", apply: apply_b, date: "2021-05-12"
  })
step_e.save!

step_f = Step.new({ name: "Echange téléphonique", apply: apply_b, date: "2021-05-14"
  })
step_f.save!

step_g = Step.new({ name: "Entretien", apply: apply_b, date: "2021-05-19"
  })
step_g.save!

#apply_c
step_h = Step.new({ name: "A postuler", apply: apply_c, date: "2021-05-16"
  })
step_h.save!

step_i = Step.new({ name: "Candidature envoyée", apply: apply_c, date: "2021-05-17"
  })
step_i.save!

step_j = Step.new({ name: "Refus du recruteur", apply: apply_c, date: "2021-05-21"
  })
step_j.save!

#apply_d
step_k = Step.new({ name: "A postuler", apply: apply_d, date: "2021-05-16"
  })
step_k.save!

#apply_e
step_l = Step.new({ name: "A postuler", apply: apply_e, date: "2021-05-18"
  })
step_l.save!

#apply_f
step_m = Step.new({ name: "A postuler", apply: apply_f, date: "2021-05-19"
  })
step_m.save!

step_n = Step.new({ name: "Candidature envoyée", apply: apply_f, date: "2021-05-20"
  })
step_n.save!

step_o = Step.new({ name: "Entretien", apply: apply_f, date: "2021-06-01"
  })
step_o.save!

step_p = Step.new({ name: "Proposition à recevoir", apply: apply_f, date: "2021-06-04"
  })
step_p.save!

#apply_g
step_q = Step.new({ name: "A postuler", apply: apply_g, date: "2021-05-18"
  })
step_q.save!

step_r = Step.new({ name: "Candidature envoyée", apply: apply_g, date: "2021-05-20"
  })
step_r.save!

step_s = Step.new({ name: "Entretien", apply: apply_g, date: "2021-05-31"
  })
step_s.save!

#apply_h
step_t = Step.new({ name: "A postuler", apply: apply_h, date: "2021-05-18"
  })
step_t.save!

step_u = Step.new({ name: "Candidature envoyée", apply: apply_h, date: "2021-05-20"
  })
step_u.save!

step_v = Step.new({ name: "Entretien", apply: apply_h, date: "2021-05-26"
  })
step_v.save!

#apply_i
step_w = Step.new({ name: "A postuler", apply: apply_i, date: "2021-05-22"
  })
step_w.save!

step_x = Step.new({ name: "Candidature envoyée", apply: apply_i, date: "2021-05-24"
  })
step_x.save!

step_y = Step.new({ name: "Entretien", apply: apply_i, date: "2021-05-28"
  })
step_y.save!

# AJOUT D'ETAPES EN MASSE

# [apply_b, apply_d, apply_e, apply_f, apply_g].each do |apply|
#   Step.create({ name: "A postuler", apply: apply, date: "2021-05-07" })
# end

# [apply_b, apply_d, apply_e, apply_f, apply_g].each do |apply|
#   Step.create({ name: "Candidature envoyée", apply: apply, date: "2021-05-09" })
# end

# [apply_b, apply_d, apply_f].each do |apply|
#   Step.create({ name: "Echange téléphonique", apply: apply, date: "2021-05-16" })
# end

puts "Steps finished!"
puts "CONGRATULATIONS: SEEDS COMPLETED !!!"
