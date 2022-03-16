class UpdateDatatypesLatitudeAndLongitude < ActiveRecord::Migration[7.0]
  def change
    change_column :contacts, :latitude, "numeric USING CAST(latitude AS numeric)"
    change_column :contacts, :latitude, :decimal, precision: 9, scale: 2

    change_column :contacts, :longitude, "numeric USING CAST(longitude AS numeric)"
    change_column :contacts, :longitude, :decimal, precision: 9, scale: 2
  end
end
