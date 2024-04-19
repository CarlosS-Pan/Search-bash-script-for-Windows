# GoogleYoutubeAmazon-search-bash-script-for-Windows

A bash script for searching on google or youtube videos you can do by yourself without installing anything else than bash

## The idea behind the code

I just needed a fast way to search for certain things on websites that I usually use when I turn on the PC

## HOW IT WORKS

The code works by typing an alias you will make later and adding 2 arguments:

- The first argument is `g` for a google search, `yt` for a youtube video, or `a` for an amazon search
- The second argument is going to be whatever you are searching for e.g., `how to make a cake`

#### Some examples of the full command are

- For a Google search:
  ```
  $ goose g how to make a cake
  ```
- For a Youtube search:
  ```
  $ goose yt best ways to make money real quick tutorial
  ```
- For an Amazon search:
  ```
  $ goose a pc speakers
  ```
  As you can see the alias that i used was `goose`which stands for`google search engine` but you can use whatever you want.

#### Okay so basically you need to have some things installed

- Need to have bash installed
- Need to create an alias on a .bashrc file, you can do this by running on bash

  ```
  $ cd ~
  $ nano .bashrc
  ```

  - in nano:

  ```
  alias goose="/c/path/to/your/code/search_engine.sh"
  ```

  Now you can write your `search_engine.sh` code which I think I explained really well in the comments
