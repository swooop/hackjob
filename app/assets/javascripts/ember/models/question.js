//------------------------------------------//
//-           QUESTION  MODEL              -//
//------------------------------------------//

Qa.Question = DS.Model.extend({
  name:               DS.attr('string'),
  email:              DS.attr('string'),
  questionline:       DS.attr('string'),
  answers:            DS.hasMany('Qa.Answer')
});