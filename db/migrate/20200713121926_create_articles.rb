class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
t.integer :newsid
t.string :title
t.text :description
      t.timestamps
    end
  end
end
