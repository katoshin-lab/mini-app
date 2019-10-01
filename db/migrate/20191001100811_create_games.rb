class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :title,         null: false
      t.text :content,         null: false
      t.string :image
      t.references :user,       foregin_key: true
      t.timestamps
    end
  end
end
