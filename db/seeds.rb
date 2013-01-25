# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
entry = Entry.create!()
entry.input_values.create!(value: '123', id: '2384723', result: '2232')
entry.input_values.create!(value: '123', id: '213123', result: '2232')
entry.input_values.create!(value: '123', id: '12321', result: '2232')
entry.input_values.create!(value: '123', id: '12312312', result: '2232')
entry.input_values.create!(value: '123', id: '12321', result: '2232')
entry.save!
