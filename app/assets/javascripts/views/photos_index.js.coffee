class Jqueryfileuploadbackbone.Views.PhotosIndex extends Backbone.View
  template: JST['photos/index']
  render:->
   @$el.html @template
   @

###
var _ref,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Jqueryfileuploadbackbone.Views.PhotosIndex = (function(_super) {
  __extends(PhotosIndex, _super);

  function PhotosIndex() {
    _ref = PhotosIndex.__super__.constructor.apply(this, arguments);
    return _ref;
  }

  PhotosIndex.prototype.template = JST['photos/index'];

  PhotosIndex.prototype.render = function() {
    this.$el.html(this.template);
    return this;
  };

  return PhotosIndex;

})(Backbone.View);
###