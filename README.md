# scitopdf

`scitopdf`, easy to use, is a bash script to quickly leverage of Sci-Hub's database.

Just give it some data (title and/or authors, year, journal, DOI, URL...) and it will automatically find, open and save your paper to a default directory (`$HOME/downloads/scitopdf/`).

![](example.gif =150x)

Don't forget to set a `$READER` environment variable, or to install `zathura` (a minimalist document viewer) for auto-opening.

You can download multiple papers from a list of references. Paste a bibliography in a file, and `scitopdf -l file.txt` will process each line and download every paper it finds (no auto-opening).

## Don't waste time typing!

Make your own keyboard shortcut for full speed accessing yout papers.
Simply do it by setting the clipboard as an argument!
Map `scitopdf $(xclip -o)` to your favorite key combination (I use `Mod+S`).
Now just use your mouse to highlight the title of a reference you come accross browsing the web (or whatever), press your keys, and there you go!

## I love typing...

If you're a typewriting kind of person and prefer it the old way, well, no judgment.
`scitopdf` reveals itself pretty cool too when combined with [`dmenu`](https://tools.suckless.org/dmenu/).

## Installation

```
git clone https://github.com/dougy147/scitopdf
cd scitopdf
sudo make install
```
Then simply launch :
```
scitopdf
```
or directly with data :
```
scitopdf "some paper you're looking for"
```

To download multiple papers listed in a file, use `-l` or `--list` :
```
scitopdf --list somefile.txt
```

## Instructions for the careless mind

Power is all relative, and this program's is pretty low; even quite harmless. However, I must release myself of any responsibility in the way you will use this program. Indeed, its use might be unappropriate in your country.

As far as I understand (i.e. poorly), imperative programming is like stacking bricks on top of each other.
If there's nothing wrong stacking, climbing the pile might.
That way, it's unnecessary to say I'm only responsible for sharing a recipe one could find all the ingredients thanks to any search engine.

So, illegality is not contained in that program. It can only be in its user's behavior.
Please use that script consciously, with and on your personal goods only.

## Good critics are worth it

Don't just pass by, and help improve `scitopdf`. Pull requests are open $24/7$.

## How did that help ?

If you (1) are cool enough to know what to do with this and (2) find this program useful, I'd be glad and thankful :

`bc1q4cflj0e3hwcn5edut654je86upn37p37gut5yk`
