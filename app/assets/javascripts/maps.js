var map;
function initMap() {
  var place = $('#map').data('place');
  map = new google.maps.Map(document.getElementById('map'), {
    center: {
      lat: parseFloat(place.lat),
      lng: parseFloat(place.lng)
    },
    zoom: 16
  });
}

$(document).ready(function () {
  if ($('#map').data('place')) {
  var place = $('#map').data('place');
    var position = {
      lat: parseFloat(place.lat),
      lng: parseFloat(place.lng)
    };

    var marker = new google.maps.Marker({
      title: place.name,
      position: position,
      animation: google.maps.Animation.DROP,
      map: map
    });

    var infowindow = new google.maps.InfoWindow({});

    google.maps.event.addListener(marker, "click", function (place2, marker2) {
      return function () {
        popbox(place2, marker2)
      }
    }(place, marker));


    function popbox(place, marker) {
      var content = place.name
      infowindow.setContent(content);
      infowindow.open(map, marker)
    };
  }

});