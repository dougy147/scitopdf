# scitopdf

`scitopdf` automatically downloads articles from Sci-Hub, given a title (and/or authors names, year of publication, journal, DOI, or http address) to a default repertory (`$HOME/downloads/scihub`).

The interest of `scitopdf` is :
- it automatically locates Sci-Hub's website (via sci-hub.now.sh)
- it is not as rigid on orthograph and syntax as Sci-Hub's search engine (because it leverages crossref.org's one)
- it automatically downloads and opens the article
- it can download multiple documents from a list of references
	* If you have a list of articles (say you pasted a bibliography in a .txt file), `scitopdf` can process each line and download each reference with the option `-l` (or `--list`).

## Installation

```
git clone https://github.com/dougy147/scitopdf
cd scitopdf
sudo make install
```
Now simply launch `scitopdf` like this :
```
scitopdf
```
or directly with title, year, authors, DOI, address, etc. :
```
scitopdf title of the article you are looking for
```

`scitopdf` also accepts DOI, http addresses, authors' names, year of publication and journals.

To download multiple papers from a list, use the option `-l` or `--list` :
```
scitopdf --list file_containing_multiple_references.txt
```
