class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.string :describe
      t.string :link
      
      t.timestamps
    end
  end
end
