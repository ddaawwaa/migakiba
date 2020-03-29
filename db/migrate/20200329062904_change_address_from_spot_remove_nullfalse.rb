class ChangeAddressFromSpotRemoveNullfalse < ActiveRecord::Migration[5.2]
  def change
    change_column_null :spots, :address, true
  end
end
