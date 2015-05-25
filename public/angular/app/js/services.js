'use strict';
angular.module('myApp.services', []).
factory('Contacto', ['$resource', function($resource){
  return $resource('api/v1/contactos/:id', {id: '@id'}, {
    query:    { method: 'GET', isArray:true },
    create:   { method: 'POST'},
    update:   { method: 'PUT'},
    remove:   { method: 'DELETE'}
  });
}])
.constant('Session', {
  sessions: [
          {key: 'study',        value: 'Estudio'},
          {key: 'staff',        value:  'Staff'},
          {key: 'areas',        value:  'Areas'},
          {key: 'publications', value:  'Publicaciones'},
          {key: 'links',        value:  'Links'},
          {key: 'clients',      value:  'Clientes'}]
});
