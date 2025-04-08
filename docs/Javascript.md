# Javascript

## JavaScript: The Fun Side of the Web!

JavaScript is like the magic wand of web development. It's a programming language that lets you add life and excitement to your websites.

Imagine your web page as a static painting hanging on a wall. Nice, but a bit dull, right? Now, sprinkle some JavaScript, and **voila!** You get a lively canvas that can:
- Chat with you
- Show real-time updates
- Create interactive maps
- Play cool animations
- Even turn into a jukebox with all your favorite tunes

In short, whenever you see a web page doing fancy tricks beyond just showing words and pictures, _JavaScript_ is the wizard behind the curtain making it happen!

## History

| Year | Version / Standard | Key Developments                                        |
|---|---|---|
| 1995 | Original “Mocha” at Netscape | Created by Brendan Eich; quickly renamed to “LiveScript” and then “JavaScript.”    |
| 1996 | JScript (Microsoft)         | Microsoft introduced JScript for Internet Explorer 3.0.                            |
| 1997 | ECMAScript 1 (ES1)          | JavaScript standardized by ECMA as “ECMAScript.”                                   |
| 1998 | ECMAScript 2 (ES2)          | Minor editorial changes; alignment with ISO/IEC standard.                          |
| 1999 | ECMAScript 3 (ES3)          | Added regular expressions, try/catch, and other key language features.            |
| 2005 | AJAX JavaScript usage       | AJAX pattern popularized, greatly increasing JavaScript’s prominence.             |
| 2009 | ECMAScript 5 (ES5)          | Introduced strict mode, JSON support, array extras, and property getters/setters.  |
| 2015 | ECMAScript 2015 (ES6)       | A major update: let/const, arrow functions, classes, modules, promises, etc.       |
| 2016 | ECMAScript 2016 (ES7)       | Included exponentiation operator and Array.prototype.includes.                     |
| 2017 | ECMAScript 2017 (ES8)       | Introduced async/await and shared memory features.                                 |
| 2018 | ECMAScript 2018 (ES9)       | Async iteration and rest/spread properties for objects.                            |
| 2019 | ECMAScript 2019 (ES10)      | Added Array.prototype.flat/flatMap, Object.fromEntries, and optional catch binding.|
| 2020 | ECMAScript 2020 (ES11)      | Included BigInt, nullish coalescing, optional chaining, and dynamic import.        |
| 2021 | ECMAScript 2021 (ES12)      | String.prototype.replaceAll, numeric separators, and logical assignment operators. |
| 2022 | ECMAScript 2022 (ES13)      | Added top-level await, Array.prototype.at, and class static initialization blocks. |

# Arrays
---
## {Array}.forEach()

`forEach()` lets you perform an action on each item in your array—think of it as “Do something for every element.” It doesn’t return a new array; it just calls your callback on every item. This is handy when you want to log things to the console, modify variables outside the array, or run any side effects while iterating. Because it doesn’t create a separate array, it’s best suited for situations where you just need to process data rather than transform it.

```js
const numbers = [1, 2, 3];

// Log each element
numbers.forEach((num, index) => {
  console.log(`Index: ${index}, Value: ${num}`);
});
```

## {Array}.map()

`map()` is your tool for transforming each element in an array into something new and collecting the results in a brand-new array. If you have an array of numbers, for instance, and you want to double them all, `.map()` will do that elegantly while leaving the original array unchanged. Whenever you want to take each element and turn it into something else (without affecting the original), `.map()` is the way to go.

```js
const numbers = [1, 2, 3];
const doubled = numbers.map(num => num * 2);
console.log(doubled); // [2, 4, 6]
```

**Note**
{Array}.forEach() doesn't return anything (it will always return undefined), so it’s perfect if you just want to do something with each element—like log it or update an outside variable—without building a new array.
{Array}.map() actually creates and returns a brand-new array based on each element’s transformation. That means if you need an output array (like doubling numbers), map() is your go-to.

As a result, you generally wouldn’t use them the same way since {Array}.forEach() is about performing side effects, and {Array}.map() is about transforming data into a new array.

## {Array}.filter()

`filter()` helps you cherry-pick the elements you want to keep based on a test you define. If the test (a function returning true or false) passes, that element is included in the new array; if it fails, it’s excluded. It’s great when you want to create a subset of items, such as only even numbers or only users who are adults. The original array stays intact, so you don’t have to worry about accidentally losing data.

```js
const numbers = [1, 2, 3, 4, 5];
const evenNumbers = numbers.filter(num => num % 2 === 0);
console.log(evenNumbers); // [2, 4]
```

## {Array}.find()

`find()` goes through each element until it locates the first one that satisfies your condition. The moment it finds a match, it stops and returns that element (if no match is found, it returns `undefined`). This is perfect if you only need a single item from the array rather than all matching items. For example, if you have an array of products, and you just want the first item that’s out of stock, `.find()` will hand it right over.

```js
const numbers = [1, 2, 3, 4, 5];
const firstBigNumber = numbers.find(num => num > 3);
console.log(firstBigNumber); // 4
```

