# Oh My Zsh Git aliases for Fish Shell (Cross-platform: Linux & macOS)

# --- Pomocnicze funkcje ---
function __git_current_branch
    command git branch --show-current 2>/dev/null
end

function __git_main_branch
    command git rev-parse --git-dir >/dev/null 2>&1; or return
    for ref in refs/heads/main refs/heads/master refs/remotes/origin/main refs/remotes/origin/master
        if command git show-ref -q --verify $ref
            echo (basename $ref)
            return 0
        end
    end
    echo master
end

function __git_develop_branch
    command git rev-parse --git-dir >/dev/null 2>&1; or return
    for branch in dev devel develop development
        if command git show-ref -q --verify refs/heads/$branch
            echo $branch
            return 0
        end
    end
    echo develop
end

function gwip
    git add -A; and git rm (git ls-files --deleted) 2>/dev/null; and git commit --no-verify --no-gpg-sign -m "--wip-- [skip ci]"
end

function gunwip
    git log -n 1 --format="%s" | grep -q "\--wip--"
    and git reset HEAD~1
end

function gbda
    set -l merged (git branch --no-color --merged | grep -vE "^([+*]|\s*("(__git_main_branch)"|"(__git_develop_branch)")\s*\$)")
    if test -n "$merged"
        echo $merged | xargs git branch -d 2>/dev/null
    end
end

# --- Skróty (Fish Abbreviations) ---

# Status & General
abbr -a g git
abbr -a gst 'git status'
abbr -a gss 'git status --short'
abbr -a gsb 'git status --short --branch'
abbr -a grt 'cd (git rev-parse --show-toplevel 2>/dev/null || echo .)'

# Add & Commit
abbr -a ga 'git add'
abbr -a gaa 'git add --all'
abbr -a gapa 'git add --patch'
abbr -a gau 'git add --update'
abbr -a gc 'git commit --verbose'
abbr -a gca 'git commit --verbose --all'
abbr -a gcmsg 'git commit --message'
abbr -a gcam 'git commit --all --message'
abbr -a 'gc!' 'git commit --verbose --amend'
abbr -a 'gca!' 'git commit --verbose --all --amend'
abbr -a 'gcan!' 'git commit --verbose --all --no-edit --amend'

# Branch, Checkout & Switch
abbr -a gb 'git branch'
abbr -a gba 'git branch --all'
abbr -a gbd 'git branch --delete'
abbr -a 'gbD' 'git branch --delete --force'
abbr -a gco 'git checkout'
abbr -a gcb 'git checkout -b'
abbr -a gcm 'git checkout (__git_main_branch)'
abbr -a gcd 'git checkout (__git_develop_branch)'
abbr -a gsw 'git switch'
abbr -a gswc 'git switch --create'
abbr -a gswm 'git switch (__git_main_branch)'
abbr -a gswd 'git switch (__git_develop_branch)'

# Fetch, Pull & Push
abbr -a gf 'git fetch'
abbr -a gfa 'git fetch --all --tags --prune'
abbr -a gfo 'git fetch origin'
abbr -a gl 'git pull'
abbr -a gpr 'git pull --rebase'
abbr -a gp 'git push'
abbr -a gpd 'git push --dry-run'
abbr -a gpf 'git push --force-with-lease'
abbr -a 'gpf!' 'git push --force'
abbr -a gpsup 'git push --set-upstream origin (__git_current_branch)'
abbr -a ggpush 'git push origin (__git_current_branch)'
abbr -a ggpull 'git pull origin (__git_current_branch)'

# Log & Diff
abbr -a gd 'git diff'
abbr -a gdca 'git diff --cached'
abbr -a gds 'git diff --staged'
abbr -a gdw 'git diff --word-diff'
abbr -a glo 'git log --oneline --decorate'
abbr -a glog 'git log --oneline --decorate --graph'
abbr -a gloga 'git log --oneline --decorate --graph --all'
abbr -a glol 'git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset"'
abbr -a glola 'git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --all'
abbr -a glg 'git log --stat'
abbr -a glgp 'git log --stat --patch'
abbr -a gbl 'git blame -w'

# Rebase, Merge, Reset & Restore
abbr -a grb 'git rebase'
abbr -a grba 'git rebase --abort'
abbr -a grbc 'git rebase --continue'
abbr -a grbi 'git rebase --interactive'
abbr -a grbm 'git rebase (__git_main_branch)'
abbr -a gm 'git merge'
abbr -a gma 'git merge --abort'
abbr -a gmc 'git merge --continue'
abbr -a grh 'git reset'
abbr -a grhh 'git reset --hard'
abbr -a groh 'git reset origin/(__git_current_branch) --hard'
abbr -a grs 'git restore'
abbr -a grst 'git restore --staged'

# Stash
abbr -a gsta 'git stash push'
abbr -a gstaa 'git stash apply'
abbr -a gstp 'git stash pop'
abbr -a gstl 'git stash list'
abbr -a gstd 'git stash drop'
abbr -a gstall 'git stash --all'
