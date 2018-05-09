# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.destroy_all
Instructor.destroy_all
Chapter.destroy_all
User.destroy_all

course_data =
    [
        {
            "title":"Space Exploration",
            "sm_thumb":"",
            "lg_thumb":"",
            "cm_intro_title":"28+ Lessons",
            "cm_intro_desc":"In 28+ lessons, the former commander of the International Space Station teaches you the science of space exploration and what the future holds for it.",
            "cm_excl_title":"100% Exclusive",
            "cm_excl_desc":"Enroll today and get access to video lessons and exclusive class materials. Learn at your own pace on mobile or desktop.",
            "cm_less_title":"Explore the unknown",
            "cm_less_desc":"Impossible things happen. At age nine, Chris Hadfield knew he wanted to go to space. He eventually went there three times, becoming a commander of the International Space Station. In his MasterClass, Chris teaches you what it takes to explore space and what the future holds for humans in the final frontier. Learn about the science of space travel, life as an astronaut, and how flying in space will forever change the way you think about living on Earth.",
        },
        {"title":"Research Associate","sm_thumb":"http://dummyimage.com/505x308.jpg/dddddd/000000","lg_thumb":"http://dummyimage.com/505x308.jpg/ff4444/ffffff"},
        {"title":"Financial Analyst","sm_thumb":"http://dummyimage.com/505x308.jpg/dddddd/000000","lg_thumb":"http://dummyimage.com/505x308.jpg/dddddd/000000"},
        {"title":"Database Administrator II","sm_thumb":"http://dummyimage.com/505x308.jpg/5fa2dd/ffffff","lg_thumb":"http://dummyimage.com/505x308.jpg/cc0000/ffffff"},
        {"title":"Senior Quality Engineer","sm_thumb":"http://dummyimage.com/505x308.jpg/5fa2dd/ffffff","lg_thumb":"http://dummyimage.com/505x308.jpg/ff4444/ffffff"},
        {"title":"Human Resources Assistant II","sm_thumb":"http://dummyimage.com/505x308.jpg/5fa2dd/ffffff","lg_thumb":"http://dummyimage.com/505x308.jpg/ff4444/ffffff"},
        {"title":"Sales Associate","sm_thumb":"http://dummyimage.com/505x308.jpg/cc0000/ffffff","lg_thumb":"http://dummyimage.com/505x308.jpg/cc0000/ffffff"},
        {"title":"Graphic Designer","sm_thumb":"http://dummyimage.com/505x308.jpg/cc0000/ffffff","lg_thumb":"http://dummyimage.com/505x308.jpg/cc0000/ffffff"},
        {"title":"Web Designer II","sm_thumb":"http://dummyimage.com/505x308.jpg/5fa2dd/ffffff","lg_thumb":"http://dummyimage.com/505x308.jpg/5fa2dd/ffffff"},
        {"title":"Desktop Support Technician","sm_thumb":"http://dummyimage.com/505x308.jpg/ff4444/ffffff","lg_thumb":"http://dummyimage.com/505x308.jpg/ff4444/ffffff"}]
Course.create(course_data)

user_data =
    [{"first_name":"Cassie","last_name":"Stranger","email":"cstranger0@msn.com","phone":"911-380-6986","all_access":false},
    {"first_name":"Baillie","last_name":"Bothams","email":"bbothams1@time.com","phone":"349-905-4613","all_access":true},
    {"first_name":"Neill","last_name":"Demsey","email":"ndemsey2@prlog.org","phone":"899-905-5096","all_access":true},
    {"first_name":"Rosella","last_name":"Vader","email":"rvader3@spotify.com","phone":"290-249-1900","all_access":true},
    {"first_name":"Martin","last_name":"Crevagh","email":"mcrevagh4@hibu.com","phone":"214-983-6319","all_access":false},
    {"first_name":"Otha","last_name":"Logsdail","email":"ologsdail5@hugedomains.com","phone":"565-298-6295","all_access":false},
    {"first_name":"Julee","last_name":"Treby","email":"jtreby6@sun.com","phone":"130-674-6921","all_access":false},
    {"first_name":"Barrett","last_name":"Hurdman","email":"bhurdman7@aboutads.info","phone":"377-937-0155","all_access":true},
    {"first_name":"Trenna","last_name":"Tame","email":"ttame8@fda.gov","phone":"517-274-9268","all_access":false},
    {"first_name":"Clara","last_name":"Scrivner","email":"cscrivner9@comsenz.com","phone":"800-950-0514","all_access":false}]
User.create(user_data)

instructor_data =
    [{"first_name":"Chris","last_name":"Hadfield","course": Course.first},
    {"first_name":"Melina","last_name":"Odom","course": Course.second},
    {"first_name":"Dana","last_name":"Minmagh","course": Course.third},
    {"first_name":"Gaston","last_name":"Heavens","course": Course.find(4)},
    {"first_name":"Braden","last_name":"Bagnall","course": Course.find(5)},
    {"first_name":"Vivie","last_name":"Sinkins","course": Course.find(6)},
    {"first_name":"Bren","last_name":"Bennedick","course": Course.find(7)},
    {"first_name":"Taddeusz","last_name":"MacKnockiter","course": Course.find(8)},
    {"first_name":"Tamiko","last_name":"Schneidau","course": Course.find(9)},
    {"first_name":"Merilyn","last_name":"Eydel","course": Course.find(10)}]
Instructor.create(instructor_data)

chapter_data =
    [{"number":1,"title":"Dromedary camel","desc": "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam","number": 1,"course": Course.first},
    {"number":2,"title":"Gray langur","desc": "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam","number": 2,"course": Course.first},
    {"number":3,"title":"Uinta ground squirrel","desc": "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam","number": 3,"course": Course.first},
    {"number":4,"title":"Owl, madagascar hawk","desc": "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam","number": 4,"course": Course.first},
    {"number":5,"title":"Capuchin, white-fronted","desc": "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam","number": 5,"course": Course.first},
    {"number":6,"title":"Red-billed toucan","desc": "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam","number": 6,"course": Course.first},
    {"number":7,"title":"Squirrel, pine","desc": "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam","number": 7,"course": Course.first},
    {"number":8,"title":"Denham's bustard","desc": "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam","number": 8,"course": Course.first},
    {"number":9,"title":"Sacred ibis","desc": "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam","number": 9,"course": Course.first},
    {"number":10,"title":"Helmeted guinea fowl","desc": "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam","number": 10,"course": Course.first}]
Chapter.create(chapter_data)

first = Course.first
second = Course.second

[first, second].each do |recommender|
	Course.all.each do |recommendee|
		unless recommendee == recommender
			Recommendation.create ({
					recommender_id: recommender.id,
					recommendee_id: recommendee.id
				})
		end
	end
end
