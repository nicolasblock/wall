class Jqueryfileuploadbackbone.Collections.Photos extends Backbone.Collection
 url: 'api/photos'
 model: Jqueryfileuploadbackbone.Models.Photos

###
var _ref,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Jqueryfileuploadbackbone.Collections.Photos = (function(_super) {
  __extends(Photos, _super);

  function Photos() {
    _ref = Photos.__super__.constructor.apply(this, arguments);
    return _ref;
  }

  Photos.prototype.url = 'api/photos';
  
  Photos.prototype.model = Jqueryfileuploadbackbone.Models.Photos;
  return Photos;

})(Backbone.Model);
###