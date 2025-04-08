# YAML

 
[yaml.yaml](yaml.yaml)

Yaml Example 

```
# YAML file showcasing its features

# Scalar values
string: Hello, YAML!
integer: 42
float: 3.14
boolean: true
null_value: null

# Arrays
fruits:
  - apple
  - banana
  - orange

# Objects (Mappings)
person:
  name: John Doe
  age: 30
  occupation: Developer

# Multiline strings
description: |
  This is a multiline string
  in YAML.
  It preserves newlines and
  whitespace.

# Anchors and aliases
anchors_example:
  - &first_anchor This is the first anchor
  - &second_anchor This is the second anchor
aliased_example:
  - *first_anchor
  - *second_anchor

# Comments
# This is a comment.
# Comments can be placed anywhere.

# Inline collections
inline_array: [Value 1, Value 2, Value 3]
inline_object: {key1: value1, key2: value2, key3: value3}

# Complex structures
movies:
  - title: The Shawshank Redemption
    year: 1994
    directed_by: Frank Darabont
  - title: The Godfather
    year: 1972
    directed_by: Francis Ford Coppola

# Directives
%YAML 1.2
---

# YAML directives can be placed at the start of the file.

# Additional YAML features:
# - Custom tags
# - Merge keys
# - Advanced data types like dates, timestamps, and binary data

# ...
```
