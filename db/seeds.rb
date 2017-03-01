# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
trail = Trails.create([{ trail_name: 'Long Trail' },
                       { trail_name: 'Short Trail' },
                       { trail_name: 'Just Right Trail' }])
# #
# user = Users.create([{ frist_name: 'Pappa' }, { last_name: 'Bear' },
#                      { email: 'bigpappa@goldy.lox' }, { password: 'xxx' },
#                      { frist_name: 'Mamma' }, { last_name: 'Bear' },
#                      { email: 'smallmamma@goldy.lox' }, { password: 'ooo' },
#                      { frist_name: 'Baby' }, { last_name: 'Bear' },
#                      { email: 'carl@goldy.lox' }, { password: 'yyy' }])
