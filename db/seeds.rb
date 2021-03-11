require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
puts "Creating seeds..."

#Categories
category_camera = Category.create!(title: "Camera")
category_camera.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615371916/camera_qm1iim.png'),
                            filename: 'camera.jpg',
                            content_type: 'image/jpg'
                            )
category_laptop = Category.create!(title: "Laptop")
category_laptop.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615371871/laptop_e5qwy4.png'),
                            filename: 'laptop.jpg',
                            content_type: 'image/jpg'
                            )
category_desktop = Category.create!(title: "Desktop computer")
category_desktop.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615371935/computer_vvbebw.png'),
                            filename: 'desktop.jpg',
                            content_type: 'image/jpg'
                            )
category_tablet = Category.create!(title: "Tablet")
category_tablet.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615371880/ipad_plk9j1.png'),
                            filename: 'tablet.jpg',
                            content_type: 'image/jpg'
                            )
category_mobile = Category.create!(title: "Mobile phone")
category_mobile.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615371927/android_r4nqea.png'),
                            filename: 'mobile.jpg',
                            content_type: 'image/jpg'
                            )
category_printer = Category.create!(title: "Printer")
category_printer.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615371889/printer-door-open_nl1f8t.png'),
                            filename: 'printer.jpg',
                            content_type: 'image/jpg'
                            )
category_monitor = Category.create!(title: "Monitor")
category_monitor.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615371899/monitor--v1_npfioo.png'),
                            filename: 'monitor.jpg',
                            content_type: 'image/jpg'
                            )


# Charities
charity1 = Charity.create!(name: "Refugee Council",
                          website: "https://www.refugeecouncil.org.uk/",
                          whatsapp_number: "+4435671229",
                          description: "We work directly with thousands of refugees each year. We support them from the moment they arrive in the UK. We provide crisis advice and practical support, help them to integrate into their new communities and offer mental health counselling to help them come to terms with the trauma so many of them have experienced."
                          )
charity1.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615472562/hands-2888625_1280_re72jj.jpg'),
                          filename: "charity1.jpg",
                          content_type: "image/jpg"
                          )

charity2 = Charity.create!(name: "Caras",
                          website: "https://caras.org.uk/",
                          whatsapp_number: "+4430712929",
                          description: "Our mission is to work together with young people, families and adults of refugee background to provide practical, educational and social help. We create supportive relationships, networks and well-informed services that enable people to access what they need in order to increase their wellbeing and safety."
                          )
charity2.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615478789/3xJQE8Un_pecyzl.jpg'),
                          filename: "charity2.jpg",
                          content_type: "image/jpg"
                          )

charity3 = Charity.create!(name: "Breaking Barriers",
                          website: "https://breaking-barriers.co.uk",
                          whatsapp_number: "+44307129760",
                          description: "We believe that every refugee in London can fulfill their potential and integrate into their new home through employment that matches their skills, experience, and aspirations. Breaking Barriers offers training and support for refugees in London to help them secure stable and fulfilling employment."
                          )
charity3.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615478864/Ashurt_30-1-1600x1067_sn6xgo.jpg'),
                          filename: "charity3.jpg",
                          content_type: "image/jpg"
                          )

charity4 = Charity.create!(name: "Women for Refugee Women",
                          website: "https://www.refugeewomen.co.uk/",
                          whatsapp_number: "+4465712955",
                          description: "We empower refugee and asylum-seeking women to speak out, become leaders and advocate for change. Through English lessons, drama and other activities we support women to build their confidence and skills. We believe that all women have the right to safety, dignity and liberty."
                          )
charity4.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615478466/slack-imgs.com_fzyvlf.jpg'),
                          filename: "charity4.jpg",
                          content_type: "image/jpg"
                          )

charity5 = Charity.create!(name: "Young Roots",
                          website: "https://youngroots.org.uk/",
                          whatsapp_number: "+446572115",
                          description: "Our mission is to improve the well-being and life chances of young refugees and asylum seekers in the UK and overseas. Our vision is of a world in which all young refugees and asylum seekers can realise their rights and fulfil their potential.
                          Our ambition is to be respected and known for our innovative and participatory approach to young refugees and asylum seekers self-advocacy and learning."
                          )
