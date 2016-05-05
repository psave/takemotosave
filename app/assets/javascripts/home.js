// $(function() {
//   var flickerAPI = "http://api.flickr.com/services/feeds/photos_public.gne?jsoncallback=?";
//   $.getJSON( flickerAPI, {
//     tags: "puerto vallarta sunset",
//     tagmode: "any",
//     format: "json"
//   })
//     .done(function( data ) {
//       $.each( data.items, function( i, item ) {
//         $( "<img>" ).attr( "src", item.media.m ).appendTo( "#pv-flicker-images" );
//         if ( i === 3 ) {
//           return false;
//         }
//       });
//     });
// })();

// Add the following to the home page
// <div id="pv-flicker-images">
// </div> <!-- pv flicker images -->