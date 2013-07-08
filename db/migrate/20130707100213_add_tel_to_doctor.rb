class AddTelToDoctor < ActiveRecord::Migration
  def change
    add_column :doctors, :tel, :string
  end
end
