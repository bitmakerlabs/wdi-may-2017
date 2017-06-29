// Numbers
var aNumber = 10;
var aFloatingPointNumber = 3.1415;

// Strings
var aString = 'this is a string';
var anotherString = "this is also a string";

// Booleans (True and False)
var somethingTrue = true;
var somethingFalse = false;

// undefined
var anUndefinedVariable;
var anotherUndefined = "mina";
anotherUndefined = undefined;

// null
var aNullValue = null;

// Arrays
var emptyArray = [];
var daysOfTheWeek = ['Sunday', 'Monday', 'Tuesday'];
var mixedArray = [10, true, 'Mina'];

daysOfTheWeek[0] // 'Sunday'
daysOfTheWeek.length // 7

// Object Literals
var film = { title: 'Jaws', year: 1975 };
film['title'] // 'Jaws'
film.title // 'Jaws'

var propertyName = 'year';
var propertyName2 = 'johnson';
film[propertyName] // 1975
film[propertyName2] // undefined


// For Loop
for (var index = 0; index < daysOfTheWeek.length; index++) {
  console.log(daysOfTheWeek[index]);
}

for (var times = 20; times > 0; times--) {
  continue;
  console.log(times);
}

for (;;) {
  // infinite loop
  break;
}

// While Loop
var limit = 0;

while ( limit < 20 ) {
  console.log(limit);
  limit++;
}


// Do/While Loop
do {

} while (true);


// If Statement
if (true) {
  // something happens
} else if (false) {

} else {

}

switch (expression) {
  case expression:

    break;
  default:

}


// Named function



// Functions with parameters



// Anonymous function



// Callback



// Scope examples -------------------



// Callbacks --------------------------



// forEach callback



// objects - accessing attributes




// objects with functions - basic example




// objects with functions - basic Mars Rover implementation



// More complicated callbacks --------------------------




// asynchronous JS
