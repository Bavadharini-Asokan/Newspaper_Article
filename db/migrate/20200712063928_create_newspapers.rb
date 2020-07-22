class CreateNewspapers < ActiveRecord::Migration[6.0]
  def change
    create_table :newspapers do |t|
      has_many :articles
      t.text :title
      t.timestamps
    end
  end
end
