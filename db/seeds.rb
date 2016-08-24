# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
r1 = Role.create({name: "ADMIN", description: "Can perform any CRUD operation on any resource"})
r2 = Role.create({name: "LEADER", description: "Can view tasks of simple users of team that him is leader."})
r3 = Role.create({name: "SIMPLE", description: "Can read, create, edit, exçlude and view yours tasks."})

u1 = User.create({login: "admin", email: "admin@dailymanager.com", password: "123456", password_confirmation: "123456", role_id: r1.id})
u2 = User.create({login: "dyego", email: "dyego@dailymanager.com", password: "123456", password_confirmation: "123456", role_id: r2.id})
u3 = User.create({login: "mayara", email: "mayara@dailymanager.com", password: "123456", password_confirmation: "123456", role_id: r3.id})
u4 = User.create({login: "renato", email: "renato@dailymanager.com", password: "123456", password_confirmation: "123456", role_id: r3.id})
u5 = User.create({login: "bruno", email: "bruno@dailymanager.com", password: "123456", password_confirmation: "123456", role_id: r3.id})
u6 = User.create({login: "gabriel", email: "gabriel@dailymanager.com", password: "123456", password_confirmation: "123456", role_id: r3.id})
u7 = User.create({login: "mariana", email: "mariana@dailymanager.com", password: "123456", password_confirmation: "123456", role_id: r2.id})
u8 = User.create({login: "pedro", email: "pedro@dailymanager.com", password: "123456", password_confirmation: "123456", role_id: r3.id})
u9 = User.create({login: "carol", email: "carol@dailymanager.com", password: "123456", password_confirmation: "123456", role_id: r3.id})
u10 = User.create({login: "ana", email: "ana@dailymanager.com", password: "123456", password_confirmation: "123456", role_id: r3.id})
u11 = User.create({login: "anderson", email: "anderson@dailymanager.com", password: "123456", password_confirmation: "123456", role_id: r3.id})

t1 = Team.create({name: "Analysts"})
t2 = Team.create({name: "Developers"})

tm1 = TeamMember.create({user_id: u2.id, team_id: t1.id,is_leader: 1})
tm1 = TeamMember.create({user_id: u2.id, team_id: t2.id,is_leader: 1})
tm1 = TeamMember.create({user_id: u3.id, team_id: t1.id,is_leader: 0})
tm1 = TeamMember.create({user_id: u4.id, team_id: t1.id,is_leader: 0})
tm1 = TeamMember.create({user_id: u5.id, team_id: t1.id,is_leader: 0})
tm1 = TeamMember.create({user_id: u6.id, team_id: t1.id,is_leader: 0})
tm1 = TeamMember.create({user_id: u7.id, team_id: t2.id,is_leader: 1})
tm1 = TeamMember.create({user_id: u8.id, team_id: t2.id,is_leader: 0})
tm1 = TeamMember.create({user_id: u9.id, team_id: t2.id,is_leader: 0})
tm1 = TeamMember.create({user_id: u10.id, team_id: t2.id,is_leader: 0})
tm1 = TeamMember.create({user_id: u11.id, team_id: t2.id,is_leader: 0})

tk1 = Task.create({yesterday:"Aliquam bibendum dui ut mauris aliquam, vitae tempus lacus pretium. Suspendisse potenti. Aenean sed diam est. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.",today:"Curabitur quis dui at odio luctus facilisis tincidunt id diam. Donec lobortis, libero vitae lobortis sodales, ipsum dolor pharetra urna, in fermentum neque felis sit amet massa. Nunc tempus sit amet magna vel suscipit. Quisque ultricies quam a suscipit placerat. Duis fringilla sed nunc sed venenatis. Praesent tempor tortor vel turpis vestibulum efficitur ut vitae mi.",impediments:"Nulla elementum justo enim, ac scelerisque nisl imperdiet id.",task_date:Date.today,user_id:u3})
tk2 = Task.create({yesterday:"Aenean ultricies, lacus a aliquam blandit, diam arcu sagittis justo, eget faucibus mauris justo non nunc. In eget fringilla erat, nec facilisis ipsum.",today:"Nam scelerisque, turpis vel molestie porta, turpis neque feugiat arcu, vel posuere est nisl vitae mauris. Donec sed cursus enim. In quis semper dolor, vel tincidunt orci. Proin vel velit massa.",impediments:"Mauris at pharetra mi, id sagittis odio. Donec id neque erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;	",task_date:Date.today,user_id:u4})
tk3 = Task.create({yesterday:"Vivamus semper purus in maximus eleifend. Aliquam erat volutpat.",today:"Maecenas vehicula arcu ut quam ornare elementum. Aenean convallis congue dictum.",impediments:"Nunc ornare pulvinar eleifend. Curabitur tristique tincidunt magna et pellentesque.",task_date:Date.today,user_id:u8})
tk4 = Task.create({yesterday:"Nam volutpat molestie mattis. Aliquam at diam ornare, tincidunt libero a, pharetra ex.",today:"Vivamus rutrum, urna id porta rhoncus, nisl lectus semper erat, ut vehicula urna dui nec mauris.",impediments:"Pellentesque justo nulla, gravida eu sollicitudin non, porttitor at libero.",task_date:Date.today,user_id:u9})