require 'faker'

# Faker::Book.title #=> "The Odd Sister"
# Faker::Book.author #=> "Alysha Olsen"


User.destroy_all
Borrowing.destroy_all

chris = User.create(username: 'chris', email: 'chris@example.com', password: '123456')
simon = User.create(username: 'simon', email: 'simon@example.com', password: '123456')
river = User.create(username: 'river', email: 'river@example.com', password: '123456')
doc = User.create(username: 'doc', email: 'doc@example.com', password: '123456')

borrowing1 = Borrowing.create(book_title: Faker::Book.title, book_author: Faker::Book.author, book_isbn: 123456, borrowed_on: Faker::Date.between(2.days.ago, Date.today), borrowed_by: Faker::Name.name, owner: chris)
borrowing2 = Borrowing.create(book_title: Faker::Book.title, book_author: Faker::Book.author, book_isbn: 123456, borrowed_on: Faker::Date.between(2.days.ago, Date.today), borrowed_by: Faker::Name.name, owner: simon)
borrowing3 = Borrowing.create(book_title: Faker::Book.title, book_author: Faker::Book.author, book_isbn: 123456, borrowed_on: Faker::Date.between(2.days.ago, Date.today), borrowed_by: Faker::Name.name, owner: chris)
borrowing4 = Borrowing.create(book_title: Faker::Book.title, book_author: Faker::Book.author, book_isbn: 123456, borrowed_on: Faker::Date.between(2.days.ago, Date.today), borrowed_by: Faker::Name.name, owner: river )
borrowing5 = Borrowing.create(book_title: Faker::Book.title, book_author: Faker::Book.author, book_isbn: 123456, borrowed_on: Faker::Date.between(2.days.ago, Date.today), borrowed_by: Faker::Name.name, owner: river)
borrowing6 = Borrowing.create(book_title: Faker::Book.title, book_author: Faker::Book.author, book_isbn: 123456, borrowed_on: Faker::Date.between(2.days.ago, Date.today), borrowed_by: Faker::Name.name, owner: chris)
borrowing7 = Borrowing.create(book_title: Faker::Book.title, book_author: Faker::Book.author, book_isbn: 123456, borrowed_on: Faker::Date.between(2.days.ago, Date.today), borrowed_by: Faker::Name.name, owner: doc)
