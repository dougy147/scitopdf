# scitopdf

`scitopdf` is a bash script written to download papers from Sci-Hub's database (give it a title and/or authors, year, journal, DOI, URL) to a default directory (`$HOME/downloads/scitopdf`).
Once downloaded, the paper is automatically opened. This is particularly useful when the script is combined with a keyboard shortcut with the clipboard as the argument (e.g. `scitopdf $(xclip -o)`. Don't forget to set a `$READER` environment variable or to install zathura.

`scitopdf` :
- automatically locates Sci-Hub's URL (via sci-hub.now.sh)
- is not as rigid on orthograph and syntax as Sci-Hub's search engine (because it leverages Crossref's)
- automatically downloads (and opens) papers PDF
- can download multiple papers from a list of references
	* if you have a list of papers (say you pasted a bibliography in a .txt file), `scitopdf` processes each line and downloads papers one by one. Use the option `-l` or `--list` as first argument.

## Installation

```
cd /tmp
git clone https://github.com/dougy147/scitopdf
cd scitopdf
sudo make install
```
Then simply launch :
```
scitopdf
```
or directly with arguments :
```
scitopdf "some paper you're looking for"
```

To download multiple papers from a list, use the option `-l` or `--list` :
```
scitopdf --list somefile.txt
```

## Example

![](example.gif)
