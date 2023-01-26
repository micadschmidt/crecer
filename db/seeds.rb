# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'
Alumno.destroy_all
Clase.destroy_all
Profesor.destroy_all
User.destroy_all

puts 'creando usuarios'

user1 = User.new(nombre: 'Dimmas', apellido: 'Kirolinko', email: 'dimmas@gmail.com', alumnonombrecompleto: 'Brianna Kirolinko', password: '123456')
user1.foto.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1674766308/development/download_zm6zgt.png"), filename: "user1.jpg", content_type: "image/jpg")
user1.save!
user2 = User.create(nombre: 'Abi', apellido: 'Flores', email: 'abi@gmail.com', alumnonombrecompleto: 'Joaquin Canteros', password: '123456')
user2.foto.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1674766396/development/download_1_aw2hei.png"), filename: "user2.jpg", content_type: "image/jpg")
user2.save!

puts 'creando profesores'
profesor1 = Profesor.new(nombre: 'Dimmas', apellido: 'Kirolinko', descripcion_profesor: 'Hola soy Dimmas y soy Profe de Educacion Fisica-Hola soy Abi y soy Profe de Educacion Fisica-Hola soy Abi y soy Profe de Educacion Fisica')
profesor1.foto_profesor.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1674766396/development/download_1_aw2hei.png"), filename: "profesor1.jpg", content_type: "image/jpg")
profesor1.save!
profesor2 = Profesor.new(nombre: 'Abi', apellido: 'Flores', descripcion_profesor: 'Hola soy Abi y soy Profe de Educacion Fisica-Hola soy Abi y soy Profe de Educacion Fisica-Hola soy Abi y soy Profe de Educacion Fisica')
profesor2.foto_profesor.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1674766396/development/download_1_aw2hei.png"), filename: "profesor2.jpg", content_type: "image/jpg")
profesor2.save!
profesor3 = Profesor.new(nombre: 'Cami', apellido: 'Flores', descripcion_profesor: 'Hola soy Cami y soy Profe de Educacion Fisica-Hola soy Abi y soy Profe de Educacion Fisica-Hola soy Abi y soy Profe de Educacion Fisica')
profesor3.foto_profesor.attach(io: URI.open("https://res.cloudinary.com/watchlistcreator/image/upload/v1674766396/development/download_1_aw2hei.png"), filename: "profesor3.jpg", content_type: "image/jpg")
profesor3.save!

puts 'creando clases'
clase1 = Clase.new(categoria: 'Estimulación temprana', profesor_id: profesor1.id, descripcion: 'La Educación o Estimulación Temprana es un conjunto de técnicas de intervención educativas que pretende impulsar el desarrollo cognitivo, social y emocional del niño durante la etapa infantil')
clase1.fotos.attach(io: URI.open("https://images.unsplash.com/photo-1600821986515-3ef5b0f29f39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=770&q=80"), filename: "clase1.jpg", content_type: "image/jpg")
clase1.save!
clase2 = Clase.new(categoria: 'Telas', profesor_id: profesor2.id, descripcion: 'Es un ejercicio ideal para fortalecer los huesos. Se gana equilibrio y flexibilidad. La capacidad de adquirir habilidades gimnásticas mejora la confianza y la autoestima.')
clase2.fotos.attach(io: URI.open("https://images.unsplash.com/photo-1605524240886-403a29dc49ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80"), filename: "clase2.jpg", content_type: "image/jpg")
clase2.save!
clase3 = Clase.new(categoria: 'Gimnasia artística', profesor_id: profesor3.id, descripcion: 'La gimnasia artística es una modalidad de gimnasia que consiste en la realización de una composición coreográfica, combinando de forma simultánea y a una alta velocidad, movimientos corporales.')
clase3.fotos.attach(io: URI.open("https://images.unsplash.com/photo-1655842556432-ece48a4f2c1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"), filename: "clase3.jpg", content_type: "image/jpg")
clase3.save!

# puts 'creando alumnos'
# alumno1 = Alumno.new(edad: 5, clase: clase1.id)
# alumno1.save!
# alumno2 = Alumno.new(edad: 4, clase: clase2.id)
# alumno2.save!
# alumno3 = Alumno.new(edad: 10, clase: clase3.id)
# alumno3.save!
# hacer migracion arreglando alumnos:agregar nombre, apellido, asociacion con clase id
