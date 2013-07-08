class AddSexToDoctor < ActiveRecord::Migration
  def change
    add_column :doctors, :sex, :string
  end
end
