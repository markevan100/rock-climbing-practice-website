class CreatePractices < ActiveRecord::Migration[5.2]
  def change
    create_table :practices do |t|
      t.string :date
      t.text :plan
      t.string :author
      t.string :approval_1, :default => "none"
      t.string :approval_2, :default => "none"
      t.timestamps
    end
  end
end
