'use strict';

const signUpSuccess =() =>{
  $('#sign-up1').dropdown('toggle');
  $('#sign-up').val('');

};
const signInSuccess = () => {

  $('#sign-in');
  $('#sign-up-btb').hide();
  $('.signinhide').hide();
  $('#getGame').show();

  $('#sign-out').show();
  $('#reset').show();
  $('h2').show();
  $('.changebtn').show();

};
const signOutSuccess = () => {
  $('#sign-out').hide();

  $('#getGame').hide();
  $('#reset').hide();
  $('#wrapper').hide();

  $('#sign-in').show();
  $('#sign-up').show();
  $('.showTurn').hide();
  $('.win').empty();
  $('.history').empty();
  $('.signinhide').show();
  $('#sign-up-btb').show();
  $('.changebtn').hide();


};
const createGameSuccess = () => {
  $('#wrapper').show();
  $('.history').empty();
  $('.win').show();
};
const getGameSuccess = (data) => {

  $('.history').text('You\'ve played ' + data.games.length + ' times!');

};

module.exports = {
  signInSuccess,
  signOutSuccess,
  createGameSuccess,
  getGameSuccess,
  signUpSuccess
};
