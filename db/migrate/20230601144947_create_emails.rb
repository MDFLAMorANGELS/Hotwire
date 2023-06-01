class CreateEmails < ActiveRecord::Migration[7.0]
  def change
    create_table :emails do |t|
      t.string :object
      t.string :author
      t.string :body

      t.timestamps
    end
  end
end
