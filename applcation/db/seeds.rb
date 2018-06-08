# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Role.create(name: :admin)
Role.create(name: :manager)
Role.create(name: :hr)
Role.create(name: :employee)
user1 = User.create(email: 'admin@gmail.com',
password: 'admin1234',
password_confirmation: 'admin1234')
user1.add_role(:admin)
user2 = User.create(email: 'manager@gmail.com',
password: 'manager1234',
password_confirmation: 'manager1234')
user2.add_role(:manager)
user3 = User.create(email: 'hr@gmail.com',
password: 'hr1234',
password_confirmation: 'hr1234')
user3.add_role(:hr)
user4 = User.create(email: 'employee@gmail.com',
password: 'employee1234',
password_confirmation: 'employee1234')
user4.add_role(:employee)

DashBoard.create(link_name: :'HR Links')
DashBoard.create(link_name: :'organization chart')

Dsb = DashBoard.find_by_link_name('HR Links')
Dsb.link_details.create(detail_name: :'Employee creation')
Dsb.link_details.create(detail_name: :'Employee Data Update')
Dsb.link_details.create(detail_name: :'Department creation')

Dsb2 =DashBoard.find_by_link_name('organization chart')
Dsb2.update_attributes(link_role: :'Employee')

