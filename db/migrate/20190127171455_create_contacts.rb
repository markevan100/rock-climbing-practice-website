class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :title
      t.string :name
      t.string :email
      t.string :cell
    end
  end
end
