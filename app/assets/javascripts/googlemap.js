var tokyoTower = { 
  lat: 35.6587096,
  lng: 139.7452492
};

var map;
var geocoder;
var marker;

function initMap(){
  geocoder = new google.maps.Geocoder() 
  if(document.getElementById('map')){ 
    map = new google.maps.Map(document.getElementById('map'), {
      center: tokyoTower, 
      zoom: 13,
      mapTypeControl: false,
      streetViewControl: false,
      zoomControl: true,
      fullscreenControl: false,
    });

    map.addListener('click', function(event){
      addMarker(event.latLng);
    });

    addMarker(tokyoTower);

    function addMarker(location) {
      if(marker) {
        marker.setMap(null);
      }
      marker = new google.maps.Marker({
        position: location,
        map: map,
        draggable: true
      });

      document.getElementById('lat').value = marker["position"].lat();
      document.getElementById('lng').value = marker["position"].lng();
    } 
  } else { 
    map = new google.maps.Map(document.getElementById('show_map'), {
      center: {lat: gon.lat, lng: gon.lng},
      zoom: 13, 
    });

    marker = new google.maps.Marker({ 
      position: {lat: gon.lat, lng: gon.lng}, 
      map: map 
    });
  }
}

function codeAddress(){ 
  let inputAddress = document.getElementById('address').value; 

  geocoder.geocode( { 'address': inputAddress}, function(results, status) { 
    if (status == 'OK') {
      let lat = results[0].geometry.location.lat(); 
      let lng = results[0].geometry.location.lng(); 
      let mark = {
          lat: lat, 
          lng: lng
      };
      if (marker) {
        marker.setMap(null)
      }
      map.setCenter(results[0].geometry.location);
      marker = new google.maps.Marker({
          map: map, 
          position: results[0].geometry.location,
      });
      document.getElementById('lat').value = lat;
      document.getElementById('lng').value =lng;
    } else {
      alert('該当する結果がありませんでした');
    }
  });
}
