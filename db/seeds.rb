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
    AlbumMedium.delete_all
    ["CD-R", "DVD-R", "DAT","Bånd","FTP", "Minnepinne", "E-Post"].each do |upload_method|
      AlbumMedium.find_or_create_by_name(upload_method, address: "Adressen filene skal sendes til", description: "Beskrivelse av opplastingsmetode")
    end 
puts "- Created or updated album media"

# Create the seed data for cover medium
    CoverMedium.delete_all
    ["CD-R", "DVD-R", "FTP", "Minnepinne", "E-Post"].each do |upload_method|
      CoverMedium.find_or_create_by_name(upload_method, address: "Adressen filene skal sendes til", description: "Beskrivelse av opplastingsmetode")
    end 
puts "- Created or updated cover media"

# Create the seed data for delivery method
    DeliveryMethod.delete_all
    ["Hentes i butikken", "Sendes i posten", "Sendes med bud"].each do |delivery_method|
      DeliveryMethod.find_or_create_by_name(delivery_method, description: "Beskrivelse av leveringsmetode")
    end 
puts "- Created or updated delivery methods"


# Create the seed data for price categories
    PriceCategory.delete_all
    [["Gravering","gravering"],["Matriser","matriser"],["Prøvetrykk","provetrykk"],["Pressing","pressing"],["Labels","labels"],["Cover","cover"]].each do |name, keyword|
      PriceCategory.find_or_create_by_name(name, keyword: keyword)
    end 
 puts "- Created or updated price categories"




# Create the seed data for order statuses
    OrderStatus.delete_all
    [["Ingen status","ingen", "Beskrivelse av Ingen status", "#FFCC00"],
    ["Sendt til godkjenning","tilgodkjenning", "Beskrivelse av Send til godkjenning", "#FF6600"],
    ["Godkjent","godkjent", "Beskrivelse av Godkjent", "#00CC00"],
    ["Venter på betaling","betaling", "Beskrivelse av Venter på betaling", "#FF0000"],
    ["Venter på produksjon","venterproduksjon", "Beskrivelse av Venter på produksjon", "#FF6600"],
    ["Under produksjon","underproduksjon", "Beskrivelse av Under produksjon", "#333300"],
    ["Ferdig produsert","ferdig", "Beskrivelse av Ferdig produsert", "#00CC00"],
    ["Levert til kunde","levert", "Beskrivelse av Levert til kunde", "#33CC00"]].each do |order_status, order_keyword, order_desc, order_color|
      OrderStatus.find_or_create_by_title(order_status, keyword: order_keyword, description: order_desc, color: order_color, owner: 0)
    end
puts "- Created or updated order statuses"

# Create the seed data for order statuses
    PaymentMethod.delete_all
    ["VISA","Mastercard", "PayPal", "Overføre til vår konto", "Betale i butikken", "Fakturaavtale"].each do |payment_title|
      PaymentMethod.find_or_create_by_title(payment_title, desc: "Beskrivelse av status ordere")
    end
puts "- Created or updated payment methods"


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

# Adding FAQ Categories
   FaqCategory.find_or_create_by_title("Generelt", desc: "Covers, kunsten å risse eller skjære inn ornamenter eller bilder i en flate av metall, glass, stein, tre, ben o.l. ved hjelp av redskaper som stikler eller meisler.")
   FaqCategory.find_or_create_by_title("Priser", desc: "Covers, kunsten å risse eller skjære inn ornamenter eller bilder i en flate av metall, glass, stein, tre, ben o.l. ved hjelp av redskaper som stikler eller meisler.")
   FaqCategory.find_or_create_by_title("Teknisk", desc: "Covers, kunsten å risse eller skjære inn ornamenter eller bilder i en flate av metall, glass, stein, tre, ben o.l. ved hjelp av redskaper som stikler eller meisler.")
puts "- Created FAQ Categories"