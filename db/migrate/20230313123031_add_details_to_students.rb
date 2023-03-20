class AddDetailsToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :address, :string
  end
end
