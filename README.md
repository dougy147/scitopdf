# scitopdf

`scitopdf` automatically downloads articles from Sci-Hub, given a title (and/or authors names, year of publication, journal, etc.) or an http adress to a default repertory (`$HOME/downloads/scihub`). The interest of `scitopdf` is (1) it automatically locates Sci-Hub's website via http://sci-hub.now.sh/, (2) it is not as rigid on orthograph and syntax as Sci-Hub's search engine (because it leverages crossref.org's one), (3) it automatically downloads and open the article, (4) it can download multiples documents from a list.

If you have a list of articles (say you pasted a bibliography in a .txt file), `scitopdf` can process each line and download each reference with the option `-l` (or `--list`). For example : `scitopdf --list list_of_references.txt`.

## Getting Started

### Installation

```
git clone https://github.com/dougy147/scitopdf
cd scitopdf
sudo make install
```
Now simply launch `scitopdf` like this :

```
scitopdf title/adress of the article you are looking for
```
