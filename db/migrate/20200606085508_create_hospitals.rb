class CreateHospitals < ActiveRecord::Migration[6.0]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.text :address
      t.string :phone

      t.timestamps
    end
  end
end
