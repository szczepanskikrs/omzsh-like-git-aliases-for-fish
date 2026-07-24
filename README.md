# omzsh-like-git-aliases-for-fish

Oh My Zsh git plugin aliases and helper functions adapted for Fish shell. Works out of the box on Linux and macOS.

## Installation

### Option 1: Symlink (Recommended)

Clone the repository and run `install.fish`:

```fish
git clone git@github.com:szczepanskikrs/omzsh-like-git-aliases-for-fish.git
cd omzsh-like-git-aliases-for-fish
./install.fish
```

This creates a symlink at `~/.config/fish/conf.d/git_aliases.fish`. Running `git pull` in this directory will automatically update your aliases across all your machines.

### Option 2: Fisher

If you use [Fisher](https://github.com/jorgebucaran/fisher):

```fish
fisher install szczepanskikrs/omzsh-like-git-aliases-for-fish
```

## Included Aliases

### Status & General
- `g` -> `git`
- `gst` -> `git status`
- `gss` -> `git status --short`
- `gsb` -> `git status --short --branch`
- `grt` -> `cd (git rev-parse --show-toplevel)`

### Add & Commit
- `ga` -> `git add`
- `gaa` -> `git add --all`
- `gapa` -> `git add --patch`
- `gau` -> `git add --update`
- `gc` -> `git commit --verbose`
- `gca` -> `git commit --verbose --all`
- `gcmsg` -> `git commit --message`
- `gcam` -> `git commit --all --message`
- `gc!` -> `git commit --verbose --amend`
- `gca!` -> `git commit --verbose --all --amend`
- `gcan!` -> `git commit --verbose --all --no-edit --amend`

### Branch, Checkout & Switch
- `gb` -> `git branch`
- `gba` -> `git branch --all`
- `gbd` -> `git branch --delete`
- `gbD` -> `git branch --delete --force`
- `gco` -> `git checkout`
- `gcb` -> `git checkout -b`
- `gcm` -> `git checkout (main branch)`
- `gcd` -> `git checkout (develop branch)`
- `gsw` -> `git switch`
- `gswc` -> `git switch --create`
- `gswm` -> `git switch (main branch)`
- `gbda` -> delete all local branches merged into main

### Fetch, Pull & Push
- `gf` -> `git fetch`
- `gfa` -> `git fetch --all --tags --prune`
- `gfo` -> `git fetch origin`
- `gl` -> `git pull`
- `gpr` -> `git pull --rebase`
- `gp` -> `git push`
- `gpd` -> `git push --dry-run`
- `gpf` -> `git push --force-with-lease`
- `gpsup` -> `git push --set-upstream origin (current branch)`
- `ggpush` -> `git push origin (current branch)`
- `ggpull` -> `git pull origin (current branch)`

### Log & Diff
- `gd` -> `git diff`
- `gdca` -> `git diff --cached`
- `gds` -> `git diff --staged`
- `gdw` -> `git diff --word-diff`
- `glo` -> `git log --oneline --decorate`
- `glog` -> `git log --oneline --decorate --graph`
- `glol` -> `git log --graph --pretty=...`
- `glola` -> `git log --graph --pretty=... --all`

### Rebase, Merge, Reset & Stash
- `grb` -> `git rebase`
- `grba` -> `git rebase --abort`
- `grbc` -> `git rebase --continue`
- `grbm` -> `git rebase (main branch)`
- `gm` -> `git merge`
- `gma` -> `git merge --abort`
- `grh` -> `git reset`
- `grhh` -> `git reset --hard`
- `gsta` -> `git stash push`
- `gstaa` -> `git stash apply`
- `gstp` -> `git stash pop`
- `gstl` -> `git stash list`

## License

MIT
