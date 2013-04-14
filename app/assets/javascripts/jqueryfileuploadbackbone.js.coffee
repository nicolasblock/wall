window.Jqueryfileuploadbackbone =
 Models:{}
 Collections:{}
 Views:{}
 Routers:{}
 ManageImages: ->
  new Jqueryfileuploadbackbone.Routers.Photos()
  alert 'inbackbone'
  Backbone.history.start()

$(document).ready ->
 Jqueryfileuploadbackbone.ManageImages()



###
window.Jqueryfileuploadbackbone = {
  Models: {},
  Views: {},
  Collections: {},
  Routers: {},
  ManageImages: function() {
    new Jqueryfileuploadbackbone.Routers.Photos();
    alert('in backbone');
    return Backbone.history.Start();
  }
};

$(document).ready(function() {
  return Jqueryfileuploadbackbone.ManageImages();
});
###