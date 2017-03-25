# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  user = FactoryGirl.create(:user)
    rand(4..10).times do
      user.notes.create!(
        title: Faker::Book.title,
        body: Faker::Lorem.sentences
        )
    end
end

notes = Note.all
notes.each do |note|
  rand(1..3).times.each do
    tags = FactoryGirl.create(:tag)
    note.tags << tags
  end

end
