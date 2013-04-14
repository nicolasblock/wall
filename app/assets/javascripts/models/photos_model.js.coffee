class Jqueryfileuploadbackbone.Models.Photos extends Backbone.Model
 urlRoot : 'api/photos'

###
var _ref,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Jqueryfileuploadbackbone.Models.Photos = (function(_super) {
  __extends(Photos, _super);

  function Photos() {
    _ref = Photos.__super__.constructor.apply(this, arguments);
    return _ref;
  }

  Photos.prototype.urlRoot = 'api/photos';

  return Photos;

})(Backbone.Model);
###