# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AssessmentSeason.create(name: "2021", start_date: Date.today, end_date: Date.today+7)

User.create(firstname: "Touhidul",
  lastname: "Islam",
  department: "Technology Services",
  job_title: "Senior Infrastructure Engineer",
  email: "touhidul.islam@justice.gov.uk",
  password: "Password1",
  is_admin: false)

Role.create(name: "Infrastructure Engineer")
role2 = Role.create(name: "Senior Infrastructure Engineer")
Role.create(name: "Lead Infrastructure Engineer")

skill1 = Skill.create(name: "Coding & scripting", definition: "You understand the limitations of software / product technology and why coding is important. You can prototype code, but you won’t necessarily have to make production-ready code. You can talk to developers and know when to switch code. You understand security, accessibility and version control.")
skill2 = Skill.create(name: "IT infrastructure", definition: "You can support, design and implement infrastructure technologies and solutions such as: computing, storage, networking, physical infrastructure, software, commercial off-the-shelf (COTS) and open source packages and solutions, and virtual and cloud computing, including IaaS, PaaS and SaaS.")
skill3 = Skill.create(name: "Information security", definition: "You can maintain the security, confidentiality and integrity of information systems through compliance with relevant legislation and regulations. You can design, implement and operate controls and management strategies to allow this.")

level1 = SkillLevel.create(name: "Awareness")
level2 = SkillLevel.create(name: "Practitioner")
level3 = SkillLevel.create(name: "Working")

role2.role_skills.create(skill: skill1, skill_level: level1, skill_level_definition: "You understand how the internet works and know which tools and software are available to be utilised and are currently in practice.")
role2.role_skills.create(skill: skill2, skill_level: level2, skill_level_definition: "You can design, implement, administer and support infrastructure technologies, solutions and services such as: computing, storage, networking, physical infrastructure, software, COTS and open source packages and solutions, and virtual and cloud computing, including IaaS, PaaS and SaaS.")
role2.role_skills.create(skill: skill3, skill_level: level3, skill_level_definition: "You understand information security and the types of security controls that can be used to mitigate security threats within solutions and services.")