charity5.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615472667/boys-1283786_1280_cy1wei.jpg'),
                          filename: "charity5.jpg",
                          content_type: "image/jpg"
                          )

charity6 = Charity.create!(name: "Refugee Youth",
                          website: "https://www.refugeeyouth.org/",
                          whatsapp_number: "+4478210505",
                          description: "RefugeeYouth is a small charity dedicated to supporting young people from refugee and migrant backgrounds to increase resilience, self-esteem and improve emotional well-being. We work towards increasing confidence through improved communication and leadership skills and reduce feelings of isolation through building a sense of community and improved social connections."
                          )
charity6.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615479303/RY-June-14-slider-1024x513-1_fwimc5.jpg'),
                          filename: "charity6.jpg",
                          content_type: "image/jpg"
                          )

charity7 = Charity.create!(name: "Safe Passage",
                          website: "https://www.safepassage.org.uk/",
                          whatsapp_number: "+4478111000",
                          description: "Every year thousands of child refugees arrive in Europe, almost half of them are unaccompanied and as a result are at risk of being abused and trafficked. Yet many of these children have a legal right to travel safely to a place of sanctuary. With our support they can access their rights."
                          )
charity7.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615479485/Copy_of_RS1020_L1030198_n9t1kq.jpg'),
                          filename: "charity7.jpg",
                          content_type: "image/jpg"
                          )

charity8 = Charity.create!(name: "Help Refugees",
                          website: "https://helprefugees.org/",
                          whatsapp_number: "+44703211246",
                          description: "Help Refugees is not simply another aid organisation. We are a group of everyday people, taking action to improve the lives of refugees. We are pioneering a new movement in charity that provides emergency aid and long term solutions where they are most needed."
                          )
charity8.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615479675/children-by-the-wall-on-background-scaled_gg37mr.jpg'),
                          filename: "charity8.jpg",
                          content_type: "image/jpg"
                          )                          
charity9 = Charity.create!(name: "The Bike Project",
                          website: "https://thebikeproject.co.uk/",
                          whatsapp_number: "+4471222206",
                          description: "We take donated bikes, refurbish them, and give them to refugees. We also sell a portion of these bikes. Buy second hand vintage, hybrid, road and mountain bikes and help get refugees cycling!"
                          )
charity9.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615479890/refugee-inflating-tyre-bw-crop_jheeqt.jpg'),
                          filename: "charity9.jpg",
                          content_type: "image/jpg"
                          )

#Users
user_donator = User.create!(email: "donator@mail.com",
password: "123456" ,
first_name: "Nigel",
last_name: "Lee",
kind: "Donator", phone_number: "+441234120", contact_preference: "Either")

user_seeker_1 = User.new(email: "seeker1@mail.com",
                        password: "123456",
                        first_name: "Amal",
                        last_name: "Shaw",
                        charity_id: charity1.id,
                        kind: "Seeker",
                        description: "Before she was forced to flee civil war in Syria, Amal was studying to be lawyer. She needs to pass an advanced English exam to get into university, and hopes she can continue her education here in Britain and someday be a successful lawyer.",
                        phone_number: "+443339200")
user_seeker_1.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1614945795/photo-1583431978096-e09dc7b7fcf4_ojjhlr.jpg'),
                          filename: "user_seeker_1.jpg",
                          content_type: "image/jpg")
user_seeker_1.save!

user_seeker_2 = User.new(email: "seeker2@mail.com",
                        password: "123456" ,first_name: "Saloo",
                        last_name: "Mir",
                        charity_id: charity2.id,
                        kind: "Seeker",
                        description: "Saloo is from Bhutan and was studying in university before he had to seek asylum in Britain. Saloo would like to work with his local council to support other young refugees.",
                        phone_number: "+44333920")
