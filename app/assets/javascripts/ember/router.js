//------------------------------------------//
//-                 ROUTES                 -//
//------------------------------------------//


Qa.Router.map(function() {
  this.resource       ('questions',  { path: 'questions' },        function() {
    this.route        ('new',        { path: 'new' });
    this.route        ('show',       { path: ':question_id'});
  });
});

//------------------------------------------//
//-              INDEX ROUTE               -//
//------------------------------------------//

Qa.IndexRoute = Ember.Route.extend({
  redirect: function() {
    this.transitionTo('questions');
  }
});


//------------------------------------------//
//-            QUESTIONS ROUTE             -//
//------------------------------------------//

Qa.QuestionsRoute = Ember.Route.extend({
  model: function() {
    return Qa.Question.find();
  }
});


//------------------------------------------//
//-            QUESTION ROUTE             -//
//------------------------------------------//

Qa.QustionsShowRoute = Ember.Route.extend({
  model: function(params) {
    return Qa.Question.find(params.questions_id);
  }
});

//------------------------------------------//
//-           LIBRARY NEW ROUTE            -//
//------------------------------------------//

Qa.QuestionsNewRoute = Ember.Route.extend({
  model: function() {
    return Qa.Question.createRecord();
  }
});
