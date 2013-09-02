//------------------------------------------//
//-         NEW ANSWER CONTROLLER          -//
//------------------------------------------//

Qa.AnswersNewController = Ember.ObjectController.extend({
  save: function() {
    this.get('store').commit();
    this.get('target').transitionTo('index');
  },
  cancelAction: function() {
    var content = this.get('model');
    if(content.get('isDirty')) {
    content.rollback();
    this.get('target').transitionTo('index');
    }
  }
});

