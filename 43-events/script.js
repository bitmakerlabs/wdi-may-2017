document.addEventListener('DOMContentLoaded', function() {
  // All of our DOM manipulation code goes in here

  var link = document.querySelector('#click-bait');

  function callback(eventObject) {
    eventObject.preventDefault();
    eventObject.stopPropagation();
    window.alert('#click-bait was clicked!');
  }

  link.addEventListener('click', callback);

  var secondLevel = document.querySelector('#second-level');

  secondLevel.addEventListener('click', function(e) {
    e.stopPropagation();
    window.alert('#second-level received click event!');
  });

  var firstLevel = document.querySelector('#first-level');

  var firstLevelEventHandler = function() {
    window.alert('#first-level received click event!');
  };

  firstLevel.addEventListener('click', firstLevelEventHandler);

  window.addEventListener('keyup', function(e) {
    var keypressed = document.querySelector('.keypressed');
    keypressed.innerHTML = e.which;

    switch (e.which) {
      case 32:
        console.log('Space bar was pressed');
        break;
      default:
    }
  });
});
