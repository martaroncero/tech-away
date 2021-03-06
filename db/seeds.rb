require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
puts "Creating seeds..."

#Categories
category_camera = Category.create!(title: "Camera")
category_laptop = Category.create!(title: "Laptop")
category_desktop = Category.create!(title: "Desktop computer")
category_tablet = Category.create!(title: "Tablet")
category_mobile = Category.create!(title: "Mobile phone")
category_printer = Category.create!(title: "Printer")
category_monitor = Category.create!(title: "Monitor")
category_camera = Category.create!(title: "Camera")

# Charities
charity1 = Charity.create!(name: "Refugee aid", 
                          website: "www.refugee-aid.org", 
                          whatsapp_number: "+44356712929"
                          )
charity2 = Charity.create!(name: "We are one", 
                          website: "www.weareone.org", 
                          whatsapp_number: "+4430712929"
                          )

#Users
user_donator = User.create!(email: "donator@mail.com", 
password: "123456" , 
first_name: "Nigel", 
last_name: "Lee", 
kind: "Donator", phone_number: "+441234120", contact_preference: "Either")

user_seeker_1 = User.new(email: "seeker@mail.com",
                        password: "123456",
                        first_name: "Amal",
                        last_name: "Shaw",
                        charity_id: charity2.id,
                        kind: "Seeker",
                        description: "Before she was forced to flee civil war in Sudan, Amal was studying to be lawyer. She needs to pass an advanced English exam to get into university, and needs a laptop for the same. Amal hopes she can continue her education here in Britain and someday be a successful lawyer.",
                        phone_number: "+443339200")
user_seeker_1.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1614945795/photo-1583431978096-e09dc7b7fcf4_ojjhlr.jpg'),
                          filename: "user_2.jpg",
                          content_type: "image/jpg")
user_seeker_1.save!

user_seeker_2 = User.new(email: "seeker1@mail.com",
                        password: "123456" ,first_name: "Saloo",
                        last_name: "Mir",
                        charity_id: charity2.id,
                        kind: "Seeker",
                        description: "Saloo was studying in university before he had to seek asylum in Britain.He needs a laptop to study social work so that he can work with his local council to support other young refugees .",
                        phone_number: "+44333920")
user_seeker_2.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1614945726/download_irxjsm.jpg'),
                          filename: "user_s1.jpg",
                          content_type: "image/jpg"
                          )
user_seeker_2.save!

user_seeker_3 = User.new(email: "seeker2@mail.com",
                        password: "123456"  ,first_name: "Bob",
                        last_name: "Ameer",
                        charity_id: charity2.id,
                        kind: "Seeker",
                        description: "Bob was a student back in Syria, before his family had to flee. He would like a desktop to continue his studies and aspires to be a software engineer.",
                        phone_number: "+44333920")
user_seeker_3.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1614945729/photo-1562925217-61a965391d53_x7pnfh.jpg'),
                          filename: "user_s2.jpg",
                          content_type: "image/jpg"
                          )
user_seeker_3.save!

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
                      description: " Dell Lauser_id: user_donator.id, titude E7470 . This laptop is 14inches,  6th Gen with i5 processor. It has pre-installed Windows 10 operating system  and 8GB RAM.",
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
                          condition: "Used (good)",category_id: Category.last.id, 
                          address: "Charteris Road, London NW6"
                          )
product_desktop.photo.attach(io: URI.open('https://res.cloudinary.com/ds32iiece/image/upload/v1614948906/download_2_zip61w.jpg'), 
                            filename: 'desktop.jpg', 
                            content_type: 'image/jpg'
                            )
product_desktop.save!

#Requests
Request.create!(user_id: user_seeker_1.id, category_id: category_laptop.id)
Request.create!(user_id: user_seeker_1.id, category_id: category_mobile.id)
Request.create!(user_id: user_seeker_1.id, category_id: category_printer.id)
Request.create!(user_id: user_seeker_2.id, category_id: category_desktop.id)
Request.create!(user_id: user_seeker_2.id, category_id: category_monitor.id)
Request.create!(user_id: user_seeker_2.id, category_id: category_printer.id)
Request.create!(user_id: user_seeker_3.id, category_id: category_camera.id)
Request.create!(user_id: user_seeker_3.id, category_id: category_tablet.id)

#bookings
Booking.create!(charity_id: charity2.id, 
                user_id: user_seeker_1.id, 
                product_id: product_dell_laptop.id, 
                status: "Declined"
                )
Booking.create!(charity_id: charity2.id, 
                user_id: user_seeker_1.id, 
                product_id: product_macbook.id, 
                status: "Accepted"
                )
Booking.create!(charity_id: charity2.id, 
                user_id: user_seeker_1.id, 
                product_id: product_mobile.id, 
                status: "Pending"
                )
Booking.create!(charity_id: charity2.id, 
                user_id: user_seeker_2.id, 
                product_id: product_desktop.id, 
                status: "Pending"
                )
Booking.create!(charity_id: charity2.id, 
                user_id: user_seeker_3.id, 
                product_id: product_ipad.id, 
                status: "Accepted"
                )
puts "Created seeds"
puts "- 5 Users (1 Donator, 1 Worker and 3 Seekers)"
puts "- 8 Categories"
puts "- 8 Requests"
puts "- 5 Products"
puts "- 5 Bookings"