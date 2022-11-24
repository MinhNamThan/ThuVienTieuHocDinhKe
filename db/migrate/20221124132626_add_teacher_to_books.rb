class AddTeacherToBooks < ActiveRecord::Migration[6.1]
  def change
    add_reference :books, :user, null: true
  end
end
