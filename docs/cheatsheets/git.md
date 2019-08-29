# **Git**

Git is the go-to version control tool for most software developers because it allows them to efficiently manage their source code and track file changes while working with a large team. In fact, Git has so many uses that memorizing its various commands can be a daunting task, which is why there is this git cheat sheet.

This guide includes an introduction to Git, a glossary of terms and lists of commonly used Git commands. 

# **What is Git?**
It is the most widely used open source distributed version control system. Unlike other version control systems that store a project’s full version history in one place, Git gives each developer their own repository containing the entire history of changes. While extremely powerful, Git has some complicated command line syntax that may be confusing at first. Nonetheless, once broken down they’re all fairly straightforward and easy to understand.

# **Git Glossary**
Before you get started with Git, you need to understand some important terms:

## Branch
Branches represent specific versions of a repository that “branch out” from your main project. Branches allow you to keep track of experimental changes you make to repositories and revert to older versions.

## Commit
A commit represents a specific point in your project’s history. Use the commit command in conjunction with the git add command to let git know which changes you wish to save to the local repository. Note that commits are not automatically sent to the remote server.

## Checkout
Use the git checkout command to switch between branches. Just enter git checkout followed by the name of the branch you wish to move to, or enter git checkout master to return to the master branch. Mind your commits as you switch between branches.

## Fetch
The git fetch command copies and downloads all of a branch’s files to your device. Use it to save the latest changes to your repositories. It’s possible to fetch multiple branches simultaneously.

## Fork
A fork is a copy of a repository. Take advantage of “forking” to experiment with changes without affecting your main project.

## Head
The commit at the tip of a branch is called the head. It represents the most current commit of the repository you’re currently working in.

## Index
Whenever you add, delete or alter a file, it remains in the index until you are ready to commit the changes. Think of it as the staging area for Git. Use the git status command to see the contents of your index. Changes highlighted in green are ready to be committed while those in red still need to be added to staging.

## Master
The master is the primary branch of all your repositories. It should include the most recent changes and commits.

## Merge
Use the git merge command in conjunction with pull requests to add changes from one branch to another.

## Origin
The origin refers to the default version of a repository. Origin also serves as a system alias for communicating with the master branch. Use the command git push origin master to push local changes to the master branch.

## Pull
Pull requests represent suggestions for changes to the master branch. If you’re working with a team, you can create pull requests to tell the repository maintainer to review the changes and merge them upstream. The git pull command is used to add changes to the master branch.

## Push
The git push command is used to update remote branches with the latest changes you’ve committed.

## Rebase
The git rebase command lets you split, move or get rid of commits. It can also be used to combine two divergent branches.

## Remote
A remote is a clone of a branch. Remotes communicate upstream with their origin branch and other remotes within the repository.

## Repository
Git repositories hold all of your project’s files including branches, tags and commits.

## Stash
The git stash command removes changes from your index and “stashes” them away for later. It’s useful if you wish to pause what you’re doing and work on something else for a while. You can’t stash more than one set of changes at a time.

## Tags
Tags provide a way to keep track of important commits. Lightweight tags simply serve as pointers while annotated tags get stored as full objects.

## Upstream
In the context of Git, upstream refers to where you push your changes, which is typically the master branch.

See the Git docs reference guide for more in depth explanations of Git related terminology.

# Commands for Configuring Git
Set the username:

`git config –global user.name`

Set the user email:

`git config –global user.email`

Create a Git command shortcut:

`git config –global alias.`

Set the preferred text editor:

`git config –system core.editor`

Open and edit the global configuration file in the text editor:

`git config –global –edit`

Enable command line highlighting:

`git config –global color.ui auto`

# Commands for Setting Up Git Repositories
Create an empty repository in the project folder:

`git init`

Clone a repository from GitHub and add it to the project folder:

`git clone (repo URL)`

Clone a repository to a specific folder:

`git clone (repo URL) (folder)`

Display a list of remote repositories with URLs:

`git remote -v`

Remove a remote repository:

`git remote rm (remote repo name)`

Retrieve the most recent changes from origin but don’t merge:

