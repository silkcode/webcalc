# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
entry = Entry.create!()
entry.input_values.create!(value: '123', name: 'alex')
entry.input_values.create!(value: '123', name: '23331')
entry.input_values.create!(value: '123', name: 'al123123ex')
entry.input_values.create!(value: '123', name: 'ale232x')
entry.input_values.create!(value: '123', name: 'alex4342')
entry.save!
