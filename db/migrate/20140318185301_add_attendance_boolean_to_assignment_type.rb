class AddAttendanceBooleanToAssignmentType < ActiveRecord::Migration
  def change
  	add_column :assignment_types, :is_attendance, :boolean
  end
end