`git fetch`

Retrieve the most recent changes from origin and merge:

`git pull`

# Commands for Managing File Changes
Add file changes to staging:

`git add (file name)`

Add all directory changes to staging:

`git add .`

Add new and modified files to staging:

`git add -A`

Remove a file and stop tracking it:

`git rm (file_name)`

Untrack the current file:

`git rm –cached (file_name)`

Recover a deleted file and prepare it for commit:

`git checkout <deleted file name>`

Display the status of modified files:

`git status`

Display a list of ignored files:

`git ls-files –other –ignored –exclude-standard`

Display all unstaged changes in the index and the current directory:

`git diff`

Display differences between files in staging and the most recent versions:

`git diff –staged`

Display changes in a file compared to the most recent commit:

`git diff (file_name)`

# Commands for Declaring Git Commits
Commit changes along with a custom message:

`git commit -m "(message)"`

Commit and add all changes to staging:

`git commit -am "(message)"`

Switch to a commit in the current branch:

`git checkout <commit>`

Show metadata and content changes of a commit:

`git show <commit>`

Discard all changes to a commit:

`git reset –hard <commit>`
Discard all local changes in the directory:

`git reset –hard Head`

Show the history of changes:

`git log`

Stash all modified files:

`git stash`

Retrieve stashed files:

`git stash pop`

Empty stash:

`git stash drop`

Define a tag:

`git tag (tag_name)`

Push changes to origin:

`git push`

# Commands for Git Branching
Display a list of all branches:

`git branch`

Make a new branch and switch to it:

`git checkout -b <branchname>`

Switch to a branch:

`git checkout <branchname>`

Delete a branch:

`git branch -d <branchname>`

Merge a different branch with your active branch:

`git merge <branchname>`

Fetch a branch from the repository:

`git fetch remote <branchname>`

View merge conflicts between branches:

`git diff <sourcebranch> <targetbranch>`

Preview changes before merging branches:

`git diff <sourcebranch> <targetbranch>`

Push all local branches to a designated remote repository:

`git push –all`

# Git Tips

Knowing all the Git commands won’t get you far if you don’t know how to make the most of them. Here are some version control best practices to follow:

1. **Commit Often**
Keep your commits small by committing changes as often as possible. This makes it easier for team members to integrate their work without encountering merge conflicts.

2. **Test, Then Commit**
Never commit incomplete work. Always test your changes before sharing your code with others.

3. **Use Commit Messages**
Write commit messages to let other team members know what kind of changes you made. Be as descriptive as possible so your teammates know exactly what to look for.

4. **Branch Out**
Take full advantage of branches to help you keep track of different lines of development. Don’t be afraid to go out on a limb and create a new branch to experiment with new features and ideas.

5. **Settle on a Common Workflow**
There are several different ways to set up your Git workflow. Whichever one you choose, make sure you and your teammates are on the same page from the very beginning.

# Summary
Unless you have an amazing photographic memory, memorizing every single Git command would be a challenge, so don’t bother trying to learn them all. You’ll always have this guide to reference when you need a specific command. You may even want to create your own Git cheat sheet with the commands you use most frequently.





# Git

## Global Settings
- Related Setup: https://gist.github.com/hofmannsven/6814278
- Related Pro Tips: https://ochronus.com/git-tips-from-the-trenches/
- Interactive Beginners Tutorial: http://try.github.io/
- Git Cheatsheet by GitHub: https://services.github.com/on-demand/downloads/github-git-cheat-sheet/

## Reminder
Press `minus + shift + s` and `return` to chop/fold long lines!

Show folder content: `ls -la`

## Notes
Do not put (external) dependencies in version control!

## Setup
See where Git is located:
`which git`

Get the version of Git:
`git --version`

Create an alias (shortcut) for `git status`:
`git config --global alias.st status`

Help:
`git help`

## General
Initialize Git:
`git init`

Get everything ready to commit:
`git add .`

Get custom file ready to commit:
`git add index.html`

Commit changes:
`git commit -m "Message"`

Commit changes with title and description:
`git commit -m "Title" -m "Description..."`

