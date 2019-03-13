class CreateBrunches < ActiveRecord::Migration[5.2]
  def change
    create_table :brunches do |t|
      t.string :name
      t.string :city
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
