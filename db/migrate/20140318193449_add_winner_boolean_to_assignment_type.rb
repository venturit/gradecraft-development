class AddWinnerBooleanToAssignmentType < ActiveRecord::Migration
  def change
  	add_column :assignment_types, :has_winners, :boolean
  end
end
