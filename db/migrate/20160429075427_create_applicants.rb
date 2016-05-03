class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :last_name
      t.string :first_name
      t.string :middle_initial
      t.string :nickname
      t.text :image_path
      t.string :gender
      t.string :civil_status
      t.text :address
      t.string :contact_number
      t.string :landline_number
      t.string :email
      t.string :nationality
      t.string :religion
      t.datetime :birthday
      t.string :school
      t.text :school_address
      t.string :major
      t.integer :year
      t.text :medical_information
      t.text :personal_information
      t.string :guardian_name
      t.string :guardian_contact_number
      t.text :guardian_address
      t.string :guardian_email
      t.string :room_type
      
      t.timestamps null: false
    end
  end
end
