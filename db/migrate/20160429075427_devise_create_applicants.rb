class DeviseCreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

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
      t.string :nationality
      t.string :religion
      t.date :birthday
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
      t.string :stage
      t.integer :room_number
      t.integer :violation
      t.boolean :door_log
      t.integer :room_id
      t.integer :statement_of_account_id

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :applicants, :email,                unique: true
    add_index :applicants, :reset_password_token, unique: true
    # add_index :applicants, :confirmation_token,   unique: true
    # add_index :applicants, :unlock_token,         unique: true
  end
end
