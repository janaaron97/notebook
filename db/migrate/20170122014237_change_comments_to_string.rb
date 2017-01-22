class ChangeCommentsToString < ActiveRecord::Migration
	def up
	    change_column :comments, :comment, :string
	end
	def down
	end
end
