class AddPostIdToPostings < ActiveRecord::Migration
  def change
    add_column :postings, :post_id, :integer
  end
end
