class AddAttachmentImageToPlugs < ActiveRecord::Migration
  def self.up
    change_table :plugs do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :plugs, :image
  end
end
