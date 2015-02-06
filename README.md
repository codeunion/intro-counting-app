# Basic Web Apps

There are three real-deal web applications in this repository, in order of complexity (simple to complex)

1. Baking App (`bake-app.rb`)
2. Message of the Day App (`message-app.rb`)
3. Social Wall App (`wall-app.rb`)

## Running The Applications

To run these applications, execute the following command first:

```
bundle install --without production
```

This will ensure you've installed all the necessary libraries and add-ons to run these applications.

Next, run _one_ of the following commands, depending on which application you want to run:


```
ruby bake-app.rb -p $PORT -o $IP
ruby message-app.rb -p $PORT -o $IP
ruby wall-app.rb -p $PORT -o $IP
```

To stop your application, press `Ctrl+c`.  That's "Control" plus the "c" key.