## {Array}.findIndex()

Similar to `.find()`, `.findIndex()` searches for the first element that meets your criteria but returns the index (the element’s position in the array) instead. If it doesn’t find anything, you get `-1`. This is useful when you know you’ll need to manipulate or remove the item at that index after locating it.

```js
const numbers = [10, 20, 30, 40];
const index = numbers.findIndex(num => num === 30);
console.log(index); // 2
```

## {Array}.reduce()

`reduce()` is like the “Swiss Army knife” for accumulating or combining array items into a single outcome. You can sum numbers, build up an object, or concatenate strings—all with one loop. It takes a callback that receives an “accumulator” (which can be anything you want) and the current element, and then returns an updated accumulator until it’s gone through the whole array. It’s incredibly powerful when you need to perform complex data transformations in one pass.

```js
const numbers = [1, 2, 3, 4];
const sum = numbers.reduce((acc, curr) => acc + curr, 0);
console.log(sum); // 10
```

## {Array}.some()

`some()` checks whether at least one element in the array passes a test. It returns true or false. So, if you have a list of items and you only care about whether “any item meets a particular condition,” `.some()` will tell you. It’s handy for quick checks, like seeing if at least one user in a list is an administrator.

```js
const numbers = [1, 2, 3];
const hasEven = numbers.some(num => num % 2 === 0);
console.log(hasEven); // true
```

## {Array}.every()

`every()` is the stricter sibling to `.some()`: it requires that all elements match your test. If even a single element fails, the answer is `false`. This method is good for validation checks, like ensuring all users have provided an email address or that every number is positive.

```js
const numbers = [2, 4, 6];
const allEven = numbers.every(num => num % 2 === 0);
console.log(allEven); // true
```

## {Array}.push()

`push()` adds new elements to the end of the array in place. This is like stacking plates: you just plop another plate on top. It returns the new length of the array, but more importantly, it mutates the original array, which you should keep in mind if that’s something you want to avoid in certain scenarios.

```js
const fruits = ['apple', 'banana'];
fruits.push('cherry');
console.log(fruits); // ['apple', 'banana', 'cherry']
```

## {Array}.pop()

`pop()` is like removing the top plate from that stack. It takes the last element off the array and returns it to you, also mutating the array. This is often used in scenarios where you want a “last in, first out” approach.

```js
const fruits = ['apple', 'banana', 'cherry'];
const lastFruit = fruits.pop();
console.log(lastFruit); // 'cherry'
console.log(fruits); // ['apple', 'banana']
```

## {Array}.shift()

`shift()` takes the first element out of the array instead of the last—imagine a queue line, like waiting for coffee, so the first person in line is the first served. It also returns the element that got removed, in case you need it.

```js
const queue = ['first', 'second', 'third'];
const front = queue.shift();
console.log(front); // 'first'
console.log(queue); // ['second', 'third']
```

## {Array}.unshift()

`unshift()` is the counterpart to `shift()`. Instead of removing the first element, it adds new elements to the front. This is great when you need to push something to the “front of the line” so it gets processed first.

```js
const queue = ['second', 'third'];
queue.unshift('first');
console.log(queue); // ['first', 'second', 'third']
```

## {Array}.slice()

`slice()` helps you grab a portion of an array without changing the original. You hand it a start index and an end index (with the end index being non-inclusive). It then returns a new array with the requested segment. This is perfect for safely slicing out part of an array when you don’t want to lose the rest.

```js
const fruits = ['apple', 'banana', 'cherry', 'date'];
const sliced = fruits.slice(1, 3);
console.log(sliced); // ['banana', 'cherry']
console.log(fruits); // ['apple', 'banana', 'cherry', 'date']
```

## {Array}.splice()

`splice()` is the big mover and shaker: it can remove, insert, or replace elements anywhere in the original array, modifying it in place. You specify where to start cutting (start index), how many elements to remove, and optionally what new items to insert. If you need to tweak the contents right there in the middle of your array, `.splice()` is your go-to.

```js
const fruits = ['apple', 'banana', 'cherry', 'date'];
fruits.splice(2, 1, 'blueberry'); 
// Removes 'cherry' (1 item) at index 2, adds 'blueberry' in its place
console.log(fruits); // ['apple', 'banana', 'blueberry', 'date']
```

Understanding these methods allows you to handle all kinds of array manipulations with confidence, keeping your code cleaner and more expressive. Happy coding!


Below are a few additional array methods that often come in handy, but weren’t in the original list. This isn’t an exhaustive list—JavaScript arrays have plenty of tricks—but here are some common ones you might want to know:

## {Array}.concat()

Use `.concat()` when you need to join two or more arrays into a single array without modifying the originals. It returns a brand-new array that’s the combination of all the arrays you specified.

```js
const arr1 = [1, 2];
const arr2 = [3, 4];
const merged = arr1.concat(arr2); 
// => [1, 2, 3, 4]
```

---

## {Array}.includes()

`.includes()` checks whether the array contains a certain value and returns `true` or `false`. This can be really handy for quick membership checks.