user_seeker_2.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1614945726/download_irxjsm.jpg'),
                          filename: "user_seeker_2.jpg",
                          content_type: "image/jpg"
                          )
user_seeker_2.save!

user_seeker_3 = User.new(email: "seeker3@mail.com",
                        password: "123456"  ,first_name: "Bob",
                        last_name: "Ameer",
                        charity_id: charity3.id,
                        kind: "Seeker",
                        description: "Bob was studying in his final year of university in Venezuela, before his family had to flee to Britain. He is a self taught programmer and aspires to be a successful software engineer.",
                        phone_number: "+44333920")
user_seeker_3.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1614945729/photo-1562925217-61a965391d53_x7pnfh.jpg'),
                          filename: "user_seeker_3.jpg",
                          content_type: "image/jpg"
                          )
user_seeker_3.save!

user_seeker_4 = User.new(email: "seeker4@mail.com",
                        password: "123456"  ,first_name: "Abebe",
                        last_name: "Lea",
                        charity_id: charity2.id,
                        kind: "Seeker",
                        description: "Originally from Ethiopia, Abebe fled Kenya with his wife and new born, leaving everything behind. He was an engineer and worked for the local government but had to leave everything behind. Abebe would like to once again stand up on his feet, support his family and start a new life here in Britain.",
                        phone_number: "+4439922010")
user_seeker_4.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615203342/photo-1529688530647-93a6e1916f5f_wxxbbf.jpg'),
                          filename: "user_s2.jpg",
                          content_type: "image/jpg"
                          )
user_seeker_4.save!

user_seeker_5 = User.new(email: "seeker5@mail.com",
                        password: "123456"  ,first_name: "Noor",
                        last_name: "Ehsan",
                        charity_id: charity4.id,
                        kind: "Seeker",
                        description: "Noor was forced to leave her husband in Syria and seek asylum in Britain for the sake of her young daughter's safety. All alone here in Britain, Noor would like to start her own catering business inorder to be independent and secure her and her daughter's future.",
                        phone_number: "+443992200")
user_seeker_5.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615204589/download_j5oj6t.jpg'),
                          filename: "user_seeker_5.jpg",
                          content_type: "image/jpg"
                          )
user_seeker_5.save!

user_seeker_6 = User.new(email: "seeker6@mail.com",
                        password: "123456"  ,first_name: "Zaida",
                        last_name: "Zen",
                        charity_id: charity4.id,
                        kind: "Seeker",
                        description: "Zaida, a young mother was studying psychology at university and was forced to leave war torn Iran with her baby. She wants to  continue her studies and finish her degree in psychology. Zaida aspires to be a councellor so that she can support other refugees and young mothers.",
                        phone_number: "+443911231")
user_seeker_6.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615204589/download_1_x2zik8.jpg'),
                          filename: "user_seeker_6.jpg",
                          content_type: "image/jpg"
                          )
user_seeker_6.save!

user_seeker_7 = User.new(email: "seeker7@mail.com",
                        password: "123456"  ,first_name: "Sulaiman",
                        last_name: "Sair",
                        charity_id: charity5.id,
                        kind: "Seeker",
                        description: "Sulaiman worked as a photographer for the local newspaper in Syria. He had to fee with his mother and endured a five-hour sea crossing to Europe on a dangerous overcrowded boat. He arrived with nothing but aspirations to start a new life. ",
                        phone_number: "+444211540")
user_seeker_7.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615212959/download_2_xknqu1.jpg'),
                          filename: "user_seeker_7.jpg",
                          content_type: "image/jpg"
                          )
user_seeker_7.save!

user_seeker_8 = User.new(email: "seeker8@mail.com",
                        password: "123456"  ,first_name: "Wafaa",
                        last_name: "Jog",
                        charity_id: charity1.id,
                        kind: "Seeker",
                        description: "Wafaa was in her final year of university studying International Finance, before she was forced to flee the civil war in Libya and seek asylum in Britain. She wants continue her studies so that she can be independent and secure a bright future.",
                        phone_number: "+44428840")
