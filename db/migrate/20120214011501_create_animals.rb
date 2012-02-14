class CreateAnimals < ActiveRecord::Migration
  def self.up
    create_table :animals do |t|
      t.string :name
      t.string :owner
      t.integer :vet_id

      t.timestamps
    end
  end

  def self.down
    drop_table :animals
  end
end
