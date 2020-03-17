class RenameFausetNumToFaucetNum < ActiveRecord::Migration[5.2]
  def change
    rename_column :spots, :fauset_num, :faucet_num
  end
end
