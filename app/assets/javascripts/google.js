function initialize() {
  var mapOptions = {
    zoom: 8,
    center: new google.maps.LatLng(-34.397, 150.644),
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }
  var map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
}

function loadScript() {
  var script = document.createElement("script");
  script.type = "text/javascript";
  script.src = "http://maps.googleapis.com/maps/api/js?key=AIzaSyAQEnBzb4fXqWbnaOXa9kg2DERw0ZI2qG0&sensor=true&callback=initialize";
  document.body.appendChild(script);
}

window.onload = loadScript;

 <script>
(function() {
$( "#datepicker" ).datepicker({ minDate: -20, maxDate: "+1M +10D" });
});
</script>