user_seeker_8.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615281110/download_1_scwk3c.jpg'),
                          filename: "user_seeker_8.jpg",
                          content_type: "image/jpg"
                          )
user_seeker_8.save!

user_seeker_9 = User.new(email: "seeker9@mail.com",
                        password: "123456"  ,first_name: "Fartun",
                        last_name: "Jeen",
                        charity_id: charity2.id,
                        kind: "Seeker",
                        description: "Fartun came to U.K. from Somalia in 2017. She now speaks incredible english and wants to do a course in Health and Social Care so that she can start working as a carer and be independent.",
                        phone_number: "+4476232100")
user_seeker_9.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615473875/photo-1581941894991-b7f75a66b7bf_dseyib.jpg'),
                          filename: "user_seeker_9.jpg",
                          content_type: "image/jpg"
                          )
user_seeker_9.save!

user_seeker_10 = User.new(email: "seeker10@mail.com",
                        password: "123456"  ,first_name: "Ahmad",
                        last_name: "Nori",
                        charity_id: charity2.id,
                        kind: "Seeker",
                        description: "Ahmad, a young entrepreneur from Saudi Arabia came to the UK 3 years back. He wants to restart his career and dreams of starting his own business here.",
                        phone_number: "+4472009110")
user_seeker_10.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615472346/photo-1608111064768-8c78b7656f32_jhx1cm.jpg'),
                          filename: "user_seeker_10.jpg",
                          content_type: "image/jpg"
                          )
user_seeker_10.save!

user_seeker_11 = User.new(email: "seeker11@mail.com",
                        password: "123456"  ,first_name: "Myriam",
                        last_name: "Salam",
                        charity_id: charity2.id,
                        kind: "Seeker",
                        description: "Originally from Eritrea, Myriam lived in Saudi America where she worked as an event organiser.She is a would like to learn basic computer skills so that she can start working here in the UK",
                        phone_number: "+4476211309")
user_seeker_11.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615473843/photo-1602184572201-89c7deeddf3c_atlana.jpg'),
                          filename: "user_seeker_11.jpg",
                          content_type: "image/jpg"
                          )
user_seeker_11.save!

user_seeker_12 = User.new(email: "seeker12@mail.com",
                        password: "123456"  ,first_name: "Samir",
                        last_name: "Ahmed",
                        charity_id: charity2.id,
                        kind: "Seeker",
                        description: "Samir has a degree in accountancy and worked as an accountant in Sudan. He needs a laptop to do another course and  find a job as an accountant.",
                        phone_number: "+44753421309")
user_seeker_12.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615472447/photo-1538384690625-e2e7bcf9e402_l8pzku.jpg'),
                          filename: "user_seeker_12.jpg",
                          content_type: "image/jpg"
                          )
user_seeker_12.save!

user_seeker_13 = User.new(email: "seeker13@mail.com",
                        password: "123456"  ,first_name: "Mohammed",
                        last_name: "Dara",
                        charity_id: charity2.id,
                        kind: "Seeker",
                        description: "Mohammed is a former newspaper editor from Syria. He needs to learn English so that he can start working, be financially independent and support his family of 5.",
                        phone_number: "+445111098")
user_seeker_13.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615473299/photo-1553267751-1c148a7280a1_u1m3s7.jpg'),
                        filename: "user_seeker_13.jpg",
                        content_type: "image/jpg"
      )
user_seeker_13.save!

user_seeker_14 = User.new(email: "seeker14@mail.com",
                        password: "123456"  ,first_name: "Mohammad",
                        last_name: "Aljan",
                        charity_id: charity2.id,
                        kind: "Seeker",
                        description: "Mohammad once owned an interior design business in Syria until war broke in 2011. He specialises in home design, mostly decorating children's bedrooms. Mohammad needs to learn English and to dreams of being financially independent again.",
                        phone_number: "+4475342149")
