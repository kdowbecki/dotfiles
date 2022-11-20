# How to change author e-mail and re-sign all commits

Below works with Github but is probably not the optimal way:

1. Clone a fresh repo. Don't use existing copy.
2. Change author e-mails using `git filter-repo --mailmap ../mailmap.config`.
3. Rebase all commits `git rebase -i --root`.
4. Select all commits for editing e.g. with vim `:%s/pick/e/g`.
5. Amend first commit `git commit -S --amend --no-edit`.
6. Move to next commit `git rebase --continue`.
7. Repeat point 5 and 6 for all commits.
8. Overwrite history `git push -f`.

