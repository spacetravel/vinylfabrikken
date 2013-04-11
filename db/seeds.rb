#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# data The can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding Vinylfabrikken database ... "


# Create the seed data for Album medium
    ["CD-R", "DVD-R", "DAT","Bånd","FTP", "E-Post"].each do |upload_method|
      AlbumMedium.find_or_create_by_name(upload_method, address: "Adressen filene skal sendes til", description: "Beskrivelse av opplastingsmetode")
    end 
puts "- Created or updated album media"

# Create the seed data for cover medium
    ["CD-R", "DVD-R", "FTP", "E-Post"].each do |upload_method|
      CoverMedium.find_or_create_by_name(upload_method, address: "Adressen filene skal sendes til", description: "Beskrivelse av opplastingsmetode")
    end 
puts "- Created or updated cover media"

# Create the seed data for delivery method
    ["Hentes i butikken", "Sendes i posten", "Sendes med bud"].each do |delivery_method|
      DeliveryMethod.find_or_create_by_name(delivery_method, description: "Beskrivelse av leveringsmetode")
    end 
puts "- Created or updated delivery methods"

# Create the seed data for order statuses
    ["Ingen status","Sendt fra kunde", "Mottatt av Vinylfabrikken", "Betalt av kunde", "Ikke påbegynt produksjon", "I produksjon", "Ferdigstilt", "Sendt til kunde", "Levert til kunde"].each do |order_status|
      OrderStatus.find_or_create_by_title(order_status, description: "Beskrivelse av status ordere", color: "not defined", owner: 0)
    end
puts "- Created or updated order statuses"