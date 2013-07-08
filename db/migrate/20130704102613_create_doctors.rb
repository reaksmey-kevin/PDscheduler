class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :symptom_discussion

      t.timestamps
    end
  end
end