Add and commit in one step:
`git commit -am "Message"`

Remove files from Git:
`git rm index.html`

Update all changes:
`git add -u`

Remove file but do not track anymore:
`git rm --cached index.html`

Move or rename files:
`git mv index.html dir/index_new.html`

Undo modifications (restore files from latest commited version):
`git checkout -- index.html`

Restore file from a custom commit (in current branch):
`git checkout 6eb715d -- index.html`

## Reset
Go back to commit:
`git revert 073791e7dd71b90daa853b2c5acc2c925f02dbc6`

Soft reset (move HEAD only; neither staging nor working dir is changed):
`git reset --soft 073791e7dd71b90daa853b2c5acc2c925f02dbc6`

Undo latest commit: `git reset --soft HEAD~ `

Mixed reset (move HEAD and change staging to match repo; does not affect working dir):
`git reset --mixed 073791e7dd71b90daa853b2c5acc2c925f02dbc6`

Hard reset (move HEAD and change staging dir and working dir to match repo):
`git reset --hard 073791e7dd71b90daa853b2c5acc2c925f02dbc6`

Hard reset of a single file (`@` is short for `HEAD`):
`git checkout @ -- index.html`

## Update & Delete
Test-Delete untracked files:
`git clean -n`

Delete untracked files (not staging):
`git clean -f`

Unstage (undo adds):
`git reset HEAD index.html`

Update most recent commit (also update the commit message):
`git commit --amend -m "New Message"`

## Branch
Show branches:
`git branch`

Create branch:
`git branch branchname`

Change to branch:
`git checkout branchname`

Create and change to new branch:
`git checkout -b branchname`

Rename branch:
`git branch -m branchname new_branchname` or:
`git branch --move branchname new_branchname`

Show all completely merged branches with current branch:
`git branch --merged`

Delete merged branch (only possible if not HEAD):
`git branch -d branchname` or:
`git branch --delete branchname`

Delete not merged branch:
`git branch -D branch_to_delete`

## Merge
True merge (fast forward):
`git merge branchname`

Merge to master (only if fast forward):
`git merge --ff-only branchname`

Merge to master (force a new commit):
`git merge --no-ff branchname`

Stop merge (in case of conflicts):
`git merge --abort`

Stop merge (in case of conflicts):
`git reset --merge` // prior to v1.7.4

Undo local merge that hasn't been pushed yet:
`git reset --hard origin/master`

Merge only one specific commit: 
`git cherry-pick 073791e7`

Rebase:
`git checkout branchname` » `git rebase master`
or:
`git merge master branchname`
(The rebase moves all of the commits in `master` onto the tip of `branchname`.)

Cancel rebase:
`git rebase --abort`

