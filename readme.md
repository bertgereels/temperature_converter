
# Temperature Converter

Easy commands to convert temperatures

![NPM Version][npm-image]
![Language][language]

Commandline application to convert temperature from different sources (commandline, file, url and MQTT) to kelvin and fahrenheit with three types of output formats.

## Installation

Windows, Linux & OSX:

1. Open powershell
2. Execute the following command:
```
gem install temperature_converter_Bert_Gereels
```
3. Execute program using temp_conv --help

## Usage example
This program uses optionparsers to select in- and output formats.
### Input formats:
 Convert temperature inputted from commandline (-c or --command).
```
 temp_conv -c 69 -o text
 temp_conv --command 69 --output text
```
 Convert temperature read form a textfile (-f or --file).
```
 temp_conv -f 'file_name.txt' -o json
 temp_conv --file 'file_name.txt' --output json
```
 Convert temperature read from a url (-u or --url).
```
 temp_conv -u 'url_name' -o text
 temp_conv --url 'url_name' --output text
```
 Convert temperature read from a MQTT server (-m or --mqtt).
```
 temp_conv -m -o html
 temp_conv --mqtt --output html
```
**NOTE: MQTT settings are hardcoded!**

### Output formats:
 Printing regular text (-text).
```
 temp_conv --file 'file_name.txt' -o text
```
 Printing in JSON format (-json).
```
 temp_conv -u 'url_name.txt' --output json
```
 Printing in HTML format (-html).
```
 temp_conv -c 1337 -o html
```
**NOTE: the in- and output arguments can be entered as a single character or fully,
        they can be used interchangeably**
        
## Release History

* 1.0.1
   * Added extra functionality to optionparsers
   * Updates readme file
* 1.0.0
   * The first proper release
   * Made a gem.
* 0.0.6
    * Added optionparses for input and output.
* 0.0.5
    * Added MQTT functionality.
* 0.0.4
    * More single responsibility.
* 0.0.3
    * Single responsibility and static methods.
* 0.0.2
    * Making it DRY.
* 0.0.1
   * Work in progress.

## Meta

Distributed under the MIT license. See ``https://opensource.org/licenses/MIT`` for more information.

https://github.com/bertgereels/temperature_converter

[language]:https://img.shields.io/badge/Ruby-2.2.X-blue.svg
[npm-image]: https://img.shields.io/badge/Version-1-blue.svg
