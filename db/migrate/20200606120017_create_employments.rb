class CreateEmployments < ActiveRecord::Migration[6.0]
  def change
    create_table :employments do |t|
      t.integer :doctor_id
      t.integer :hospital_id

      t.timestamps
    end
  end
end
