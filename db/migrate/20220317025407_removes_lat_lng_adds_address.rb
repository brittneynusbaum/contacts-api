class RemovesLatLngAddsAddress < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :address, :string
    change_column :contacts, :latitude, :float
    change_column :contacts, :longitude, :float
  end
end
