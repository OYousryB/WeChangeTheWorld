class AddTicketsCore < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.integer :type
      t.integer :state
      t.integer :status
      t.integer :priority
      t.string :name
      t.text :description
      t.timestamps
    end

    create_table :sub_tickets do |t|
      t.references :ticket, index: true
      t.integer :referenced_ticket
      t.integer :type
      t.timestamps
    end
  end
end
