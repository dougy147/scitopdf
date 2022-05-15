# scitopdf

`scitopdf` is a bash written script to download papers from Sci-Hub's database.
Give it some arguments (title and/or authors, year, journal, DOI, URL...) and it will automatically find, open and save your paper to a default directory (`$HOME/downloads/scitopdf/`).

Don't forget to set a `$READER` environment variable, or to install `zathura` (a minimalist document viewer).

You can download multiple papers from a list of references. Paste a bibliography in a file, and `scitopdf -l file.txt` will process each line and download every paper it finds (no auto-opening).

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

## Tips

Don't waste time typing ! Map `scitopdf` to a keyboard shortcut for full speed accessing your papers.
Simply do it by setting the clipboard as the first argument. For example : `scitopdf $(xclip -o)`.

## Example

![](example.gif)


<center>
<i class="fa-solid fa-mug-saucer"></i> bc1q4cflj0e3hwcn5edut654je86upn37p37gut5yk
</center>
