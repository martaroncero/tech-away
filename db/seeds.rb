require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
puts "Creating seeds..."

#Categories
category_camera = Category.create!(title: "Camera")
category_camera.photo.attach(io: URI.open('https://res.cloudinary.com/diynwton0/image/upload/v1615293253/camera_pjbop4.png'), 
                            filename: 'camera.jpg', 
                            content_type: 'image/jpg'
                            )
category_laptop = Category.create!(title: "Laptop")
category_laptop.photo.attach(io: URI.open('https://res.cloudinary.com/diynwton0/image/upload/v1615293176/laptop_poh39o.png'), 
                            filename: 'laptop.jpg', 
                            content_type: 'image/jpg'
                            )
category_desktop = Category.create!(title: "Desktop computer")
category_desktop.photo.attach(io: URI.open('https://res.cloudinary.com/diynwton0/image/upload/v1615293276/computer_fm4dqg.png'), 
                            filename: 'desktop.jpg', 
                            content_type: 'image/jpg'
                            )
category_tablet = Category.create!(title: "Tablet")
category_tablet.photo.attach(io: URI.open('https://res.cloudinary.com/diynwton0/image/upload/v1615293214/ipad_jdsnkv.png'), 
                            filename: 'tablet.jpg', 
                            content_type: 'image/jpg'
                            )
category_mobile = Category.create!(title: "Mobile phone")
category_mobile.photo.attach(io: URI.open('https://res.cloudinary.com/diynwton0/image/upload/v1615288780/android_dwnkhr.png'), 
                            filename: 'mobile.jpg', 
                            content_type: 'image/jpg'
                            )
category_printer = Category.create!(title: "Printer")
category_printer.photo.attach(io: URI.open('https://res.cloudinary.com/diynwton0/image/upload/v1615293233/printer-door-open_p7mmxz.png'), 
                            filename: 'printer.jpg', 
                            content_type: 'image/jpg'
                            )
category_monitor = Category.create!(title: "Monitor")
category_monitor.photo.attach(io: URI.open('https://res.cloudinary.com/diynwton0/image/upload/v1615293190/monitor--v1_tbd0c8.png'), 
                            filename: 'monitor.jpg', 
                            content_type: 'image/jpg'
                            )


# Charities
charity1 = Charity.create!(name: "Refugee aid", 
                          website: "www.refugee-aid.org", 
                          whatsapp_number: "+4435671229"
                          )
charity2 = Charity.create!(name: "We are one", 
                          website: "www.weareone.org", 
                          whatsapp_number: "+4430712929"
                          )
charity3 = Charity.create!(name: "Refugee-Voice", 
                          website: "www.refugee-voice.org", 
                          whatsapp_number: "+44307129760"
                          )
charity4 = Charity.create!(name: "She Refugee aid", 
                          website: "www.sherefugeeaid.com", 
                          whatsapp_number: "+4465712955"
                          )
charity5 = Charity.create!(name: "World for all", 
                          website: "www.world-for-all.uk.org", 
                          whatsapp_number: "+446572115"
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
                        description: "Before she was forced to flee civil war in Syria, Amal was studying to be lawyer. She needs to pass an advanced English exam to get into university, and needs a laptop for the same. Amal hopes she can continue her education here in Britain and someday be a successful lawyer.",
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
                        description: "Saloo is from Bhutan and was studying in university before he had to seek asylum in Britain.He needs a laptop to study social work so that he can work with his local council to support other young refugees .",
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
                        description: "Bob was studying in his final year of university, before his family had to flee. He is a self taught programmer and would like a desktop and monitor to continue his studies. Bob aspires to be a software engineer.",
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
                        description: "Originally from Ethiopia, Abebe fled Kenya with his wife and new born, leaving everything behind. He was a photographer and worked for the local newspaper but had to leave everything behind. He needs a camera so that he can once again stand up on his feet, support his family and start a new life here in Britain.",
                        phone_number: "+443992200")
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
                        description: "Noor was forced to leave her husband in Syria and seek asylum in Britain for the sake of her young daughter's safety. All alone here in Britain, Noor would like a mobile phone so she can start her own catering business and also stay in contact with her husband who is still in Syria, waiting to speak and see his wife and daughter.",
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
                        description: "Zaida, a young mother was studying psychology at university and was forced to leave war torn Iran with her baby. She needs a laptop to continue her studies and finish her degree in psychology. Zaida aspires to be a councellor so that she can support other refugees and young mothers.",
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
                        description: "Sulaiman, an engineer fled Syria with his mother and endured a five-hour sea crossing to Europe on a dangerous overcrowded boat. He arrived with nothing but aspirations to start a new life. He needs a desktop and a printer so that he can pass an advance english exam to be able to look for a job as an engineer here in London.",
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
                        description: "Wafaa was in her final year of university studying International Finance , before she was forced to flee the civil war in Libya and seek asylum in Britain. She needs a laptop to continue her studies so that she can be independent and secure a bright future.",
                        phone_number: "+44428840")
