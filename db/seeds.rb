# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

#--- Destroy All--
User.destroy_all
Agency.destroy_all
Activity.destroy_all
Inquiry.destroy_all
Booking.destroy_all
Certificate.destroy_all

#--- Inicio de SEED--
puts 'start seed'
 
#--- Users--
user1 = User.create!(email:"studentdive@dive.com", password:"123456", first_name:"Buzo", last_name:"De Mar", birthday: "14/11/1978", admin: false, cel_phone: "1154194769" )
user2 = User.create!(email:"student2dive@dive.com", password:"123456", first_name:"Apnea", last_name:"De Mar", birthday: "14/11/1987", admin: false, cel_phone: "1154194769" )
admin1 = User.create!(email:"admindive@dive.com", password:"123456", first_name:"Instructor", last_name:"De Mar", birthday: "14/11/1978", admin: true, cel_phone: "1154194769" )

#--- Agency--
sdi = Agency.create!(name: "SDI", information: "Buzos Recreativos")
tdi = Agency.create!(name: "TDI", information: "Buzos Tecnicos")
erdi = Agency.create!(name: "ERDI", information: "Buzos Seguridad Publica")
fri = Agency.create!(name: "FRI", information: "Cuidados de Salud")
sal = Agency.create!(name: "SAL", information: "Salidas Grupales")


#--- Activity--
owsd = Activity.create!( sort: "curso", start_date: "01/10/2020", duration: "10 dias", price: 450, name_activity: "OWSD - Open Water Scuba Diver", description: "El curso Open Water Scuba Diver SDI es un curso de introducción al buceo. El curso cubre todos los conocimientos básicos sobre la instalación, la fisiología y el medio ambiente marino, y también la formación de los estudiantes para llevar a cabo bajo el agua las habilidades básicas", location: "Posadas Buceo", agency_id: sdi.id)
awsd = Activity.create!( sort: "curso", start_date: "01/12/2020", duration: "5 dias", price: 400, name_activity: "AWSD - Advaance Scuba Diver", description: "Durante el curso su instructor lo llevará a través de cuatro cursos completos de especialidad SDI de modo que al final se sientan cómodos para llevar a cabo inmersiones de esta naturaleza", location: "Posadas Buceo", agency_id: sdi.id)
divemaster = Activity.create!( sort: "professional", start_date: "01/12/2020", duration: "90 dias", price: 1200, name_activity: "DiveMaster - Tu Primer paso como profesional", description: "El buceador avanzado interesado en trabajar en la industria del buceo como una guía de buceo profesional o convertirse en un instructor.", location: "Posadas Buceo",  agency_id: sdi.id)
itt = Activity.create!( sort: "curso", start_date: "01/11/2020", duration: "15 dias", price: 300, name_activity: "Intro to the Tech", description: "The TDI Intro to Tech Course is an introductory course that expands on recreational training by improving dive planning methods, in-water skills, and streamlining existing gear configurations in a controlled and fun learning environment.", location: "Posadas Buceo",  agency_id: tdi.id)
itr = Activity.create!( sort: "especialidad", start_date: "01/11/2020", duration: "7 dias", price: 300, name_activity: "Intro to Rebreather", description: "!Using the latest technology in CCRs can maximize your gas supply and provide an optimum breathing gas for any depth by maintaining a constant partial pressure of oxygen", location: "Posadas Buceo", agency_id: tdi.id)
erd1 = Activity.create!( sort: "curso", start_date: "15/11/2020", duration: "7 dias", price: 250, name_activity: "Intro to ERDI", description: "This first level Emergency Response Diving Course is designed to give the certified open water diver, or open water certified public safety diver, the fundamental skills needed to safely function as part of an OSHA and NFPA compliant public safety dive team in both the diver and tender roles.", location: "Posadas Buceo",  agency_id: erdi.id)
ecare = Activity.create!( sort: "curso", start_date: "15/11/2020", duration: "7 dias", price: 250, name_activity: "Emergency Care", description: "Está diseñado para enseñar las técnicas para administrar RCP, primeros auxilios y utilizar un AED en situaciones de emergencia que involucran a bebés, niños y adultos.", location: "Posadas Buceo",  agency_id: fri.id)
malpelo = Activity.create!( sort: "salida", start_date: "01/03/2021", duration: "10 dias", price: 2500, name_activity: "Salida Grupal a Malpelo", description: "En los fondos que rodean esta agreste isla es posible bucear con grandes cardúmenes de barracudas y carángidos, contemplar a los tiburones martillo, tiburones sedosos, puntas blancas de arrecife y galapagueños, junto a decenas de morenas, águilas marinas y una buena muestra de fauna semi tropical.", location: "Colombia", agency_id: sal.id)
bonaire = Activity.create!( sort: "salida", start_date: "01/06/2021", duration: "10 dias", price: 1500, name_activity: "Salida Grupal a Bonaire", description: "La mayoría de puntos de buceo de Bonaire se localizan a lo largo de la costa este de la isla, y son accesibles desde la costa o con salidas en barco. A pocas millas de la costa este se localiza la pequeña isla de Klein Bonaire, con un buen número de puntos de buceo accesibles en barco.",  location: "Antillas Holandesas", agency_id: sal.id)

#--- Inquiry--
consulta1 = Inquiry.create!(name: "Gisela", email: "gise.ares@gmail.com", comment: "Quieero empezar un curso de OWD", phone: "112252918", activity_id: owsd.id)

#--- Inquiry--
booking1 = Booking.create!(status: "pendiente", booking_date: "01/09/2020", user_id: user1.id, activity_id: owsd.id)
booking2 = Booking.create!(status: "confirmado", booking_date: "01/09/2020", user_id: user1.id, activity_id: bonaire.id)
booking3 = Booking.create!(status: "cancelado", booking_date: "01/10/2020", user_id: user1.id, activity_id: malpelo.id)

#--- Inquiry--
certi1 = Certificate.create!(certified_at: "01/08/2020", user_id: user2.id, activity_id: owsd.id)


#--- Final--
puts 'finish seed'


