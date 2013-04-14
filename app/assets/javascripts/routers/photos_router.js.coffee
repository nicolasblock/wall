class Jqueryfileuploadbackbone.Routers.Photos extends Backbone.Router
 routes:
  '' : 'showManageImages'
  'photo/add' : 'addNewImage'

 showManageImages: ->
  @collection = new Jqueryfileuploadbackbone.Collections.Photos()
  @collection.fetch()
  view = new Jqueryfileuploadbackbone.Views.PhotosIndex collection: @collection
  $('#container-app').html view.render().el

 addNewImage: ->
  view = new Jqueryfileuploadbackbone.Views.PhotosAddView
  $('#container-app').html view.render().el

###
var _ref,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Jqueryfileuploadbackbone.Routers.Photos = (function(_super) {
  __extends(Photos, _super);

  function Photos() {
    _ref = Photos.__super__.constructor.apply(this, arguments);
    return _ref;
  }

  Photos.prototype.routes = {
    '': showManageImages,
	'photos/add' : addNewImage
  };

  Photos.prototype.showManageImages = function() {
    var view;

    this.collection = new Jqueryfileuploadbackbone.Collections.Photos();
    this.collection.fetch();
    view = new Jqueryfileuploadbackbone.Views.PhotosIndex({
      collection: this.collection
    });
    return $('#container-app').html(view.render().el);
  };

  Photos.prototype.addImage = function() {
    var view;
    view = new Jqueryfileuploadbackbone.Views.PhotosAddView
    return $('#container-app').html(view.render().el);
  };

  return Photos;

})(Backbone.Router);
###