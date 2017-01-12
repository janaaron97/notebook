class AddDocIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :doc_id, :integer
  end
end
