class AddIsReadToEmails < ActiveRecord::Migration[7.0]
  def change
    add_column :emails, :isRead, :boolean
  end
end
