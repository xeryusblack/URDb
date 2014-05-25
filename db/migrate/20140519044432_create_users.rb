class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.boolean :complete
      t.string :movie
      t.references :movies

      t.timestamps
    end
  end
end
