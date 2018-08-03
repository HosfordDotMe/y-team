# # Place all the behaviors and hooks related to the matching controller here.
# # All this logic will automatically be available in application.js.
# # You can use CoffeeScript in this file: http://coffeescript.org/
#
#
#
# $(document).ready(function(){
#    var url = "https://maps.googleapis.com/maps/api/place/textsearch/json?query="
#
#   var getDescription = function(name){
#     $.get({
#       url: url + name + "&location=29.6436325,-82.3571189&radius=1500&key=Fakekey"
#     }).done(function(response){
#
#       var exact_name1 = response.results[0].name;
#       var exact_name2 = response.results[1].name;
#       var exact_name3 = response.results[2].name;
#
#       $('#place_googlename').append($('<option>', {
#       value: 1,
#       text: exact_name1
#       }));
#
#       $('#place_googlename').append($('<option>', {
#       value: 2,
#       text: exact_name2
#       }));
#
#       $('#place_googlename').append($('<option>', {
#       value: 3,
#       text: exact_name3
#       }));
#
#
#       $.ajax({
#         url : "/places/new",
#         type : "GET",
#         data : { place1: exact_name1,  place2: exact_name2, place3: exact_name3}
#     });
#       // $("#place_image_uri").val(exact_name);
#     });
#   };
#
#   $('#place_name').change(function(){
#     getDescription(this.value);
#     $('#place_googlename')
#     .empty();
#   });
#
#   $('#place_googlename').change(function(){
#     var name = $('#place_name').val();
#     var url = "https://maps.googleapis.com/maps/api/place/textsearch/json?location=29.650203500000003,-82.3237312&query=";
#
#     $.get({
#       url: url + name + "&key=Fakekey",
#     }).done(function(response){
#
#       var target = $('#place_googlename option:selected').val();
#
#       if(target == 1){
#         $('#place_address').val(response.results[0].formatted_address);
#         $('#place_lat').val(response.results[0].geometry.location.lat);
#         $('#place_lng').val(response.results[0].geometry.location.lng);
#       }
#       else if (target == 2){
#         $('#place_address').val(response.results[1].formatted_address);
#         $('#place_lat').val(response.results[1].geometry.location.lat);
#         $('#place_lng').val(response.results[1].geometry.location.lng);
#       }
#       else if (target == 3){
#         $('#place_address').val(response.results[2].formatted_address);
#         $('#place_lat').val(response.results[2].geometry.location.lat);
#         $('#place_lng').val(response.results[2].geometry.location.lng);
#         }
#         else{
#         alert('test');
#         }
#
#       photo_reference = response.results[0].photos[0].photo_reference
#
#       image_url = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=" + photo_reference + "&key=Fakekey"
#       $('#place_image_uri').val(image_url);
#
#
#     });
#
#     });
#
#   });
