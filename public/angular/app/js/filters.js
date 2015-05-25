'use strict';

/* Filters */

angular.module('myApp.filters', []).
  filter('interpolate', ['version', function(version) {
    return function(text) {
      return String(text).replace(/\%VERSION\%/mg, version);
    }
  }])
  .filter('traslate', [function() {
    return function(text) {
      if (text == "pattern") {
        return String(text).replace("pattern", "Patron")
      };
      if (text == "required") {
        return String(text).replace("required", "Requerido")
      };
      if (text == "minlength") {
        return String(text).replace("minlength", "Longitud mínima debe ser de 3 caractéres")
      };
      if (text == "name") {
        return String(text).replace("name", "nombre")
      };
      if (text == "phone") {
        return String(text).replace("phone", "teléfono")
      };
      if (text == "email") {
        return String(text).replace("email", "E-mail")
      };
      if (text == "comment") {
        return String(text).replace("comment", "comentario")
      };
      if (text == "maxlength") {
        return String(text).replace("maxlength", "Longitud máxima debe ser de 12 caractéres")
      };
    }
  }]);
