Your task is to write a CSV (Comma Separated Values) parser.

CSV is a plain text data format for storing tabular data. The files usually end with the `.csv` extension, and a typical CSV file might look like this:

```
name,breed,weight
Francis,Samoyed,32
Kieran,Lab,90
Renata,Coonhound,29
Ving,Boxer,51
Brian,Lab,51
```

For more information about the CSV format:
* [Wikipedia](https://en.wikipedia.org/wiki/Comma-separated_values)
* [Official spec (RFC 4180)](https://tools.ietf.org/html/rfc4180)


#### Steps

* Write some code that can parse the above sample CSV file. Test file: dogs.csv

* While the C in CSV stands for comma, not all CSV files use `,` as the delimiter between values in a row. Some common alternatives are tabs (`\t`) or spaces (` `). Modify your CSV parsing code so that the caller of your code can specify an alternative delimiter. Test file: dinosaurs.csv

* When a value in a CSV file contains the delimiter, it needs to be quoted, typically with the double quote character (`"`). Update your parser to handle quoted values. Test file: cat_breeds.csv

* While the vast majority of CSV files will use double quotes (`"`) as their quote character, this is not necessarily true. Modify your parser so that the caller of your code can specify an alternate quote character. Test file: contacts.csv

* If a quoted value contains the quote character, it needs to be escaped by doubling the quote character. Update your CSV parser to handle this. Test file: routes.csv

* While most CSV files have one record per line, some will have multi-line values, that is values that contain a newline character. Modify your parser to support this. Test file: cars.csv


#### Taking it further:

* Add an interface to your parser that returns a hash with headers as keys. Using `dinosaurs.csv`, the first element of the output should look like:

```
{
  "Name" => "Acrocanthosaurus (top-spined lizard)",
  "Height" => "19 ft. 5.8 m",
  "Length" => "40 ft. 12.2 m",
  "Weight" => "6,000lbs 2,722kg",
}
```

* Add an interface to your parser that takes a block and yields destructured arrays. Using `dinosaurs.csv`, the interface might look something like:

```
my_parsing_method do |name, height, length, weight|
  # the first result would have name == "Acrocanthosaurus (top-spined lizard)", etc.
end
```

* Add an interface to your parser that returns a collection of row objects (what cool stuff could you do with this?)

* Modify your CSV parser to detect if an alternate delimiter or quote character is present in a CSV file instead of making the user specify it.

* Write a utility that normalizes CSV files to a standard format.

* Rewrite your parser with ruby's StringScanner, or a fully featured parsing library like https://github.com/evanphx/kpeg or https://github.com/tenderlove/racc
