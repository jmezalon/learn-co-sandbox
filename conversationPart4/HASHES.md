# intro to Hashes

hashes are a collection of data that is seperarted into pairs of keys and values.

wehave this example using a string

{"key" => "value", "another key" => "another value"}

we could also use symbols

{:sym1 => "this is first symbol", :sym2 => "this is a second symbol"}

and last to make it more readable to javascript, we have the json format
{ key: "the value here", anotherKey: "another value here"}

hash values are the returned when we give a hash a key to use to do a look up.

**implicit ("hash-literal") form**

```rb
new_hash = {
  :created => Time.now,
  :message => "hello World!"
}

or json

new_hash = {
  created: Time.now,
  message: "hello world"
}
```

new_hash is a variable, the bracket is the hash it self


we could also create a hash by using the new keyword.

```rb
second_new_hash = Hash.new

<!--or -->
<!--like this-->
second_new_hash = {}
```

the reason we like to use symbol instead of string is because of performance
when we use a symbol as a key, ruby allocate a place in memory for that symbol, if it is call again
it will have the same memory_id
we can test this with
```
:i_am_a_symbol.object_id
#=> 1525788

#if it's called again it will have the same object id 

:i_am_a_symbol.object_id
#=> 1525788
```

string in the other hand are different and the reason is because string are mutable in constrast to symbols

## let's look at created and updating a Hash
we use the bracket-equal notation to update a Hash

```rb
person = {
  name: "Max",
  age: 28
}

#if the year has change i could update my age like this
person[:age] = 29
```

we can also add keys and values

we the bracket-equal notation, if a key is not present ruby will created that key along with the value

```rb
person = {
  name: "Max",
  age: 28
}

#if the year has change i could update my age like this
person[:age] = 29
person[:birthplace] = "haiti"

#=> {
  :name => "Max",
  :age => 29,
  :birthplace => "haiti"
}
```

we could use look up condition to find if a key exist before we assign anything to it like this,

```rb
if school_manifest["school exist"]
  school_manifest["school exist"] += 1 
else
  puts "key not found"
end
```
that will just put key not found in the terminal rather than just cause an error
 or 
instead of putting a message into the terminal we could just fix the problem by just creating that 
key/value pair like this,

```rb
if school_manifest["school exist"]
  school_manifest["school exist"] += 1 
else
  school_manifest["school exist"] = 1
end
```





