abbr bi "brew install"
abbr bic "brew install --cask"
abbr bnfo "brew info"
abbr bnfoc "brew info --cask"
abbr bs "brew search"

# git
abbr g git
abbr gs "git status"
abbr gsh "git show"
abbr gshn "git show --name-only"
abbr gst "git stash"
abbr gd "git diff --color=always"
abbr gdc "git diff --cached"
abbr gpr "git pull --rebase"
abbr gp "git push"
abbr gpd "git push --delete"
abbr gd "git diff --color=always"
abbr gc "git commit -v"
abbr gc! "git commit -v --amend"
abbr gca "git commit -v -a"
abbr gca! "git commit -v -a --amend"
abbr gcmsg "git commit -m"
abbr gco "git checkout"
abbr gcm "git checkout master"
abbr gr "git remote"
abbr gfum "git fetch upstream master"
abbr grum "git rebase upstream/master"
abbr gfrum "gfum && grum"
abbr grv "git remote -v"
abbr grmv "git remote rename"
abbr grrm "git remote remove"
abbr grset "git remote set-url"
abbr grup "git remote update"
abbr grbi "git rebase -i"
abbr grbc "git rebase --continue"
abbr grba "git rebase --abort"
abbr gb "git branch"
abbr gba "git branch -a"
abbr gcount "git shortlog -sn"
abbr gcl "git config --list"
abbr gcp "git cherry-pick"
abbr gl "git log"
abbr glg "git log --stat --max-count=10"
abbr glgg "git log --graph --max-count=10"
abbr glgga "git log --graph --decorate --all"
abbr glo "git log --oneline --max-count=10"
abbr gloo "git log --oneline"
abbr gss "git status -s"
abbr ga "git add"
abbr gaa "git add -A"
abbr gm "git merge"

abbr grh "git reset HEAD"
abbr grhh "git reset HEAD --hard"
abbr grhh1 "git reset HEAD~1 --hard"
abbr grhs "git reset HEAD --soft"
abbr grhs1 "git reset HEAD~1 --soft"
abbr gclean "git reset --hard && git clean -dfx"
abbr gwc "git whatchanged -p --abbrev-commit --pretty=medium"
abbr gscp "git am --show-current-patch"

abbr gsl "git stash list"
abbr gstl "git stash list"
abbr gsts "git stash show --text"
abbr gsta "git stash apply"
abbr gstp "git stash pop"
abbr gstd "git stash drop"
abbr gstw "git stash save --include-untracked --no-keep-index"
abbr gsw "git stash save --include-untracked --no-keep-index"
abbr gstk "git stash save --include-untracked --keep-index"
abbr gsk "git stash save --include-untracked --keep-index"

# TODO: Come up with a better way to create abbr's below

# origin
function ggpull
    echo "git pull origin" (git branch --show-current)
end
abbr ggpull --function ggpull

function ggpur
    echo "git pull --rebase origin" (git branch --show-current)
end
abbr ggpur --function ggpur

function ggpush
    echo "git push origin" (git branch --show-current)
end
abbr ggpush --function ggpush

function ggpnp
    echo "git pull origin $(git branch --show-current) && git push origin $(git branch --show-current)"
end
abbr ggpnp --function ggpnp

# upstream
function gupur
    echo "git pull --rebase upstream $(git branch --show-current)"
end
abbr gupur --function gupur

function gupush
    echo "git push upstream $(git branch --show-current)"
end
abbr gupush --function gupush

[ -f $HOME/.config/fish/conf.d/abbr.fish.local ] && source $HOME/.config/fish/conf.d/abbr.fish.local
