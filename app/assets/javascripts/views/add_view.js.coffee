class Jqueryfileuploadbackbone.Views.PhotosAddView extends Backbone.View
 template: JST['photos/add']
 render: ->
  @$el.html @template
  @uploadPhoto()
  @

 uploadPhoto:=>
  @$el.fileupload
   add: (e, data)->
    $('#photo_image').hide()
    $("#fileupload-loading").html 'Loading...'
    data.submit()


   formData: [
    name: 'authenticity_token'
    value: $("meta[name=\'csrf-token\']").attr('content')
   ]

   done: (e, data) ->
    window.location = '/'


###
var _ref,
  __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Jqueryfileuploadbackbone.Views.PhotosAddView = (function(_super) {
  __extends(PhotosAddView, _super);

  function PhotosAddView() {
    this.uploadPhoto = __bind(this.uploadPhoto, this);    _ref = PhotosAddView.__super__.constructor.apply(this, arguments);
    return _ref;
  }

  PhotosAddView.prototype.template = JST['photos/add'];

  PhotosAddView.prototype.render = function() {
    this.$el.html(this.template);
    this.uploadPhoto();
	return this;
  };

  PhotosAddView.prototype.uploadPhoto = function() {
    return this.$el.fileupload({
      add: function(e, data) {
        $('#photo_image').hide();
        $("#fileupload-loading").html('Loading...');
        return data.submit();
      }
    });
  };

  PhotosAddView.prototype.formData = [
    {
      name: 'authenticity_token',
      value: $("meta[name=\'csrf-token\']").attr('content')
    }
  ];

  return PhotosAddView;

})(Backbone.View);

({
  done: function(e, data) {
    return window.location = '/';
  }
});
###