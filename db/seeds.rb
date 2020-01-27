# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



3.times do |topic|
    Topic.create!(
        title: "#{topic}"
    )
end 

puts('created 3 topics')



10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?",
        topic_id: Topic.last.id
        
    )
end

puts('10 blogs created')
# byebug

5.times do |skills|
    Skill.create!(
        title: "Rails #{skills}",
        percent_utilized: 20
    )
end

puts('5 blogs created')

8.times do |portfolio|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio}" ,
        subtitle: "Ruby on Rails" ,
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer commodo tellus quis tempor porttitor. Etiam et dictum nunc. Fusce dapibus posuere vehicula. Vivamus ultrices eros sed condimentum gravida. Sed ornare lobortis lacus, quis vulputate velit pulvinar vitae. Donec sit amet nisl id libero elementum ullamcorper. Phasellus eleifend vulputate diam at sagittis. Mauris fringilla mattis lorem at aliquet.",
        main_image: "https://place-hold.it/600x400",
        thumb_image: "https://place-hold.it/350x200" 
    )
end
1.times do |portfolio|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio}" ,
        subtitle: "Angular" ,
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

puts('3 echnologies created')