user_seeker_14.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615472332/photo-1510396420478-66e0bfbcd698_j3p5wb.jpg'),
                          filename: "user_seeker_14.jpg",
                          content_type: "image/jpg"
                          )
user_seeker_14.save!

user_seeker_15 = User.new(email: "seeker15@mail.com",
                        password: "123456"  ,first_name: "Abdul",
                        last_name: "Kaal",
                        charity_id: charity2.id,
                        kind: "Seeker",
                        description: "Abdul came to the UK from Iraq where he worked as a tailor. He did physically strenous labor jobs here until his health did not support him. He wants to learn English and do a course in garment design to be independent again.",
                        phone_number: "+44709311232")
user_seeker_15.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615472332/photo-1510396420478-66e0bfbcd698_j3p5wb.jpg'),
                          filename: "user_seeker_15.jpg",
                          content_type: "image/jpg"
                          )
user_seeker_15.save!

user_seeker_16 = User.new(email: "seeker16@mail.com",
    password: "123456"  ,first_name: "Saba",
    last_name: "Ishaq",
    charity_id: charity2.id,
    kind: "Seeker",
    description: "Saba Ishaq, a young mother from Iraq cane to the UK for the safety of her son. She now speaks basic english and has always dreamt to work in the healthcare sector so she can help people. Saba would like to do a course on healthcare and nursing.",
    phone_number: "+44709311232")
user_seeker_16.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615474441/photo-1495566273813-b897730c1d3d_oub6u9.jpg'),
      filename: "user_seeker_16.jpg",
      content_type: "image/jpg"
      )
user_seeker_16.save!

user_seeker_17 = User.new(email: "seeker17@mail.com",
    password: "123456"  ,first_name: "Dema",
    last_name: "Anni",
    charity_id: charity2.id,
    kind: "Seeker",
    description: "Dema taught physics at a secondry school in Uganda and had great ambitions to continue his career in education. Unfortunately he was forced to leave his home country and became homeless here in the U.K. He wants to continue his career.",
    phone_number: "+44709311232")
user_seeker_17.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615472423/photo-1543646491-f492b6cdfbfd_mbokmg.jpg'),
      filename: "user_seeker_17.jpg",
      content_type: "image/jpg"
      )
user_seeker_17.save!

user_seeker_18 = User.new(email: "seeker18@mail.com",
    password: "123456"  ,first_name: "Amin",
    last_name: "Yari",
    charity_id: charity2.id,
    kind: "Seeker",
    description: "Amin had to leave his family behind in Uganda. He wants to continue his studies here in Britain and aspires to be a successful businessman someday. ",
    phone_number: "+4470938112")
user_seeker_18.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615473163/photo-1518779158850-b302524a03d2_wofizd.jpg'),
      filename: "user_seeker_18.jpg",
      content_type: "image/jpg"
      )
user_seeker_18.save!

user_seeker_19 = User.new(email: "seeker19@mail.com",
    password: "123456"  ,first_name: "Parisa",
    last_name: "Shak",
    charity_id: charity2.id,
    kind: "Seeker",
    description: "Parisa is from Iran and is fluent in English, Persian and Arabic. She would like to teach Persian and Arabic and someday aspires to be a successful teacher and a public service interpreter. ",
    phone_number: "+445111098")
user_seeker_19.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615472964/photo-1571755456748-8d03ec53cca3_audg9z.jpg'),
      filename: "user_seeker_19.jpg",
      content_type: "image/jpg"
      )
user_seeker_19.save!

user_seeker_20 = User.new(email: "seeker20@mail.com",
    password: "123456"  ,first_name: "Biqueel",
    last_name: "Rooj",
    charity_id: charity7.id,
    kind: "Seeker",
    description: "Biqueel had to drop out of school and flee to UK from The Democratic Republic of the Congo. He is here with his mother and wishes start school again, he aspires to one day be a scientist.",
    phone_number: "+445111098")
user_seeker_20.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615477220/photo-1546525848-3ce03ca516f6_qz78nl.jpg'),
      filename: "user_seeker_20.jpg",
      content_type: "image/jpg"
      )
