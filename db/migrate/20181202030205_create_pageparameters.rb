class CreatePageparameters < ActiveRecord::Migration[5.1]
  def change
    create_table :pageparameters do |t|
      t.string :title
      t.string :notice

      t.timestamps
    end
  end
end
