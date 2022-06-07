# scitopdf

In general terms, `scitopdf` is an easy to use bash script for avid scientific papers readers (that... I'm not).

A bit more specifically, but not enough, `scitopdf` quickly leverages Crossref search engine and Sci-Hub's database.

Feed it with some infos about the paper (title, authors, journal, DOI, URL...), and 5 seconds later (maybe less... or more) it will **pop** in front of your eyes 👀.

![](example.gif)

## Papers are stored

Papers are automatically saved to `$HOME/downloads/scitopdf/`. You can change that default directory (before install) from the script itself (`/bin/scitopdf`).

## Be sure you can read

Don't forget to set a `$READER` environment variable, or to install `zathura` (a minimalist document viewer) for auto-opening.

## I want it all

If you're very hungry for papers, you can auto-download multiple ones. Just give `scitopdf` a list of references (contained in a .txt file, or whatever as long as papers are listed line by line). So, paste a bibliography in `exemple.txt`, and `scitopdf -l example.txt` will process each line and download every paper it finds (no auto-opening).

## Don't waste time typing!

Go even faster and make your own keyboard shortcut.
Map your favorite keys combination (I use `Mod+S`) to `scitopdf $(xclip -o)` (or any other clipboard tool).
Now, just highlight a title or DOI you come accross browsing the web, press your keys, and you're all set for a read.

That's full speed accessing your paper now. Close enough from speed of thought. (why am I selling that script so much? Ok, it's not absolute garbage, but...)

## I love typing...

If you're a typewriting kind of person and prefer it the old way, well, no judgment.
`scitopdf` reveals itself pretty cool too when combined with [`dmenu`](https://tools.suckless.org/dmenu/).

## Installation

If you care about your disk space, don't install and try it like this :

`curl "https://raw.githubusercontent.com/dougy147/scitopdf/master/bin/scitopdf" > /tmp/s; sh /tmp/s`

If 12KB is no problem to you, clone this repo and install it on your distro :

```
git clone https://github.com/dougy147/scitopdf
cd scitopdf
sudo make install
```

Now try :
```
scitopdf "some paper you're looking for"
```
or :
```
scitopdf --list a_bibliography.txt
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
