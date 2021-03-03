import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    console.log("hello")
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/ryanofwoods/cklkxz9fy0ww017rz39sc6zrp'
    });

    // parse the html json dataset to actual markers
    // add them to the map
    const marker = JSON.parse(mapElement.dataset.marker);

    new mapboxgl.Marker({ color: "#212121" })
      .setLngLat([marker.lng, marker.lat])
      .addTo(map);
  }
};

export { initMapbox };