class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :text
      t.references :commentable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
