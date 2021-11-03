# Mobidev minitasks

## Task1
There are two files in the folder `task1`:
* script.sh
* task1.rb

To run the ```./task1/script.sh```:

```sh
zsh script.sh sometext
```
To run the ```./task1/task1.rb```:

```sh
ruby ./task1.rb
```

---

## Task2
In this task, we created a class for working with data about store products.

The folder `task2` contains:
* task2.rb

To run the `task2` use:
```zsh
ruby ./task2/task2.rb
```

_Will be output:_
```ruby
["Cola", "Juice", "Water"]

----------------------
[
  {:price=>40.0, :name=>"Pepsi", :quantity_by_size=>{}},
  {:price=>39.99, :name=>"Water", :quantity_by_size=>{:l033=>1, :l2=>4}}
]
----------------------
[{:price=>40.0, :name=>"Pepsi", :quantity_by_size=>{}}]
----------------------
{:l033=>3, :l05=>7, :l1=>8, :l2=>4}
----------------------
36
```

## Task3
In this task, we created our firs DSL on ruby for creating html.

The folder `task3` contains:
* task3.rb

To run the `task3` use:
```zsh
ruby ./task3/task3.rb
```

_Will be output:_
```html
<!doctype html>

<html>
    <head>
        <meta name="charset" content="utf-8">
        <title>The HTML5 Template</title>

        <meta name="description" content="The HTML5 Template">
        <meta name="author" content="MobiDev">
        <link rel="stylesheet" href="css/styles.css?v=1.0">
   <head>
    <body>
        <div>Hello World</div>
        <script src="js/scripts.js"> </ script>
   </body>
</html>

```

## Task4
In this task, we created our DSL generator html and md files on ruby.
Use Structures, Rake, Gemfile

The project structure:
```
task4/
  ├── Gemfile
  ├── Rakefile
  ├── app.rb
  ├── data_structures.rb
  ├── env.rb
  ├── generator.rb
  ├── generator_dsl.rb
  └── generators/
        ├── base.rb
        ├── html.rb
        └── md.rb
```

To run the `task4` use:
```zsh
ruby ./task4/app.rb
```


```shell
rake cleanup[./path/]
 #or 
rake cleanup # clean default folder "/build"

```