class DropWelcomeTables < ActiveRecord::Migration
  def up
    drop_table :welcome_tables
  end

  def down
    create_table :welcome_tables do |t|  
    end
  end
end
