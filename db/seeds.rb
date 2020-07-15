User.create!(
    email: "Avi@test.com",
    password: "123456",
    password_confirmation: "123456",
    name: "Admin User",
    roles: "site_admin"
)

puts "1 Admin user created"


User.create!(
    email: "Amit@test.com",
    password: "123456",
    password_confirmation: "123456",
    name: "Regular User"
)

puts "1 regular user created"


    Topic.create!(
        title: "Food Tech"
    )
    Topic.create!(
        title: "Coding Tech"
    )


puts('created 2 topics')



3.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?",
        topic_id: Topic.last.id
        
    )
end

puts('3 blogs created')
# byebug


    Skill.create!(
        title: "Ruby on Rails",
        percent_utilized: 80
    )
    Skill.create!(
        title: "React.js",
        percent_utilized: 75
    )
    Skill.create!(
        title: "Javascript",
        percent_utilized: 80
    )
    Skill.create!(
        title: "Ruby",
        percent_utilized: 74
    )
    Skill.create!(
        title: "Python",
        percent_utilized: 50
    )


puts('5 skills created')

4.times do |portfolio|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio}" ,
        subtitle: "Ruby on Rails" ,
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer commodo tellus quis tempor porttitor. Etiam et dictum nunc. Fusce dapibus posuere vehicula. Vivamus ultrices eros sed condimentum gravida. Sed ornare lobortis lacus, quis vulputate velit pulvinar vitae. Donec sit amet nisl id libero elementum ullamcorper. Phasellus eleifend vulputate diam at sagittis. Mauris fringilla mattis lorem at aliquet.",
        main_image: "https://place-hold.it/600x400",
        thumb_image: "https://place-hold.it/350x200" 
    )
end


puts('9 portfolio created')


3.times do |tech|
        Portfolio.last.technologies.create!(
            name: "Technology #{tech}"
        )
end

puts('3 technologies created')