user_seeker_20.save!


user_worker = User.create!(email: "worker@mail.com",
                          password: "123456",
                          first_name: "Sarah",
                          last_name: "Parker",
                          charity_id: charity2.id,
                          kind: "Charity worker",
                          phone_number: "+443428099"
                          )

                      
#Products
product_dell_laptop = Product.new(user_id: user_donator.id,
                      title: "Dell Laptop",
                      description: " Dell Latitude E7470 . This laptop is 14inches,  6th Gen with i5 processor. It has pre-installed Windows 10 operating system and 8GB RAM.",
                      status: "Pending",
                      condition: "Used (fair)",
                      category_id: category_laptop.id,
                      address: "Forset Court, Edgware Road, Hyde Park W2"
                      )
product_dell_laptop.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1614948826/download_1_ii7zqj.jpg'),
                                filename: 'delllaptop.jpg',
                                content_type: 'image/jpg'
                                )
product_dell_laptop.save!

product_macbook = Product.new(user_id: user_donator.id,
                      title: "Apple Laptop",
                      description: " 13-inch MacBook Pro with Retina display . This Apple laptop is in excellent condition because I’ve been using 3 different laptops at the same time and I travel frequently(I don’t use laptop when I travel)",
                      status: "Pending",
                      condition: "Used (like new)",category_id: category_laptop.id,
                      address: "Stockwell Road, London SW9"
                      )
product_macbook.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1614954171/download_5_vrmc6q.jpg'),
                            filename: 'macbook.jpg',
                            content_type: 'image/jpg'
                            )
product_macbook.save!

product_mobile = Product.new(user_id: user_donator.id,
                      title: "Samsung Mobile",
                      description: "Samsung Galaxy S9 Plus 64GB. This smartphone is sim-free and can be used on any network. The item is in pristine condition as I recieved it as a gift. Comes with the charger and usb cable. ",
                      status: "Complete",
                      condition: "New",category_id: category_mobile.id,
                      address: "King & Queen Wharf, Rotherhithe Street, London SE16"
                      )
product_mobile.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1614948906/download_2_zip61w.jpg'),
                            filename: 'samsungmobile.jpg',
                            content_type: 'image/jpg'
                            )
product_mobile.save!

product_ipad = Product.new(user_id: user_donator.id,
                      title: "Apple iPad",
                      description: "Apple ipad Air Space Gray ,iOS operating system WIFi , bluetooth and has a battery standby time of upto 710hr.",
                      status: "Pending",
                      condition: "Used (fair)",
                      category_id: category_tablet.id,
                      address: "Randolph Avenue, Maida Vale, London W9"
                      )
product_ipad.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1614948826/download_3_aabucz.jpg'),
                          filename: 'ipad.jpg',
                          content_type: 'image/jpg'
                          )
product_ipad.save!

product_desktop = Product.create!(user_id: user_donator.id, 
                          title: "Desktop", 
                          description: "HP Pavilion 24-xa Core i3 Windows 10 Desktop. The desktop is in pristine condition, brought for my son but was used only for a few months.", 
                          status: "Pending", 
                          condition: "Used (good)",
                          category_id: category_desktop.id, 
                          address: "Charteris Road, London NW6"
                          )
product_desktop.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1614948906/download_2_zip61w.jpg'),
                            filename: 'desktop.jpg',
                            content_type: 'image/jpg'
                            )
product_desktop.save!

product_printer = Product.create!(user_id: user_donator.id, 
                          title: "HP Printer", 
                          description: "This HP printer is in great condition, used for 6 months only.", 
                          status: "Pending", 
                          condition: "Used (good)",
                          category_id: category_printer.id,
                          address: "Alma Road, St.Albans AL1"
                          )
product_printer.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615281110/download_mpbrki.jpg'),
                            filename: 'printer.jpg',
                            content_type: 'image/jpg'
                            )
product_printer.save!


