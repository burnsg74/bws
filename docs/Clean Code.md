# Clean Code

https://cleancoders.com/

---
## Names

> The names of variables, methods, and classes should clearly represent their purpose and functionalities. Make your naming conventions consistent to simplify code understanding.

### Class
- Noun

### Functions
- Verbs

### Variables
- Variable names that specifies what is being measured and the unit of that measurement:    
	- int elapsedTimeInDays;    
	- int daysSinceCreation;    
	- int daysSinceModification;    
	- int fileAgeInDays;
- Booleans
	- Booleans isEmpty
---

## Functions

---

## Comments

---

## Formatting

---

## Error Handling

---

## Objects and Data Structures

---

## Unit Tests

---


1. **Functions**: Functions should do one thing only and do it well. They should be small and perform their tasks
   efficiently. Properly named functions and comments should work together to create a "narrative".
3. **Comments**: Use comments sparingly. Your code should be expressive enough by itself, and the need for a comment
   likely indicates a potential to restructure or rewrite your code.
4. **Formatting**: Properly formatted code is essential. Consistent indentation, spacing, and code organization can make
   the code look streamlined and easy to read.
5. **Error Handling**: Error handling is crucial, but should not overwhelm the logic of the program. It is recommended
   to throw exceptions rather than using error codes.
6. **Objects and Data Structures**: Proper management and organization of objects and data structures can enhance the
   encapsulation of the program.
7. **Unit Tests**: Reliable and maintainable code necessitates effective unit tests. These should be written before the
   actual code (Test-Driven Development).
8. **Classes**: Classes should also do one thing and encapsulate it well. It should have only one reason to change,
   associating to the Single-Responsibility Principle.
9. **Systems**: A system should be composed of various different small, singularly-focused concepts - the whole system
   shouldn’t need to be understood to understand the part you're currently working on.