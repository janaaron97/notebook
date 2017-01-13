class AddWelcomeRefToDocs < ActiveRecord::Migration
  def change
    add_reference :docs, :welcome, index: true, foreign_key: true
  end
end
