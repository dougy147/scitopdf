# scitopdf

`scitopdf` search for articles from given titles (not too rigid on orthograph) on sci-hub, and it downloads them in a folder (`$HOME/downloads/scihub`). The interest of `scitopdf` is that it locates automatically sci-hub website thanks to http://whereisscihub.now.sh/ , it is not as rigid on orthograph and syntax as sci-hub's search, it downloads automatically the articles.

## Getting Started

### Prerequisites

`scitopdf` should work out of the box.

### Installing

To try `scitopdf`, you can clone this repository. For instance :

```
cd ~
git clone https://github.com/dougy147/scitopdf
```

Then, open your terminal and go to the folder you just cloned :

```
cd ~/scitopdf
```

And launch it like this :

```
sh scitopdf "title of the article you are looking for"
```

or directly with

```
sh scitopdf title of the article you are looking for
```

# Examples

Here's the result of `scitopdf` with a (free and open access) article.

![](images/example1.png)

