# `bci` / `gbci`

<br>

## *Search Script for* `GNU/Linux`

<br>

- `bci` and `gbci` use `egrep` and `grep` to show a list a of files that contain a piece of text, showing the user a pretty colored output;
- the first element of each line of a sucessfull search is the number of ocurrences, and the second is the filepath where the specified text was found;
- if the specified directory doesn't exists, a corresponding **Error** message will be thrown.

---

<br>

- Get this CLI tool for your `Linux` distro by using the `install` command below;
- Two new commands will be at your disposal:
  - `bci`;
  - `gbci`.
- They work the same way, but `bci` output is __red__;
- In case you prefer a more *__Old School__* style, `gbci` stands for *__green__* `bci`; it's also useful when further refining the search with `grep`, whose highlighting is already red.

---

<br><br>

## Commands

### *__Install__*:

```shell
sudo git clone --depth 1 --no-checkout https://github.com/tomasfn87/bci /usr/local/lib/bci && pushd /usr/local/lib/bci && sudo git sparse-checkout set {g,}bci.sh && sudo git checkout && sudo ln -rs /usr/local/lib/bci/bci.sh /usr/local/bin/bci && sudo ln -rs /usr/local/lib/bci/gbci.sh /usr/local/bin/gbci && popd && echo "\nUse commands bci and gbci to search through file names and file content in a directory."
```

### *__Uninstall__*:

```shell
sudo rm -rf /usr/local/{lib/bci,bin/{g,}bci}
```

### *__Update__*:

```shell
sudo rm -rf /usr/local/lib/bci && sudo git clone --depth 1 --no-checkout https://github.com/tomasfn87/bci /usr/local/lib/bci && pushd /usr/local/lib/bci && sudo git sparse-checkout set {g,}bci.sh && sudo git checkout && popd && echo "\nbci and gbci were updated to the latest version."
```

---

<br><br>

## Arguments

- `SEARCH_TERM`: _the 1<sup>st</sup> argument is the_ SEARCH TERM _that will be searched inside all the files available_;
- `SEARCH_DIRECTORY`: _the 2<sup>nd</sup> argument is the_ SEARCH DIRECTORY _where the search will take place_.

---

<br><br>

## _Examples_:

*Basic operations*:

<br>

```shell
bci 'import datetime as dt' ~/python
```

*Search for* `import datetime as dt` *into folder* `~/python`

<br>

```shell
gbci export\ default /home/user/mySite
```

*Search for* `export default` *into folder* `/home/user/mySite`

---

<br><br>

*Further refining the search*:

<br>

```shell
gbci export\ default /home/user/mySite | grep \\.ts

# or

gbci "export default" /home/user/mySite | grep \\.\[jt\]s
```

- *Refine the search further by piping* `grep`;
- *Works better with* `gbci` *because* `grep` *uses* **red** *to mark the returned results*.
