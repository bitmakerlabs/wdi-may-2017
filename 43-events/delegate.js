document.addEventListener('DOMContentLoaded', function() {
  var count = 0,
      colors = ['tomato', 'azure', 'green', 'orange', 'purple', 'chartreuse', 'yellow', 'chocolate'];

  var boxMaker = document.querySelector('#box-maker');

  boxMaker.addEventListener('click', function(e) {
    e.preventDefault();

    var x = Math.ceil(Math.random() * 400),
        y = Math.ceil(Math.random() * 200),
        c = Math.ceil(Math.random() * 7);

    var circle = document.createElement('div');

    circle.className = 'circle';
    circle.style.top = y + 'px';
    circle.style.left = x + 'px';
    circle.style.backgroundColor = colors[c];

    circle.innerHTML = count++;

    // circle.addEventListener('click', function() {
    //   this.remove();
    //   count--;
    //   console.log('circle was removed');
    // });

    var container = document.querySelector('#container');

    container.append(circle);

    console.log('Added a circle!');
  });

  var container = document.querySelector('#container');

  container.addEventListener('click', function(eventObject) {
    var target = eventObject.target;

    if ( target.className === 'circle' ) {
      target.remove();
    }

    console.log('received a click event');
  });

  // var circles = document.querySelectorAll('.circle');
  //
  // function removeCircle() {
  //   console.log('circle removed!');
  // }
  //
  // circles.forEach(function(element) {
  //   element.addEventListener('click', removeCircle);
  // });
});


// // Global scope
//
// $(document).ready(function() {
//   // Function scope
//
//   var count = 0,
//       colors = ['tomato', 'azure', 'green', 'orange', 'purple', 'chartreuse', 'yellow', 'chocolate'];
//
//
//   $('#box-maker').on('click', function() {
//       var x = Math.ceil(Math.random() * 400),
//           y = Math.ceil(Math.random() * 200),
//           c = Math.ceil(Math.random() * 8);
//
//       $('<div class="circle"></div>')
//           .css({
//               top: y,
//               left: x,
//               backgroundColor: colors[c]
//           })
//           .html(count++)
//           .appendTo('#container');
//
//       console.log('link was clicked');
//   });
// });
