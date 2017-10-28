require 'bcrypt'

class User < ApplicationRecord
  include BCrypt

  has_many :borrowings, foreign_key: :owner_id

  validates :username, :email, presence: true, uniqueness: true
  validates :password, :presence => true

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(plain_text_password)
    @raw_password = plain_text_password
    @password = Password.create(plain_text_password)
    self.hashed_password = @password
  end

  def authenticate(plain_text_password)
    self.password == plain_text_password
  end

  def validate_password
    if @raw_password.nil?
      errors.add(:password, "is required")
    elsif @raw_password.length < 6
      errors.add(:password, "must be 6 characters or more")
    end
  end
end
