
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

## Usage example
This program uses optionparses to select input- and output formats.
### Input formats:
 Convert temperature inputted from commandline (-t).
```
 temp_conv -t 69 -q text
```
 Convert temperature read form a textfile (-f).
```
 temp_conv -f 'file_name.txt' -q json
```
 Convert temperature read from a url (-u).
```
 temp_conv -u 'url_name' -q json
```
 Convert temperature read from a MQTT server (-m).
```
 temp_conv -m -q html
```
NOTE: MQTT settings are hardcoded!

### Printing formats:
 Printing regular text (-text).
```
 temp_conv -f 'file_name.txt' -q text
```
 Printing in JSON format (-json).
```
 temp_conv -u 'url_name.txt' -q json
```
 Printing in HTML format (-html).
```
 temp_conv -t 1337 -q html
```
## Release History


* 0.1.0
   * The first proper release
   * Made a gem.
* 0.0.6
    * Added an optionparses for input and output.
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
