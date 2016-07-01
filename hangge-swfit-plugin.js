'use strict';
 
var exec = require('cordova/exec');
 
var HanggeSwiftPlugin = {
 
  verifyPassword: function(sendMsg, onSuccess, onFail) {
    return exec(onSuccess, onFail, 'HanggeSwiftPlugin', 'verifyPassword', [sendMsg]);
  }
 
};
 
module.exports = HanggeSwiftPlugin; 