```js
const fruits = ['apple', 'banana', 'cherry'];
console.log(fruits.includes('banana')); 
// => true
```

---

## {Array}.indexOf() and {Array}.lastIndexOf()

-   Use `.indexOf()` to find the first index where a certain element appears (or -1 if it doesn’t exist).  
-   `.lastIndexOf()` is similar, but starts from the end of the array.

```js
const numbers = [10, 20, 30, 20, 10];
console.log(numbers.indexOf(20));      // => 1
console.log(numbers.lastIndexOf(20));  // => 3
```

---

## {Array}.join()

Turns all elements of your array into a single string, with a specified separator. Perfect if you need a comma-separated list (or any custom separator).

```js
const words = ['Hello', 'world'];
console.log(words.join(' '));  
// => "Hello world"
```

---

## {Array}.reverse()

Mutates (changes) the array by reversing its order in place. Be mindful that it alters the original array, so keep a copy if you need the initial order.

```js
const nums = [1, 2, 3];
nums.reverse();
console.log(nums); 
// => [3, 2, 1]
```

---

## {Array}.sort()

Sorts the array in place, by default converting elements to strings and then comparing them in Unicode order. Providing a compare function helps you sort numbers or other data types properly.

```js
const nums = [3, 1, 10, 2];
nums.sort((a, b) => a - b);
console.log(nums); 
// => [1, 2, 3, 10]
```

---

## {Array}.flat() and {Array}.flatMap()

-   `.flat()` “flattens” nested arrays up to a specified depth.  
-   `.flatMap()` does a one-level flat after applying a mapping function, which can be great for combined transformations.

```js
const nested = [1, [2, [3, 4]]];
console.log(nested.flat(2));   
// => [1, 2, 3, 4]

const words = ['hi there', 'bye now'];
console.log(words.flatMap(str => str.split(' ')));
// => ['hi', 'there', 'bye', 'now']
```

---

Those are some of the additional methods you might run into. There are a few more (like `{Array}.at()` in newer versions), but the ones above plus what we covered before give you a great toolset for most day-to-day array operations.

# Date
---
## Date Class

You can create a `Date` object using the `Date` constructor:

```javascript

// Current date and time
let currentDate = new Date();

// Specific date and time
let specificDate = new Date('January 13, 2025 08:45:00');

// Date from milliseconds since January 1, 1970
let dateFromMilliseconds = new Date(1672531200000);

// Specifying year, month, day, hour, minute, second, and millisecond
let detailedDate = new Date(2025, 0, 13, 8, 45, 0, 0); // Note: January is month 0```
```

### Methods of the Date Class

#### Getting Date and Time Components

-    `getDate()`: Returns the day of the month (1-31).
-    `getDay()`: Returns the day of the week (0-6), where 0 is Sunday.
-    `getFullYear()`: Returns the four-digit year.
-    `getMonth()`: Returns the month (0-11), where 0 is January.
-    `getHours()`: Returns the hour (0-23).
-    `getMinutes()`: Returns the minutes (0-59).
-    `getSeconds()`: Returns the seconds (0-59).
-    `getMilliseconds()`: Returns the milliseconds (0-999).
-    `getTime()`: Returns the number of milliseconds since January 1, 1970.

#### Setting Date and Time Components

-    `setDate(day)`: Sets the day of the month.
-    `setFullYear(year, month, day)`: Sets the full year, and optionally month and day.
-    `setMonth(month, day)`: Sets the month, and optionally day.
-    `setHours(hour, min, sec, ms)`: Sets the hour, and optionally minutes, seconds, and milliseconds.
-    `setMinutes(min, sec, ms)`: Sets the minutes, and optionally seconds and milliseconds.
-    `setSeconds(sec, ms)`: Sets the seconds, and optionally milliseconds.
-    `setMilliseconds(ms)`: Sets the milliseconds.
-    `setTime(milliseconds)`: Sets the date and time by milliseconds since January 1, 1970.

#### Formatting and Parsing

-    `toDateString()`: Returns the date portion of a `Date` object as a string.
-    `toTimeString()`: Returns the time portion of a `Date` object as a string.
-    `toISOString()`: Returns the date as a string in the ISO 8601 format.
-    `toLocaleDateString()`: Returns the date portion formatted according to the local conventions.
-    `toLocaleTimeString()`: Returns the time portion formatted according to the local conventions.
-    `toLocaleString()`: Returns the date and time formatted according to the local conventions.
-    `toUTCString()`: Returns the date as a string in the UTC time zone.

#### Utility Methods

-    `getTimezoneOffset()`: Returns the difference in minutes between UTC and the local time.
-    `valueOf()`: Returns the primitive value of a `Date` object, which is the number of milliseconds since January 1, 1970.

## Example Usage

```javascript
let now = new Date();
console.log('Current Date:', now.toDateString());
console.log('Current Time:', now.toTimeString());

let futureDate = new Date();
futureDate.setFullYear(2025);
futureDate.setMonth(0); // January
futureDate.setDate(13);
console.log('Future Date:', futureDate.toDateString());

