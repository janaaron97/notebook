class DropWelcomes < ActiveRecord::Migration
  def up
    drop_table :welcomes
  end

  def down
    create_table :welcomes do |t|   
    end
    add_index :welcomes, :user_id
  end
end
