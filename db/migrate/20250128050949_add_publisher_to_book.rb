class AddPublisherToBook < ActiveRecord::Migration[8.0]
  def change
    # add_column :tasks, :publisher, :string # This line is commented out because the column already exists
    return if index_exists?(:tasks, :publisher)

    add_index :tasks, :publisher
  end
end
