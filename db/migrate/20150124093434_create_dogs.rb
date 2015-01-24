class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.references :customer, index: true

      t.timestamps null: false
    end
    add_foreign_key :dogs, :customers
  end
end
