class AddUserRefToWelcomes < ActiveRecord::Migration
  def change
    add_reference :welcomes, :user, index: true, foreign_key: true
  end
end
