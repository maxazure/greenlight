class CreateGifdays < ActiveRecord::Migration[5.1]
  def change
    create_table :gifdays do |t|
      t.string :title
      t.string :body
      t.integer :daynumber
      t.string :companyname

      t.timestamps
    end
  end
end
