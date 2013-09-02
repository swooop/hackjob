# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.destroy_all

questions = Question.create([
  {name: "Toby", email: "toby.sims@gmail.com", questionline: "What shall I wear tonight?"},
  {name: "Soner", email: "sonerozenc@gmail.com", questionline: "What shall I eat tonight?"},
  {name: "Kim", email: "kim.szelong@gmail.com", questionline: "What movie shall I see tonight?"}
]);

answers = Answer.create([
  {answer1: "Black dress", answer2: "Green dress", vote: 0, question: questions[0]},
  {answer1: "Hawksmoor", answer2: "Dishoom", vote: 0, question: questions[1]},
  {answer1: "Star Trek", answer2: "Man of Steel", vote: 0, question: questions[2]},
]);