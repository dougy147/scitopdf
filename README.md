# scitopdf

`scitopdf` downloads papers from Sci-Hub database given a title (and/or authors, year, journal, DOI, or http address) to a default directory (`$HOME/downloads/scihub`).

`scitopdf` :
- automatically locates Sci-Hub's website (via sci-hub.now.sh)
- is not as rigid on orthograph and syntax as Sci-Hub's search engine (because it leverages Crossref's one)
- automatically downloads (and opens) papers pdf
- can download multiple papers from a list of references
	* if you have a list of papers (say you pasted a bibliography in a .txt file), `scitopdf` processes each line and downloads each reference. Use the option `-l` (or `--list`).

## Installation

```
cd /tmp
git clone https://github.com/dougy147/scitopdf
cd scitopdf
sudo make install
```
Then simply use it :
```
scitopdf
```
or directly with arguments (title, year, authors, DOI, http address, journal, etc.) :
```
scitopdf title of the article you are looking for
```

To download multiple papers from a list, use the option `-l` or `--list` :
```
scitopdf --list somefile.txt
```
