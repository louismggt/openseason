import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { textAnimator } from '../plugins/init_animtext';
import { initMapbox } from '../plugins/init_mapbox';
import { initSweetalert } from '../plugins/init_sweetalert';

initMapbox();
textAnimator();

// initSweetalert('#sweet-alert-demo', {
//   title: "Are you sure?",
//   text: "This action cannot be reversed",
//   icon: "warning",
//   timer: 3000
// }, (value) => {
//   if (value) {
//     const link = document.querySelector('#delete-link');
//     link.click();
//   }
// });

// TEXTE BANNER

// Wrap every letter in a span

$( "#button-toogle-work-experiences" ).click(function() {
  $( "#work-experiences" ).toggle( "slow");
});
