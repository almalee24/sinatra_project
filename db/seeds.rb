User.destroy_all
Post.destroy_all

User.create(name: Faker::Name.name, email: Faker::Internet.email, username: Faker::Internet.username(specifier: 5..8), bio: Faker::Quote.famous_last_words )
User.create(name: Faker::Name.name, email: Faker::Internet.email, username: Faker::Internet.username(specifier: 5..8), bio: Faker::Quote.famous_last_words )
User.create(name: Faker::Name.name, email: Faker::Internet.email, username: Faker::Internet.username(specifier: 5..8), bio: Faker::Quote.famous_last_words )
User.create(name: Faker::Name.name, email: Faker::Internet.email, username: Faker::Internet.username(specifier: 5..8), bio: Faker::Quote.famous_last_words )
User.create(name: Faker::Name.name, email: Faker::Internet.email, username: Faker::Internet.username(specifier: 5..8), bio: Faker::Quote.famous_last_words )
User.create(name: Faker::Name.name, email: Faker::Internet.email, username: Faker::Internet.username(specifier: 5..8), bio: Faker::Quote.famous_last_words )



6.times do 
    Post.create(comments: Faker::Hipster.paragraph_by_chars(characters: 256, supplemental: false), user_id: 1)
    Post.create(comments: Faker::Hipster.paragraph_by_chars(characters: 256, supplemental: false), user_id: 2)
    Post.create(comments: Faker::Hipster.paragraph_by_chars(characters: 256, supplemental: false), user_id: 3)
    Post.create(comments: Faker::Hipster.paragraph_by_chars(characters: 256, supplemental: false), user_id: 4)
    Post.create(comments: Faker::Hipster.paragraph_by_chars(characters: 256, supplemental: false), user_id: 5)
    Post.create(comments: Faker::Hipster.paragraph_by_chars(characters: 256, supplemental: false), user_id: 6)
end