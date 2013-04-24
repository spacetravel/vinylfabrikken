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
    ["CD-R", "DVD-R", "DAT","Bånd","FTP", "Minnepinne", "E-Post"].each do |upload_method|
      AlbumMedium.find_or_create_by_name(upload_method, address: "Adressen filene skal sendes til", description: "Beskrivelse av opplastingsmetode")
    end 
puts "- Created or updated album media"

# Create the seed data for cover medium
    ["CD-R", "DVD-R", "FTP", "Minnepinne", "E-Post"].each do |upload_method|
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

# Adding Info Texts

puts "- Creating info texts"

# Create the seed data for info texts
   InfoText.find_or_create_by_keyword("gravering", short_desc: "Kort teskst om gravering, kunsten å risse eller skjære inn ornamenter eller bilder i en flate av metall, glass, stein, tre, ben o.l. ved hjelp av redskaper som stikler eller meisler.", desc: "Gravering, kunsten å risse eller skjære inn ornamenter eller bilder i en flate av metall, glass, stein, tre, ben o.l. ved hjelp av redskaper som stikler eller meisler.")
puts "- Created gravering info text"

   InfoText.find_or_create_by_keyword("matriser", short_desc: "Kort tekst om matriser, kunsten å risse eller skjære inn ornamenter eller bilder i en flate av metall, glass, stein, tre, ben o.l. ved hjelp av redskaper som stikler eller meisler.", desc: "Matriser, kunsten å risse eller skjære inn ornamenter eller bilder i en flate av metall, glass, stein, tre, ben o.l. ved hjelp av redskaper som stikler eller meisler.")
puts "- Created matriser info text"

   InfoText.find_or_create_by_keyword("provetrykk", short_desc: "Kort tekst om prøvetrykk, kunsten å risse eller skjære inn ornamenter eller bilder i en flate av metall, glass, stein, tre, ben o.l. ved hjelp av redskaper som stikler eller meisler.", desc: "Prøvetrykk, kunsten å risse eller skjære inn ornamenter eller bilder i en flate av metall, glass, stein, tre, ben o.l. ved hjelp av redskaper som stikler eller meisler.")
puts "- Created matriser info text"

   InfoText.find_or_create_by_keyword("pressing", short_desc: "Kort tekst om vinylpressing, kunsten å risse eller skjære inn ornamenter eller bilder i en flate av metall, glass, stein, tre, ben o.l. ved hjelp av redskaper som stikler eller meisler.", desc: "Vinylpressing, kunsten å risse eller skjære inn ornamenter eller bilder i en flate av metall, glass, stein, tre, ben o.l. ved hjelp av redskaper som stikler eller meisler.")
puts "- Created pressing info text"

   InfoText.find_or_create_by_keyword("labels", short_desc: "Kort tekst om labels, kunsten å risse eller skjære inn ornamenter eller bilder i en flate av metall, glass, stein, tre, ben o.l. ved hjelp av redskaper som stikler eller meisler.", desc: "Labels, kunsten å risse eller skjære inn ornamenter eller bilder i en flate av metall, glass, stein, tre, ben o.l. ved hjelp av redskaper som stikler eller meisler.")
puts "- Created labels info text"

   InfoText.find_or_create_by_keyword("covers", short_desc: "Kort tekst om covers, kunsten å risse eller skjære inn ornamenter eller bilder i en flate av metall, glass, stein, tre, ben o.l. ved hjelp av redskaper som stikler eller meisler.", desc: "Covers, kunsten å risse eller skjære inn ornamenter eller bilder i en flate av metall, glass, stein, tre, ben o.l. ved hjelp av redskaper som stikler eller meisler.")
puts "- Created covers info text"