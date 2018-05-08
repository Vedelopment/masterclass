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
    [{"title":"Cotoneaster ×watereri Exell","sm_thumb":"","lg_thumb":""},
    {"title":"Ceanothus parvifolius (S. Watson) Trel.","sm_thumb":"","lg_thumb":""},
    {"title":"Rosa yainacensis Greene","sm_thumb":"","lg_thumb":""},
    {"title":"Acacia omalophylla A. Cunn. ex Benth.","sm_thumb":"","lg_thumb":""},
    {"title":"Diapensia L.","sm_thumb":"","lg_thumb":""},
    {"title":"Sedum kamtschaticum Fisch. & C.A. Mey.","sm_thumb":"","lg_thumb":""},
    {"title":"Cleome rutidosperma DC.","sm_thumb":"","lg_thumb":""},
    {"title":"Echinocereus viridiflorus Engelm. var. russanthus (D. Weniger) A.D. Zimmerman","sm_thumb":"","lg_thumb":""},
    {"title":"Elymus interruptus Buckley","sm_thumb":"","lg_thumb":""},
    {"title":"Baileya pleniradiata Harv. & A. Gray ex A. Gray","sm_thumb":"","lg_thumb":""}]
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
    [{"first_name":"Lannie","last_name":"Cogin","course": Course.first},
    {"first_name":"Melina","last_name":"Odom","course": Course.second},
    {"first_name":"Dana","last_name":"Minmagh","course": Course.third},
    {"first_name":"Gaston","last_name":"Heavens"},
    {"first_name":"Braden","last_name":"Bagnall"},
    {"first_name":"Vivie","last_name":"Sinkins"},
    {"first_name":"Bren","last_name":"Bennedick"},
    {"first_name":"Taddeusz","last_name":"MacKnockiter"},
    {"first_name":"Tamiko","last_name":"Schneidau"},
    {"first_name":"Merilyn","last_name":"Eydel"}]
Instructor.create(instructor_data)

chapter_data =
    [{"number":1,"title":"Dromedary camel","course": Course.first},
    {"number":2,"title":"Gray langur","course": Course.first},
    {"number":3,"title":"Uinta ground squirrel","course": Course.first},
    {"number":4,"title":"Owl, madagascar hawk","course": Course.first},
    {"number":5,"title":"Capuchin, white-fronted","course": Course.first},
    {"number":6,"title":"Red-billed toucan","course": Course.first},
    {"number":7,"title":"Squirrel, pine","course": Course.first},
    {"number":8,"title":"Denham's bustard","course": Course.first},
    {"number":9,"title":"Sacred ibis","course": Course.first},
    {"number":10,"title":"Helmeted guinea fowl","course": Course.first}]
Chapter.create(chapter_data)
