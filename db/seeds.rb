# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Applicant.create(first_name: 'Lorenzo', last_name:'Bautista', middle_initial: 'A', nickname:'Enzo', gender: 'M', contact_number: '09172837458', landline_number: '555-5565', civil_status: 'Single', email:'lorenzobautista4@gmail.com',stage:'Pending',room_type: "Two-in-a-room Deluxe")
Applicant.create(first_name: 'Kurt', last_name:'Chan', email:'lorenzobautista4@gmail.com',stage:'Pending',room_type: "Two-in-a-room Deluxe")
Applicant.create(first_name: 'Hans', last_name:'Cristobal', email:'lorenzobautista4@gmail.com',stage:'Pending',room_type: "Two-in-a-room Deluxe")
Applicant.create(first_name: 'Bryan', last_name:'Zerrudo', email:'lorenzobautista4@gmail.com',stage:'Pending',room_type: "Two-in-a-room Deluxe")
Applicant.create(first_name: 'Sef', last_name:'Remollo', email:'lorenzobautista4@gmail.com',stage:'Pending',room_type: "Four-in-a-room Deluxe")
Applicant.create(first_name: 'Patrick', last_name:'Felizco', email:'lorenzobautista4@gmail.com',stage:'Pending',room_type: "Two-in-a-room Deluxe")
Applicant.create(first_name: 'Vaughn', last_name:'Villarico', email:'vaughn.villarico@gmail.com',stage:'Pending',room_type: "Two-in-a-room Premium")
Applicant.create(first_name: 'Enzo', last_name:'B7', email:'lorenzobautista4@gmail.com',stage:'Pending',room_type: "Four-in-a-room Premium")
Applicant.create(first_name: 'Enzo', last_name:'B8', email:'lorenzobautista4@gmail.com',stage:'Pending',room_type: "Two-in-a-room Deluxe")
Applicant.create(first_name: 'Enzo', last_name:'B9', email:'lorenzobautista4@gmail.com',stage:'Pending',room_type: "Two-in-a-room Premium")
Applicant.create(first_name: 'Enzo', last_name:'B10', email:'lorenzobautista4@gmail.com',stage:'Pending',room_type: "Two-in-a-room Deluxe")
Applicant.create(first_name: 'Enzo', last_name:'B11', email:'lorenzobautista4@gmail.com',stage:'Pending',room_type: "Two-in-a-room Regular")
Applicant.create(first_name: 'Enzo', last_name:'B12', email:'lorenzobautista4@gmail.com',stage:'Pending',room_type: "Four-in-a-room Regular")
Applicant.create(first_name: 'Enzo', last_name:'B13', email:'lorenzobautista4@gmail.com',stage:'Pending',room_type: "Four-in-a-room Regular")
Applicant.create(first_name: 'Enzo', last_name:'B14', email:'lorenzobautista4@gmail.com',stage:'Pending',room_type: "Two-in-a-room Deluxe")

Room.create(room_number: 101,room_type:'Two-in-a-room Deluxe',room_capacity:2,room_price: 5600,occupant_count: 0,room_status:'',floor_area:'',bed_count: 2,bathroom_count: 1)
Room.create(room_number: 102,room_type:'Two-in-a-room Deluxe',room_capacity:2,room_price: 5600,occupant_count: 0,room_status:'',floor_area:'',bed_count: 2,bathroom_count: 1)
Room.create(room_number: 103,room_type:'Two-in-a-room Premium',room_capacity:2,room_price: 6600,occupant_count: 0,room_status:'',floor_area:'',bed_count: 2,bathroom_count: 1)
Room.create(room_number: 104,room_type:'Two-in-a-room Premium',room_capacity:2,room_price: 6600,occupant_count: 0,room_status:'',floor_area:'',bed_count: 2,bathroom_count: 1)
Room.create(room_number: 105,room_type:'Two-in-a-room Premium',room_capacity:2,room_price: 6600,occupant_count: 0,room_status:'',floor_area:'',bed_count: 2,bathroom_count: 1)
Room.create(room_number: 106,room_type:'Two-in-a-room Regular',room_capacity:2,room_price: 4600,occupant_count: 0,room_status:'',floor_area:'',bed_count: 2,bathroom_count: 1)
Room.create(room_number: 107,room_type:'Two-in-a-room Regular',room_capacity:2,room_price: 4600,occupant_count: 0,room_status:'',floor_area:'',bed_count: 2,bathroom_count: 1)
Room.create(room_number: 108,room_type:'Two-in-a-room Regular',room_capacity:2,room_price: 4600,occupant_count: 0,room_status:'',floor_area:'',bed_count: 2,bathroom_count: 1)
Room.create(room_number: 201,room_type:'Two-in-a-room Deluxe',room_capacity:2,room_price: 5600,occupant_count: 0,room_status:'',floor_area:'',bed_count: 2,bathroom_count: 1)
Room.create(room_number: 202,room_type:'Two-in-a-room Deluxe',room_capacity:2,room_price: 5600,occupant_count: 0,room_status:'',floor_area:'',bed_count: 2,bathroom_count: 1)
Room.create(room_number: 203,room_type:'Two-in-a-room Premium',room_capacity:2,room_price: 6600,occupant_count: 0,room_status:'',floor_area:'',bed_count: 2,bathroom_count: 1)
Room.create(room_number: 204,room_type:'Two-in-a-room Premium',room_capacity:2,room_price: 6600,occupant_count: 0,room_status:'',floor_area:'',bed_count: 2,bathroom_count: 1)
Room.create(room_number: 205,room_type:'Two-in-a-room Premium',room_capacity:2,room_price: 6600,occupant_count: 0,room_status:'',floor_area:'',bed_count: 2,bathroom_count: 1)
Room.create(room_number: 206,room_type:'Two-in-a-room Regular',room_capacity:2,room_price: 4600,occupant_count: 0,room_status:'',floor_area:'',bed_count: 2,bathroom_count: 1)
Room.create(room_number: 207,room_type:'Two-in-a-room Regular',room_capacity:2,room_price: 4600,occupant_count: 0,room_status:'',floor_area:'',bed_count: 2,bathroom_count: 1)
Room.create(room_number: 208,room_type:'Two-in-a-room Regular',room_capacity:2,room_price: 4600,occupant_count: 0,room_status:'',floor_area:'',bed_count: 2,bathroom_count: 1)