class AddColumnToEvents < ActiveRecord::Migration
  def change
    add_column :events, :city, :string
    add_column :events, :state, :string
    add_column :events, :zipcode, :string
  end
end
