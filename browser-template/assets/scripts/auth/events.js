'use strict';

const getFormFields = require(`../../../lib/get-form-fields`);

const api = require('./api');
const ui = require('./ui');
const game = require('../game');
const store = require('../store');

const onSignUp = function (event) {
    event.preventDefault();

  let data = getFormFields(event.target);

  api.signUp(data)
    .then(ui.signUpSuccess)

;
};
const onSignIn = function (event) {
    event.preventDefault();

  let data = getFormFields(event.target);

  api.signIn(data)
    .then((response) => {
      store.user = response.user;
      return store.user;
    })
    .then(ui.signInSuccess);

};
const onChangePassword = function (event) {
  event.preventDefault();

  let data = getFormFields(event.target);

  api.changePassword(data)
    (ui.failure)
    ;
};
const onSignOut = function (event) {
  event.preventDefault();

  api.signOut()
    .then(() => {
      delete store.user;
      return store;
    })
    .then(ui.signOutSuccess)
    ;
};


const onGetGame = function (event) {
  event.preventDefault();

  api.game()

    .then(ui.getGameSuccess)

    ;
};




const addHandlers = () => {
  $('#sign-up').show();
  $('#sign-in').show();
  $('#wrapper').hide();
  $('#getGame').hide();
  $('.changebtn').hide();
  $('#sign-out').hide();
  $('#reset').hide();
  $('#sign-up').on('submit', onSignUp);
  $('#sign-in').on('submit', onSignIn);
  $('#change-password').on('submit', onChangePassword);
  $('#sign-out').on('click', onSignOut);
  $('#getGame').on('click', onGetGame);
  $('#reset').on('click', game.onCreateGame);

};
module.exports = {
  addHandlers,
};
