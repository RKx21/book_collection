class CreateUserBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :user_books do |t|
      t.string :title
      t.string :author
      t.decimal :price, precision: 8, scale: 2
      t.date :published_date

      t.timestamps
    end
  end
end
