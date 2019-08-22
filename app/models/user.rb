class User < ApplicationRecord
  before_save { self.mail.downcase! }
  has_secure_password
  validates :name, presence: true, length: { maximum: 200 }
  validates :postcode, presence: true, format: { with: /\A\d{3}-\d{4}\z/ }
  validates :address, presence: true, length: { maximum: 200 }
  validates :tel, presence: true, format: { with: /\A\d{2,5}-\d{1,4}-\d{4}\z/}
  validates :mail, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
end
