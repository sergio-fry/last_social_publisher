class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.string :publisher_klass
      t.text :link

      t.timestamps null: false
    end
  end
end
