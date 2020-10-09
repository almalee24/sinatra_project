User.destroy_all
Post.destroy_all

User.create(name: Faker::Name.name, email: Faker::Internet.email, username: Faker::Internet.username(specifier: 5..8), bio: Faker::Quote.famous_last_words, password: Faker::Internet.password)
User.create(name: Faker::Name.name, email: Faker::Internet.email, username: Faker::Internet.username(specifier: 5..8), bio: Faker::Quote.famous_last_words, password: Faker::Internet.password)
User.create(name: Faker::Name.name, email: Faker::Internet.email, username: Faker::Internet.username(specifier: 5..8), bio: Faker::Quote.famous_last_words, password: Faker::Internet.password)
User.create(name: Faker::Name.name, email: Faker::Internet.email, username: Faker::Internet.username(specifier: 5..8), bio: Faker::Quote.famous_last_words, password: Faker::Internet.password)
User.create(name: Faker::Name.name, email: Faker::Internet.email, username: Faker::Internet.username(specifier: 5..8), bio: Faker::Quote.famous_last_words, password: Faker::Internet.password)



6.times do 
    Post.create(body: Faker::Hipster.paragraph_by_chars(characters: 256, supplemental: false), user_id: 1)
    Post.create(body: Faker::Hipster.paragraph_by_chars(characters: 256, supplemental: false), user_id: 2)
    Post.create(body: Faker::Hipster.paragraph_by_chars(characters: 256, supplemental: false), user_id: 3)
    Post.create(body: Faker::Hipster.paragraph_by_chars(characters: 256, supplemental: false), user_id: 4)
    Post.create(body: Faker::Hipster.paragraph_by_chars(characters: 256, supplemental: false), user_id: 5)
    Post.create(body: Faker::Hipster.paragraph_by_chars(characters: 256, supplemental: false), user_id: 6)
end