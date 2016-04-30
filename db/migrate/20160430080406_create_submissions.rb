class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.datetime :date_sent

      t.timestamps null: false
    end
  end
end
