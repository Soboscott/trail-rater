'use strict';
const config = require('../config');
const store = require('../store');

const signUp = function (data) {
  return $.ajax({
    url: config.apiOrigin + '/sign-up',
    method: 'POST',
    data,
  });
};

const signIn = function (data) {
  return $.ajax({
    url: config.apiOrigin + '/sign-in',
    method: 'POST',
    data,
  });
};
const changePassword = function (data) {
  return $.ajax({
    url: `${config.apiOrigin}/change-password/${store.user.id}`,
    method: 'PATCH',
    headers: {
      Authorization: `Token token=${store.user.token}`,
    },
    data,
  });
};
const signOut = function () {
  return $.ajax({
    url: `${config.apiOrigin}/sign-out/${store.user.id}`,
    method: 'DELETE',
    headers: {
      Authorization: `Token token=${store.user.token}`,
    },
  });
};



const game = function () {
  return $.ajax({
    url: config.apiOrigin + '/games',
    method: 'GET',
    headers:{
    Authorization: `Token token=${store.user.token}`,
  },

  });
};

const createGame = function () {
  return $.ajax({
    url: config.apiOrigin + '/games',
    method: 'POST',
    headers:{
    Authorization: `Token token=${store.user.token}`,
  },

  });
};

// const gameUpdate = function(index, currentPlayer, endGame){
//   return $.ajax({
//     url: config.apiOrigin + '/games/' + store.game.id,
//     method: 'PATCH',
//     headers: {
//       Authorization: `Token token=${store.user.token}`,
//     },
//     data: {
//       game: {
//         cell: {
//           index: index,
//           value: currentPlayer,
//         },
//       over: endGame,
//       }
//     }
//   });
// };
const patchGame = function (id, indexNum, currentPlayer, checkWins){
  return $.ajax({
    url: config.apiOrigin + '/games/' + id,
    method: 'PATCH',
    headers: {
      Authorization: `Token token=${store.user.token}`,
    },
    data: {
      game: {
        cell: {
          index: indexNum,
          value: currentPlayer,
        },
        over: checkWins,
      }
    }
  });
};

module.exports = {
  signUp,
  signIn,
  changePassword,
  signOut,
  game,
  createGame,
  patchGame,
  // gameUpdate
};
