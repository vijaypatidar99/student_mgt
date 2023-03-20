# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

for i in 1..50
  Employee.create(first_name: "employee#{i}", last_name: "abc#{i}", email: "employee#{i}@gmail.com", mob_number: "9982373#{i}")
end

# for i in 1..50
#   Post.create(title: "hii this is my first post ", student_id: i)
#   Post.create(title: "hii this is my second post ", student_id: i)
#   Post.create(title: "hii this is third post ", student_id: i)
#   Post.create(title: "hii this is my fourth post ", student_id: i)
# end

# for i in 3..50
#     Comment.create(title:"hii this is my first comment ", post_id:i)
#     Comment.create(title:"hii this is my second comment ", post_id:i)
#     Comment.create(title:"hii this is my third comment ", post_id:i)
#     Comment.create(title:"hii this is my fourth comment ", post_id:i)
#     Comment.create(title:"hii this is my fifth comment ", post_id:i)
#     Comment.create(title:"hii this is my sixth comment ", post_id:i)
#     Comment.create(title:"hii this is my seventh comment ", post_id:i)


# end
