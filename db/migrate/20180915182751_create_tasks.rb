class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title 
      t.string :description 
      t.string :status
      t.references :project 
      t.timestamps
    end
  end
end
