# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Creando nuevos usuarios
User.create name: 'Jose', status: :active, kind: :salesman, email: 'salesman@tester.com', password: 123456
User.create name: 'Manuel', status: :active, kind: :salesman, email: 'salesman2@tester.com', password: 123456

User.create name: 'Marcos', status: :active, kind: :manager, email: 'manager@tester.com', password: 123456

#Creando productos de ejemplo
Product.create name: 'Smarphone', description: 'Un nuevo smarphone', status: :active
Product.create name: 'Tablet', description: 'Un nuevo Tablet', status: :active

Discount.create name: 'Descuento carnaval', description: 'Aplica descuento', value: '10',  status: :active