product_monitor = Product.create!(user_id: user_donator.id, 
                          title: "Monitor 15inches", 
                          description: "15 inch Touch Screen LCD Monitor Display 1024x768 Resolution. It is 2 years old but used with care, minor scratches but in good usable condition.", 
                          status: "Pending", 
                          condition: "Used (good)",
                          category_id: category_monitor.id, 
                          address: "Winchester House, Merchant Street, Bow, Mile End, London E3"
                          )
product_monitor.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615281109/download_2_eqw6pt.jpg'),
                            filename: 'monitor.jpg',
                            content_type: 'image/jpg'
                            )
product_monitor.save!

#Requests
Request.create!(user_id: user_seeker_1.id, category_id: category_laptop.id, description: "Amal needs a laptop to complete her university degree.")
Request.create!(user_id: user_seeker_2.id, category_id: category_laptop.id, description: "Saloo needs a laptop to study Social Work.", status: "Completed")
Request.create!(user_id: user_seeker_5.id, category_id: category_mobile.id, description: "Noor needs a mobile phone to start her own catering business.", status: "Completed")
Request.create!(user_id: user_seeker_7.id, category_id: category_camera.id, description: "Sulaiman needs a camera to continue his job as a photographer")
Request.create!(user_id: user_seeker_3.id, category_id: category_desktop.id, description: "Bob needs a desktop and monitor to continue his journey to be a software engineer.")
Request.create!(user_id: user_seeker_3.id, category_id: category_monitor.id, description: "Bob needs a monitor to continue his journey to be a software engineer.")
Request.create!(user_id: user_seeker_4.id, category_id: category_desktop.id, description: "Abebe needs a desktop so that he can continue his career as an engineer.")
Request.create!(user_id: user_seeker_8.id, category_id: category_laptop.id, description: "Wafaa needs a laptop to finish her final year of university and find a job.")
Request.create!(user_id: user_seeker_6.id, category_id: category_laptop.id, description: "Zaida needs a laptop to study and complete her final year of university.")
Request.create!(user_id: user_seeker_18.id, category_id: category_laptop.id, description: "Amin needs a laptop to restart his education and finish his degree.")
Request.create!(user_id: user_seeker_19.id, category_id: category_tablet.id, description: "Parisa needs an ipad/tablet to start a career as a teacher.")
Request.create!(user_id: user_seeker_12.id, category_id: category_laptop.id, description: "A qualified accountant, Samir needs a laptop to find a job.")
Request.create!(user_id: user_seeker_11.id, category_id: category_laptop.id, description: "Myriam needs a laptop do that she can learn and fins a job.")


#bookings
Booking.create!(charity_id: charity2.id, 
                user_id: user_seeker_2.id, 
                product_id: product_dell_laptop.id, 
                status: "Accepted"
                )
Booking.create!(charity_id: charity1.id, 
                user_id: user_seeker_1.id, 
                product_id: product_macbook.id, 
                status: "Declined"
                )
Booking.create!(charity_id: charity1.id, 
                user_id: user_seeker_8.id, 
                product_id: product_dell_laptop.id, 
                status: "Pending"
                )
Booking.create!(charity_id: charity2.id, 
                user_id: user_seeker_19.id, 
                product_id: product_ipad.id, 
                status: "Pending"
                )
# Booking.create!(charity_id: charity5.id, 
#                 user_id: user_seeker_7.id, 
#                 product_id: product_camera.id, 
#                 status: "Pending"
#                 )
Booking.create!(charity_id: charity3.id, 
                user_id: user_seeker_3.id, 
                product_id: product_desktop.id, 
                status: "Pending"
                )
Booking.create!(charity_id: charity4.id, 
                user_id: user_seeker_5.id, 
                product_id: product_mobile.id, 
                status: "Accepted"
                )

puts "Created seeds"
puts "- 8 Users (1 Donator, 1 Worker and 20 Seekers)"
puts "- 8 Categories"
puts "- 9 Charities"
puts "- 13 Requests"
puts "- 7 Products"
puts "- 7 Bookings"

