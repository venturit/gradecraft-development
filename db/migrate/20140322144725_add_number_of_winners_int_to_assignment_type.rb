class AddNumberOfWinnersIntToAssignmentType < ActiveRecord::Migration
  def change
  	add_column :assignment_types, :num_winners, :int
  end
end
