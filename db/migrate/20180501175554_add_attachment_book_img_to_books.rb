class AddAttachmentBookImgToBooks < ActiveRecord::Migration[5.2]
  def self.up
    change_table :books do |t|
      t.attachment :book_img
    end
  end

  def self.down
    remove_attachment :books, :book_img
  end
end
