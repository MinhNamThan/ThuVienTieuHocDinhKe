class CreateUserAccesses < ActiveRecord::Migration[6.1]
  def change
    create_table :user_accesses do |t|
      t.bigint   :num_access, :default => 0
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
