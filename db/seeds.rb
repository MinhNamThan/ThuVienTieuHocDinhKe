# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ClassUser.create!(name: "6A1", grade: "6")
User.create!(name: "Thay Trong Beo",
            email: "thanminhnam@gmail.com",
            password:"123456",
            password_confirmation: "123456",
            Tk: "admin123456",role: 0, class_user_id: 1)
Access.create!(num_access: 0)
Category.create!(name: "Sách giáo khoa")
Category.create!(name: "Văn học nước ngoài")
Category.create!(name: "Sách tham khảo")

Subject.create!(name: "Toán học")
Subject.create!(name: "Ngữ văn")
Subject.create!(name: "Tiếng Anh")
Subject.create!(name: "Giáo dục thể chất")
Subject.create!(name: "Lịch sử")
Subject.create!(name: "Địa lí")
Subject.create!(name: "Vật lí")
Subject.create!(name: "Hóa học")
Subject.create!(name: "Sinh học")
Subject.create!(name: "Tin học")
Subject.create!(name: "Công nghệ")