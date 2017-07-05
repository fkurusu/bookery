class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :full_name, :nick_name
      t.text :biography
      t.integer :age
      t.timestamps
    end
  end
end