user_seeker_8.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615281110/download_1_scwk3c.jpg'),
                          filename: "user_seeker_8.jpg",
                          content_type: "image/jpg"
                          )
user_seeker_8.save!

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

product_desktop = Product.create!(user_id: User.last.id, 
                          title: "Desktop", 
                          description: "HP Pavilion 24-xa Core i3 Windows 10 Desktop. The desktop is in pristine condition, brought for my son but was used only for a few months.", 
                          status: "Pending", 
                          condition: "Used (good)",category_id: category_desktop.id, 
                          address: "Charteris Road, London NW6"
                          )
product_desktop.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1614948906/download_2_zip61w.jpg'), 
                            filename: 'desktop.jpg', 
                            content_type: 'image/jpg'
                            )
product_desktop.save!

product_printer = Product.create!(user_id: User.last.id, 
                          title: "HP Printer", 
                          description: "This HP printer is in great condition, used for 6 months only.", 
                          status: "Pending", 
                          condition: "Used (good)",category_id: category_printer.id, 
                          address: "Alma Road, St.Albans AL1"
                          )
product_printer.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615281110/download_mpbrki.jpg'), 
                            filename: 'printer.jpg', 
                            content_type: 'image/jpg'
                            )
product_printer.save!

product_monitor = Product.create!(user_id: User.last.id, 
                          title: "Monitor 15inches", 
                          description: "15inches Touch Screen LCD Monitor Display 1024x768 Resolution. It is 2 years old but used with care, minor scratches but in good usable condition.", 
                          status: "Pending", 
                          condition: "Used (good)",category_id: category_monitor.id, 
                          address: "Winchester House, Merchant Street, Bow, Mile End, London E3"
                          )
product_monitor.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1615281109/download_2_eqw6pt.jpg'), 
                            filename: 'monitor.jpg', 
                            content_type: 'image/jpg'
                            )
product_monitor.save!

#Requests
Request.create!(user_id: user_seeker_1.id, category_id: category_laptop.id)
Request.create!(user_id: user_seeker_2.id, category_id: category_laptop.id, status: "Completed")
Request.create!(user_id: user_seeker_5.id, category_id: category_mobile.id)
Request.create!(user_id: user_seeker_7.id, category_id: category_printer.id)
Request.create!(user_id: user_seeker_3.id, category_id: category_desktop.id)
Request.create!(user_id: user_seeker_3.id, category_id: category_monitor.id)
Request.create!(user_id: user_seeker_4.id, category_id: category_camera.id)
Request.create!(user_id: user_seeker_8.id, category_id: category_laptop.id)
Request.create!(user_id: user_seeker_6.id, category_id: category_tablet.id, status: "Completed")

#bookings
Booking.create!(charity_id: charity2.id, 
                user_id: user_seeker_2.id, 
                product_id: product_dell_laptop.id, 
                status: "Declined"
                )
Booking.create!(charity_id: charity1.id, 
                user_id: user_seeker_1.id, 
                product_id: product_macbook.id, 
                status: "Accepted"
                )
Booking.create!(charity_id: charity1.id, 
                user_id: user_seeker_8.id, 
                product_id: product_mobile.id, 
                status: "Pending"
                )
Booking.create!(charity_id: charity4.id, 
                user_id: user_seeker_5.id, 
                product_id: product_desktop.id, 
                status: "Pending"
                )
Booking.create!(charity_id: charity4.id, 
                user_id: user_seeker_6.id, 
                product_id: product_ipad.id, 
                status: "Accepted"
                )
Booking.create!(charity_id: charity5.id, 
                user_id: user_seeker_7.id, 
                product_id: product_dell_laptop.id, 
                status: "Pending"
                )
Booking.create!(charity_id: charity3.id, 
                user_id: user_seeker_3.id, 
                product_id: product_dell_laptop.id, 
                status: "Pending"
                )
Booking.create!(charity_id: charity2.id, 
                user_id: user_seeker_4.id, 
                product_id: product_dell_laptop.id, 
                status: "Pending"
                )
                
puts "Created seeds"
puts "- 8 Users (1 Donator, 1 Worker and 7 Seekers)"
puts "- 8 Categories"
puts "- 9 Requests"
puts "- 7 Products"
puts "- 7 Bookings"