Squash multiple commits into one:
`git rebase -i HEAD~3` ([source](https://www.devroom.io/2011/07/05/git-squash-your-latests-commits-into-one/))

Squash-merge a feature branch (as one commit):
`git merge --squash branchname` (commit afterwards)

## Stash
Put in stash:
`git stash save "Message"`

Show stash:
`git stash list`

Show stash stats:
`git stash show stash@{0}`

Show stash changes:
`git stash show -p stash@{0}`

Use custom stash item and drop it:
`git stash pop stash@{0}`

Use custom stash item and do not drop it:
`git stash apply stash@{0}`

Use custom stash item and index:
`git stash apply --index`

Create branch from stash: 
`git stash branch new_branch`

Delete custom stash item:
`git stash drop stash@{0}`

Delete complete stash:
`git stash clear`

## Gitignore & Gitkeep
About: https://help.github.com/articles/ignoring-files

Useful templates: https://github.com/github/gitignore

Add or edit gitignore: 
`nano .gitignore`

Track empty dir: 
`touch dir/.gitkeep`

## Log
Show commits:
`git log`

Show oneline-summary of commits:
`git log --oneline`

Show oneline-summary of commits with full SHA-1:
`git log --format=oneline`

Show oneline-summary of the last three commits:
`git log --oneline -3`

Show only custom commits:
`git log --author="Sven"`
`git log --grep="Message"`
`git log --until=2013-01-01`
`git log --since=2013-01-01`

Show only custom data of commit:
`git log --format=short`
`git log --format=full`
`git log --format=fuller`
`git log --format=email`
`git log --format=raw`

Show changes:
`git log -p`

Show every commit since special commit for custom file only:
`git log 6eb715d.. index.html`

Show changes of every commit since special commit for custom file only:
`git log -p 6eb715d.. index.html`

Show stats and summary of commits:
`git log --stat --summary`

Show history of commits as graph:
`git log --graph`

Show history of commits as graph-summary:
`git log --oneline --graph --all --decorate`

## Compare
Compare modified files:
`git diff`

Compare modified files and highlight changes only:
`git diff --color-words index.html`

Compare modified files within the staging area:
`git diff --staged`

Compare branches:
`git diff master..branchname`

Compare branches like above:
`git diff --color-words master..branchname^`

Compare commits:
`git diff 6eb715d`
`git diff 6eb715d..HEAD`
`git diff 6eb715d..537a09f`

Compare commits of file:
`git diff 6eb715d index.html`
`git diff 6eb715d..537a09f index.html`

Compare without caring about spaces:
`git diff -b 6eb715d..HEAD` or:
`git diff --ignore-space-change 6eb715d..HEAD`

Compare without caring about all spaces:
`git diff -w 6eb715d..HEAD` or:
`git diff --ignore-all-space 6eb715d..HEAD`

Useful comparings:
`git diff --stat --summary 6eb715d..HEAD`

Blame:
`git blame -L10,+1 index.html`

## Releases & Version Tags
Show all released versions:
`git tag`

Show all released versions with comments:
`git tag -l -n1`

Create release version:
`git tag v1.0.0`

Create release version with comment:
`git tag -a v1.0.0 -m 'Message'`

Checkout a specific release version:
`git checkout v1.0.0`

## Collaborate
Show remote:
`git remote`

Show remote details:
`git remote -v`

Add remote upstream from GitHub project:
`git remote add upstream https://github.com/user/project.git`

Add remote upstream from existing empty project on server:
`git remote add upstream ssh://root@123.123.123.123/path/to/repository/.git`

Fetch:
`git fetch upstream`

Fetch a custom branch:
`git fetch upstream branchname:local_branchname`

Merge fetched commits:
`git merge upstream/master`

Remove origin:
`git remote rm origin`

Show remote branches:
`git branch -r`

Show all branches (remote and local):
`git branch -a`

Create and checkout branch from a remote branch:
`git checkout -b local_branchname upstream/remote_branchname`

Compare:
`git diff origin/master..master`

Push (set default with `-u`):
`git push -u origin master`

Push:
`git push origin master`

Force-Push:
`git push origin master --force

Pull:
`git pull`

Pull specific branch:
`git pull origin branchname`

Fetch a pull request on GitHub by its ID and create a new branch:
`git fetch upstream pull/ID/head:new-pr-branch`

Clone to localhost:
`git clone https://github.com/user/project.git` or:
`git clone ssh://user@domain.com/~/dir/.git`

Clone to localhost folder:
`git clone https://github.com/user/project.git ~/dir/folder`

Clone specific branch to localhost:
`git clone -b branchname https://github.com/user/project.git`

Clone with token authentication (in CI environment):
`git clone https://oauth2:<token>@gitlab.com/username/repo.git`

Delete remote branch (push nothing):
`git push origin :branchname` or:
`git push origin --delete branchname`

## Archive
Create a zip-archive: `git archive --format zip --output filename.zip master`

Export/write custom log to a file: `git log --author=sven --all > log.txt`

## Troubleshooting
Ignore files that have already been committed to a Git repository: http://stackoverflow.com/a/1139797/1815847

## Security
Hide Git on the web via `.htaccess`: `RedirectMatch 404 /\.git` 
(more info here: http://stackoverflow.com/a/17916515/1815847)

## Large File Storage
Website: https://git-lfs.github.com/

Install: `brew install git-lfs`

Track `*.psd` files: `git lfs track "*.psd"` (init, add, commit and push as written above)