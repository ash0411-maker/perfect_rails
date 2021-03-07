class Book < ApplicationRecord
  scope :costly, -> {where("price > ?", 3000)}
  scope :find_price, -> (price){find_by(price: price)}
  scope :wiritten_about, -> (theme) {where("name like ?","%#{theme}%")}

  belongs_to :publisher
  has_many :book_authors
  has_many :authors, through: :book_authors

  validates: name, presence: truer
  validates: name, length: {maximim: 25}
  validates: price, numericality: { greater_than_or_equal_to: 0 }
end
