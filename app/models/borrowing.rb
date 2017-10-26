class Borrowing < ApplicationRecord
  # Remember to create a migration!
  belongs_to :owner, class_name: :User
end
