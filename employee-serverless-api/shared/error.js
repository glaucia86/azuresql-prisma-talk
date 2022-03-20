/**
 * file: shared/error.js
 * date: 03/20/2022
 * description: file responsible for sending error messages.
 * author: Glaucia Lemos <Twitter: @glaucia_lemos86>
 */

module.exports = async function (status, message, context) {
  context.res = {
    status: status,
    body: message,
  };
};
