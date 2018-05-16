class Book < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }
  has_and_belongs_to_many :stores
  belongs_to  :user
  belongs_to  :category
  has_many    :reviews
  has_attached_file :book_img, styles: { :book_index => "250x350>", :book_show => "325x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :book_img, content_type: /\Aimage\/.*\z/
end
