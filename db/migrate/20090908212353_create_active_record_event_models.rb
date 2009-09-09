class CreateActiveRecordEventModels < ActiveRecord::Migration
  def self.up
    create_table :events, :force => true do |t|
      t.string :ical
    end
  end

  def self.down
    drop_table :events
  end
end
