//------------------------------------------//
//-             ANSWER MODEL               -//
//------------------------------------------//

Qa.Answer = DS.Model.extend({
  answer1:         DS.attr('string'),
  answer2:         DS.attr('string'),
  vote:               DS.attr('number'),
  question:           DS.belongsTo('Qa.Question')
});