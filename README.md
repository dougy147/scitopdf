# scitopdf

`scitopdf` is a minimalist program for avid readers of scientific papers (that... I'm not).

Feed it with whatever infos about a paper, count up to 5, and it will **pop** before your eyes 👀.

<p align="center">
<img src="https://raw.githubusercontent.com/dougy147/scitopdf/master/assets/example.gif" width="80%" />
</p>

`scitopdf` quickly leverages Crossref search engine, Sci-Hub and 🆕Libgen databases.

It recognizes URL and DOI when given, else it will process any info about the paper to find it : (truncated) title || authors || journal || DOI || URL || year of publication || ...

## Install

If you really care about your disk space, don't install ! And try it like this :

```console
paper="the paper you are looking for"
curl https://raw.githubusercontent.com/dougy147/scitopdf/master/scitopdf | bash -s ${paper}
```

If 12KB is no problem to you, push your floppy diskette in, and follow those lines :

```console
git clone https://github.com/dougy147/scitopdf
cd scitopdf
sudo make install
```

### Also check your distro repos 👀

- Arch Linux (AUR) : `yay -S scitopdf-git`

- ROSA Linux (official repository) : `sudo dnf install scitopdf`

## Adapt to your needs !

> Desired features for `scitopdf` are **{simplici-compatibili-flexibili}docious**.
>
> -- <cite>Mary Poppins</cite>

That goal is obviously not reached (too many OS 🤯, sad country restrictions 😥, coding skills deficit 📉...) but let's start somewhere!

| Flag                       | Functionality                                                 |
|----------------------------|---------------------------------------------------------------|
| `-l`, `--list`             | Download references line by line from a bibliography file     |
| `-D`, `--download-dir`     | Store papers in a specified directory                         |
| `-u`, `--url`              | Manually set Sci-Hub address                                  |
| `-p`, `--no-auto-open`     | Pass on auto-opening                                          |
| `-q`, `--quiet`            | Quiet mode, no `echo` except for errors                       |
| `-w`, `--wait`             | Wait X seconds between two requests (for `--list` mode only)  |
| `-b`, `--break-after`      | Make a break every X paper search (for `--list` mode only)    |
| `-d`, `--break-for`        | Break duration in seconds (for `--list` mode only)            |
| `--dns`                    | Experimental. Set your DNS to fetch SH. Check the `man` page. |
| `-h`, `--help`             | Print this help menu                                          |
| `man scitopdf`             | Check the manual for more tweaks                              |

- **Example** : `scitopdf -p "protein measurement with the folin" -q -D "$HOME/science"`

## Some more details

### Papers are stored

Papers are automatically saved to `$XDG_DOWNLOAD_DIR/scitopdf` (or `~/Downloads/scitopdf` depending on your system). You can change that default directory (pre-install) from the script itself (`scitopdf`).

### Be sure you can read

For auto-opening, `scitopdf` will do whatever it can to use your default PDF reader. But if it fails, don't forget to set a `READER` environment variable, or to install `zathura` (a minimalist and lightweight document viewer).

### "I want it all"

If you're very hungry for papers, you can auto-download multiple ones. Just give `scitopdf` a list of references (contained in a .txt file, or whatever, **as long as references are listed line by line**).

So, paste a bibliography in `bib.txt`, and `scitopdf -l bib.txt` will process each line and download every paper it finds (no auto-opening).

<p align="center">
<img src="https://raw.githubusercontent.com/dougy147/scitopdf/master/assets/example_bib_file.gif" width="80%" />
</p>

### Don't waste time typing!

Go even faster and make your own keyboard shortcut.
Map your favorite keys combination (I use `Super+S`) to `scitopdf $(xclip -o)` (or any other clipboard tool).
Now, just highlight any title, DOI or URL you come accross, press your keys, and you're all set for a read.

<p align="center">
<img src="https://raw.githubusercontent.com/dougy147/scitopdf/master/assets/example_keyboard_shortcut.gif" width="80%" />
</p>

That's full speed accessing your papers now. Close enough from speed of thought 👍. (why am I selling that dumb script so much?)

### "But I love typing..."

If you're a typewriting kind of person and prefer it the old way, well, no judgment.
`scitopdf` reveals itself pretty cool too in the terminal, or when combined with [`dmenu`](https://tools.suckless.org/dmenu/).

Map this `search=$(printf "" | dmenu -p "Scitopdf") && scitopdf "$search"` to your favorite keys combo.

### macOS compatibility

macOS runs a dinosaur version of bash. But `scitopdf` won't allow its users to be left behind. That's why its code is meant to stay retro-compatible. How kind from this little script 😎!

## Instructions for the careless mind

I must release myself of any responsibility in the way you will use this program.
Indeed, its use might be unappropriate in your country.

As far as I understand (i.e. poorly), imperative programming is like stacking bricks on top of each other.
If there's nothing wrong stacking, climbing the pile might.
So, I'm only responsible for sharing a recipe one could find all the ingredients with any search engine.

Illegality is not contained in that program. It can only be in its user's behavior.
Please use that script consciously, with and on your personal goods only.


## Special thanks to contributors

<a href="https://github.com/Phundrak">
  <img src="https://avatars.githubusercontent.com/u/1893080?v=4" width='50px'>
</a>
<a href="https://github.com/mikhailnov">
  <img src="https://avatars.githubusercontent.com/u/15802528?v=4" width='50px'>
</a>


## Feel free 😎

If scitopdf has been of any help to you, I'd be glad and thankful !

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/dougy147)

BTC : `bc1q4cflj0e3hwcn5edut654je86upn37p37gut5yk`
