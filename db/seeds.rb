# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Countries
Country.create([{ id: 1, name: 'United States of America' , short: 'USA'}])

# States
State.create([{ id: 13, country_id: 1, name: 'North Carolina', short: 'NC'}])

# Counties
County.create([{ state_id: 13, name: 'Pitt' , short: 'Pitt'}])

# Level of gevernment
Level.create([{ id: 1, name: 'National' , short: ''}])
Level.create([{ id: 2, name: 'State' , short: ''}])
Level.create([{ id: 3, name: 'Local' , short: ''}])

# Political district
District.create([{ id: 1, country_id: 1, state_id: 0, county_id: 0, level_id: 1, name: 'Federal' }])

# Seat
Seat.create([{ district_id:integer level_id:integer cycle_id:integer elected:boolean name:string }])

# Election Cycle
Cycle.create([{ name:string startcycle:datetime endcycle:datetime }])

# Parties for affiliation
Party.create([{ id: 1, country_id: 1, name:'Democrat', short: 'D'}])
Party.create([{ id: 2, country_id: 1, name:'Republican', short: 'R'}])
Party.create([{ id: 3, country_id: 1, name:'Tea Party', short: 'T'}])
Party.create([{ id: 4, country_id: 1, name:'Libertarian', short: 'L'}])
Party.create([{ id: 5, country_id: 1, name:'Independent', short: 'I'}])

# Representative 
Representative.create([{ district_id: 1, party_id: 1, fname: 'Bill' lname: 'Clark' phone: '252-707-2304' email:'bill.clark@bs.com' }])

# Term 
Term.create([{ representative_id:integer seat_id:integer startterm:datetime endterm:datetime name:string }])

# Committees
Committee.create([{ id: 1, level_id:'1', name:'Committee' }])

# Committee Assignments
Assignment.create([{ term_id:integer comittee_id:integer startass:datetime endass:datetime }])

# Issues
Issue.create([{ name:'', description:''	}])

# Type name:string short:string
Type.create([{ name:'', short:'' }])

# Measurement 
Measurement.create([{ name:'', description:'' }])

# Event
Event.create([{ issue_id:, user_id:, measurement_id:, value:'' description:'' contribution:'' mark:''  }])

# Contribution
Contribution.create([{ user_id:1, representative_id:, issue_id:, value:'' }])

# Voucher
Voucher.create([{ contribution_id: 1 }])




