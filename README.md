# scitopdf

`scitopdf` is a bash script written to download papers from Sci-Hub's database.
Give it a title and/or authors, year, journal, DOI, URL... for your paper to be automatically opened and saved to a default directory (`$HOME/downloads/scitopdf/`).

Don't waste time typing ! Map `scitopdf` to a keyboard shortcut for full speed accessing your desired papers.
That's easily doable with the clipboard as the first argument, for example : `scitopdf $(xclip -o)`.

Don't forget to set a `$READER` environment variable or to install `zathura`.

You can download multiple papers from a list of references with `scitopdf -l`. Say you pasted a bibliography in a file, `scitopdf` processes each line and downloads papers one by one (no auto-opening).

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

To download multiple papers listed in a file, use `-l` or `--list` :
```
scitopdf --list somefile.txt
```

## Example

![](example.gif)

 bc1q4cflj0e3hwcn5edut654je86upn37p37gut5yk
