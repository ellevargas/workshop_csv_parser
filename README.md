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


#### Steps:

1. Write some code that can parse the sample CSV file above. Test file: dogs.csv

  One way this could work would be to write a method that does the following:  

  ```
  >> csv_data = File.read("dogs.csv") ; csv_data.length
  => 97
  >> csv_parser(csv_data)
  => [["name", "breed", "weight"], ["Francis", "Samoyed", "32"], ["Kieran", "Lab", "90"], ["Renata", "Coonhound", "29"], ["Ving", "Boxer", "51"], ["Brian", "Lab", "51"]]
  ```

1. While the C in CSV stands for comma, not all CSV files use `,` as the delimiter between values in a row. Some common alternatives are tabs (`\t`) or spaces (` `). Modify your parser so that the caller of your code can specify an alternative delimiter. Test file: dinosaurs.csv

1. When a value in a CSV file contains the delimiter, the entire value needs to be quoted. The double quote character (`"`) is typically used for this. Update your parser to handle quoted values. Test file: cat_breeds.csv

1. The vast majority of CSV files will use double quotes (`"`) as their quote character, but this is not necessarily the case. Modify your parser so that the caller of your code can specify an alternate quote character. Test file: contacts.csv

1. If a quoted value contains the quote character, the quote appearing in the value needs to be escaped by doubling the quote character. Update your CSV parser to handle this. Test file: routes.csv

1. Most CSV files have one record per line, but some will have multi-line values, that is values that contain a newline character. Modify your parser to support this. Test file: cars.csv


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
