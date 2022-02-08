# Web server log analysis

## Requirements 
\
a. Receives a log as argument (webserver.log is provided)\
e.g.: ./parser.rb webserver.log\
\
b. Returns the following:\
list of webpages with most page views ordered from most pages views to less page views\
e.g.:\
/home 90 visits /index 80 visits etc... > list of webpages with most\
unique page views also ordered\
e.g.:\
/about/2 8 unique views\
/index 5 unique views etc...

## How to use

### Running tests
```
rspec
```
### Running in console
```
irb -r ./analysis.rb
```
### Running in command line
```
ruby parser.rb (or with argument - file name)
```

## Step 1 - Start

### initialisation

- git, bundle and rspec initialisation
- folder tree and files

### information

- readme file creation

## Step 2 - Tests creation stage (TDD)

### Rspec

- spec tests creation 
- create webserver log test file (mock)

### Coverage 

- include SimpleCov for test coverage

## Step 3 - Code writing (OOD) - solution

### methods

- load file (accept argument)
- store file content into array
- method to count the number of visits and return in descending order
- method to count the unique number of visits and return in descending order

### condition

- check if file exist (assign default)

## Step 4 - Code refactoring

### methods

- removal of duplication
- DRY

## Step 5 - Final testing and clean up

### rspec

- 100% coverage
- passing tests

### rubocop

- clean up