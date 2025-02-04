# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Task.create!([
    {title: "Harry Potter", author: "J.K. Rowling", price: 20.0, published_date: "2021-10-01"},
    {title: "The Hobbit", author: "J.R.R. Tolkien", price: 15.0, published_date: "2021-10-01"},
    {title: "The Great Gatsby", author: "F. Scott Fitzgerald", price: 10.0, published_date: "2021-10-01"},
    {title: "To Kill a Mockingbird", author: "Harper Lee", price: 12.0, published_date: "2021-10-01"},
    {title: "1984", author: "George Orwell", price: 8.0, published_date: "2021-10-01"},
])
