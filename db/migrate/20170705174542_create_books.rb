class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name, :isbn
      t.string :tags, array: true
      t.integer :author_id, :user_id, :category_id, :rating
      
      t.string :filename, :content_type
      t.binary :file_contents

      t.timestamps
    end
    add_index :books, :tags, using: 'gin'
  end
end

# http://edgeguides.rubyonrails.org/active_record_postgresql.html
# Usage
# Book.create title: "Brave New World",
#             tags: ["fantasy", "fiction"],
#             ratings: [4, 5]
 
## Books for a single tag
# Book.where("'fantasy' = ANY (tags)")

## Books for multiple tags
# Book.where("tags @> ARRAY[?]::varchar[]", ["fantasy", "fiction"])
 
## Books with 3 or more ratings
# Book.where("array_length(ratings, 1) >= 3")
