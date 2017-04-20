class AddColumnsToMatches < ActiveRecord::Migration[5.0]
  def change
    add_column :matches, :first_student_id, :string
    add_column :matches, :second_student_id, :string
    add_column :users, :name, :string
  end
end
