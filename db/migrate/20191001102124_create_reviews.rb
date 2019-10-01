class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :text
      t.string :image
      t.references :user,         foregin_key: true
      t.references :game,         foregin_key: true
      t.timestamps
    end
  end
end
