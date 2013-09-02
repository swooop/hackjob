Qa.Store = DS.Store.extend({
  revision:   13,
  adapter:    DS.RESTAdapter
});

DS.RESTAdapter.reopen({
  namespace: 'api'
});


DS.RESTAdapter.configure('Qa.Question', {
  amswers: {embedded: 'always'}
});
