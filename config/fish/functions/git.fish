function gpls -d "Print last git stash message"
    git stash list -1 --pretty=%s | awk -F': ' '{print $2}'
end

function grbs -d "Rollback last git commit and stash it"
    set val (git log -1 --pretty=%s)
    git reset HEAD~1 --soft
    git stash save --include-untracked --no-keep-index "$val"
    set --erase val
end

function gcs -d "Commit last git stash"
    set val "$(gpls)"
    git stash apply
    if [ $status = 0 ]
        git add -A
        git commit -m "$val"
        git stash drop
    end
    set --erase val
end
