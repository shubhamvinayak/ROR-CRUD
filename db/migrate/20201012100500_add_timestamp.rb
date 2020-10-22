class AddTimestamp < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :updated_at, :datetime
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
