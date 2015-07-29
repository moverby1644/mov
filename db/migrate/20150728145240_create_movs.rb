class CreateMovs < ActiveRecord::Migration
  def change
    create_table :movs do |t|
      t.string :url
      t.string :title2
      t.string :detail

      t.timestamps null: false
    end
  end
end
