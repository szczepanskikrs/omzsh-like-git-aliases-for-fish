# fish-git-aliases 🐟

Kompletny zestaw skrótów (abbreviations/aliases) oraz funkcji Git z **Oh My Zsh** zaadaptowany dla **Fish Shell**. 
Działa natywnie i identycznie na systemach **Linux** oraz **macOS**.

## 🚀 Instalacja

### Sposób 1: Szybka instalacja (Dowiązanie symboliczne / Symlink)
Sklonuj repozytorium na dowolnym komputerze i uruchom skrypt instalacyjny:

```fish
git clone https://github.com/TWOJ_USERNAME/fish-git-aliases.git
cd fish-git-aliases
./install.fish
```

*Skrypt utworzy dowiązanie symboliczne do `~/.config/fish/conf.d/git_aliases.fish`. Dzięki temu po zrobieniu `git pull` Twoje skróty automatycznie się zaktualizują!*

---

### Sposób 2: Fisher (Menedżer wtyczek)
Jeśli używasz [Fishera](https://github.com/jorgebucaran/fisher):

```fish
fisher install TWOJ_USERNAME/fish-git-aliases
```

---

## 📌 Najważniejsze skróty

### Status i ogólne
* `g` → `git`
* `gst` → `git status`
* `gss` → `git status --short`
* `gsb` → `git status --short --branch`
* `grt` → `cd (git rev-parse --show-toplevel)` *(przejście do korzenia repozytorium)*

### Dodawanie i commitowanie
* `ga` → `git add`
* `gaa` → `git add --all`
* `gapa` → `git add --patch`
* `gc` → `git commit --verbose`
* `gca` → `git commit --verbose --all`
* `gcmsg` → `git commit --message`
* `gcam` → `git commit --all --message`
* `gc!` → `git commit --verbose --amend`
* `gca!` → `git commit --verbose --all --amend`
* `gcan!` → `git commit --verbose --all --no-edit --amend`

### Gałęzie i checkout / switch
* `gb` → `git branch`
* `gba` → `git branch --all`
* `gbd` → `git branch --delete`
* `gbD` → `git branch --delete --force`
* `gco` → `git checkout`
* `gcb` → `git checkout -b`
* `gcm` → `git checkout (main/master)`
* `gcd` → `git checkout (dev/develop)`
* `gsw` → `git switch`
* `gswc` → `git switch --create`
* `gswm` → `git switch (main/master)`
* `gbda` → usuwa wszystkie lokalne gałęzie zsynchronizowane/scScalone z main

### Pobieranie i wysyłanie (Pull / Push / Fetch)
* `gf` → `git fetch`
* `gfa` → `git fetch --all --tags --prune`
* `gl` → `git pull`
* `gpr` → `git pull --rebase`
* `gp` → `git push`
* `gpf` → `git push --force-with-lease`
* `gpsup` → `git push --set-upstream origin (aktualna_gałąź)`
* `ggpush` → `git push origin (aktualna_gałąź)`
* `ggpull` → `git pull origin (aktualna_gałąź)`

### Historia i Diff
* `gd` → `git diff`
* `gdca` → `git diff --cached`
* `gds` → `git diff --staged`
* `glo` → `git log --oneline --decorate`
* `glog` → `git log --oneline --decorate --graph`
* `glol` → `git log --graph --pretty=...` *(czytelny graf)*
* `glola` → `git log --graph --pretty=... --all`

### Rebase, Merge, Reset & Stash
* `grb` → `git rebase`
* `grba` → `git rebase --abort`
* `grbc` → `git rebase --continue`
* `grbm` → `git rebase (main/master)`
* `gm` → `git merge`
* `gma` → `git merge --abort`
* `grh` → `git reset`
* `grhh` → `git reset --hard`
* `gsta` → `git stash push`
* `gstp` → `git stash pop`
* `gstl` → `git stash list`

---

## 🛠️ Licencja
MIT
