```
███████╗ ██████╗██╗████████╗ ██████╗ ██████╗ ██████╗ ███████╗
██╔════╝██╔════╝██║╚══██╔══╝██╔═══██╗██╔══██╗██╔══██╗██╔════╝
███████╗██║     ██║   ██║   ██║   ██║██████╔╝██║  ██║█████╗
╚════██║██║     ██║   ██║   ██║   ██║██╔═══╝ ██║  ██║██╔══╝
███████║╚██████╗██║   ██║   ╚██████╔╝██║     ██████╔╝██║
╚══════╝ ╚═════╝╚═╝   ╚═╝    ╚═════╝ ╚═╝     ╚═════╝ ╚═╝
```

In general terms, `scitopdf` is a minimalist program for avid readers of scientific papers (that... I'm not).

More specifically, but not enough, `scitopdf` quickly leverages Crossref search engine and Sci-Hub's database.

Feed it with some infos about the paper, and 5 seconds later (maybe less... or more) it will **pop** in front of your eyes 👀.

<p align="center">
<img src="https://raw.githubusercontent.com/dougy147/scitopdf/master/example.gif" width="80%" />
</p>

`scitopdf` recognizes URL and DOI when given, else it will process any info about the paper to find it : (trunkated) title || authors || journal || DOI || URL || year of publication || ...

## Installation

If you really care about your disk space, don't install ! And try it like this :

`curl https://raw.githubusercontent.com/dougy147/scitopdf/master/bin/scitopdf | bash -s 'your paper'`

If 12KB is no problem to you, push your floppy diskette in, and follow those lines :

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

### Also check your distro repos !

- Arch Linux (AUR) : `yay -S scitopdf`

- ROSA Linux (official repository) : `sudo dnf install scitopdf`

## Adapt to your needs

> Desired features for `scitopdf` are **{universali-flexibili-simplici}ty**.
>
> --<cite>Mary Poppins</cite>

That goal is obviously not reached (too many OS 🤯, sad country restrictions 😥, coding skills deficit 📉...) but let's start somewhere!

| Flag                       | Functionality                                             |
|----------------------------|-----------------------------------------------------------|
| `-l`, `--list`         | Download references line by line from a bibliography file |
| `-D`, `--download-dir` | Store papers in a specified directory (absolute path)     |
| `-u`, `--url`          | Manually set Sci-Hub address                              |
| `-p`, `--no-auto-open` | Pass on auto-opening                                      |
| `-q`, `--quiet`        | Quiet mode, no echo except for erros                      |
| `-h`, `--help`         | Print this help menu                                      |
| `man scitopdf`           | Check the manual for more tweaks                          |

- **Example** : `scitopdf -p "protein measurement with the folin" -q -D "$HOME/science"`

## Some hints

### Papers are stored

Papers are automatically saved to `$XDG_DOWNLOAD_DIR/scitopdf` (or `~/Downloads/scitopdf` depending on your system). You can change that default directory (pre-install) from the script itself (`./bin/scitopdf`).

### Be sure you can read

Don't forget to set a `$READER` environment variable, or to install `zathura` (a minimalist and lightweight document viewer) for auto-opening.

### "I want it all"

If you're very hungry for papers, you can auto-download multiple ones. Just give `scitopdf` a list of references (contained in a .txt file, or whatever, **as long as references are listed line by line**).

So, paste a bibliography in `bib.txt`, and `scitopdf -l bib.txt` will process each line and download every paper it finds (no auto-opening).

<p align="center">
<img src="https://raw.githubusercontent.com/dougy147/scitopdf/master/scitopdf_list.gif" width="80%" />
</p>

### Don't waste time typing!

Go even faster and make your own keyboard shortcut.
Map your favorite keys combination (I use `Super+S`) to `scitopdf $(xclip -o)` (or any other clipboard tool).
Now, just highlight any title, DOI or URL you come accross, press your keys, and you're all set for a read.

<p align="center">
<img src="https://raw.githubusercontent.com/dougy147/scitopdf/master/scitopdf_keyboard.gif" width="80%" />
</p>

That's full speed accessing your papers now. Close enough from speed of thought 👍. (why am I selling that dumb script so much?)

### "But I love typing..."

If you're a typewriting kind of person and prefer it the old way, well, no judgment.
`scitopdf` reveals itself pretty cool too in the terminal, or when combined with [`dmenu`](https://tools.suckless.org/dmenu/).

Map this `search=$(printf "" | dmenu -p "Scitopdf") && scitopdf "$search"` to your favorite keys combo.

## Instructions for the careless mind

Power is all relative, and this program's is pretty low; even quite harmless. However, I must release myself of any responsibility in the way you will use this program. Indeed, its use might be unappropriate in your country.

As far as I understand (i.e. poorly), imperative programming is like stacking bricks on top of each other.
If there's nothing wrong stacking, climbing the pile might.
That way, it's unnecessary to say I'm only responsible for sharing a recipe one could find all the ingredients thanks to any search engine.

So, illegality is not contained in that program. It can only be in its user's behavior.
Please use that script consciously, with and on your personal goods only.

## Constructive critics are worth it

Don't just pass by, and help improve `scitopdf`. Pull requests are open $24/7$.

### Thanks to contributors

<a href="https://github.com/Phundrak">
  <img src="https://avatars.githubusercontent.com/u/1893080?v=4" width='50px'>
</a>
<a href="https://github.com/mikhailnov">
  <img src="https://avatars.githubusercontent.com/u/15802528?v=4" width='50px'>
</a>

## How did that help ?

If you (1) are cool enough to know what to do with this 😎 and (2) find this program useful, I'd be glad and thankful :

`bc1q4cflj0e3hwcn5edut654je86upn37p37gut5yk`
