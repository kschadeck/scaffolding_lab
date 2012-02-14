class CreateVets < ActiveRecord::Migration
  def self.up
    create_table :vets do |t|
      t.string :name
      t.string :address
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :vets
  end
end
