$(document).ready(function () {
  if (document.getElementById("map_nearme")) {
    var x = document.getElementById("map_nearme");

    function getLocation() {
      if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
      } else {
        x.innerHTML = "Geolocation is not supported by this browser.";
      }
    }


    function showPosition(position) {

      x.innerHTML = "Latitude: " + position.coords.latitude + "<br>Longitude: " + position.coords.longitude;
      var center = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);

      gMap = new google.maps.Map(document.getElementById('map_nearme'));
      gMap.setZoom(18); // This will trigger a zoom_changed on the map
      gMap.setCenter(new google.maps.LatLng(position.coords.latitude, position.coords.longitude));
      gMap.setMapTypeId(google.maps.MapTypeId.ROADMAP);

      var position = {
        lat: parseFloat(position.coords.latitude),
        lng: parseFloat(position.coords.longitude)
      };

      var marker = new google.maps.Marker({
        position: position,
        animation: google.maps.Animation.DROP,
        map: gMap
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
        infowindow.open(gMap, marker)
      };
    }

    getLocation();
  }
});