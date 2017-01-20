## Install

```
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
brew install httpie

```


## Commands

| Command               | Description                                                                                                   |
|:----------------------|:--------------------------------------------------------------------------------------------------------------|
| _tabs_                 | Create a new tab in the current directory (macOS - requires enabling access for assistive devices under System Preferences). |
| _take_                | Create a new directory and change to it, will create intermediate directories as required.                    |
| _x_ / _extract_       | Extract an archive (supported types: tar.{bz2,gz,xz,lzma}, bz2, rar, gz, tar, tbz2, tgz, zip, Z, 7z).         |
| _zsh_stats_           | Get a list of the top 20 commands and how many times they have been run.                                      |

---

| Alias   | Command                               |
|:--------|:--------------------------------------|
| _alias_ | list all aliases                      |
| ..      | cd ..                                 |
| ...     | cd ../..                              |
| ....    | cd ../../..                           |
| .....   | cd ../../../..                        |
| /       | cd /                                  |
| _cd +n_ | switch to directory number `n`        |
| _1_     | cd -                                  |
| _2_     | cd +2                                 |
| _3_     | cd +3                                 |
| _4_     | cd +4                                 |
| _5_     | cd +5                                 |
| _6_     | cd +6                                 |
| _7_     | cd +7                                 |
| _8_     | cd +8                                 |
| _9_     | cd +9                                 |
| _md_    | mkdir -p                              |
| _rd_    | rmdir                                 |
| _d_     | dirs -v (lists last used directories) |

See `~/.oh-my-zsh/lib/directories.zsh`

### Alias
example:

```
alias -s rb=vim #opens ruby files in vim
# $ foo.rb
# vim => foo.rb
alias -g gp='| grep -i' #creates a global alias for grep
# $ ps ax gp ruby
# (all ruby process will be displayed)
```

| Flag  | Description                                     |
|:------|:------------------------------------------------|
| L     | print each alias in the form of calls to alias  |
| g     | list or define global aliases                   |
| m     | print aliases matching specified pattern        |
| r     | list or define regular aliases                  |
| s     | list or define suffix aliases                   |

## Tab-completion

| For options and helpful text of what they do |
|:--------------------------------------------:|
| _ls -(tab)_                                  |
| _cap (tab)_                                  |
| _rake (tab)_                                 |
| _ssh (tab)_                                  |
| _sudo umount (tab)_                          |
| _kill (tab)_                                 |
| _unrar (tab)_                                |

## Git

| Dynamic access to current branch name with the current_branch function |
|:----------------------------------------------------------------------:|
| git pull origin $(current_branch)                                      |
| grb publish $(current_branch) origin                                   |

| Alias                  | Command                                                                           |
|:-----------------------|:----------------------------------------------------------------------------------|
| _g_                    | git                                                                               |
| _ga_                   | git add                                                                           |
| _gaa_                  | git add --all                                                                     |
| _gapa_                 | git add --patch                                                                   |
| _gb_                   | git branch                                                                        |
| _gba_                  | git branch -a                                                                     |
| _gbr_                  | git branch --remote                                                               |
| _gc_                   | git commit -v                                                                     |
| _gc!_                  | git commit -v --amend                                                             |
| _gca_                  | git commit -v -a                                                                  |
| _gca!_                 | git commit -v -a --amend                                                          |
| _gcl_                  | git config --list                                                                 |
| _gclean_               | git clean -fd                                                                     |
| _gpristine_            | git reset --hard && git clean -dfx                                                |
| _gcm_                  | git checkout master                                                               |
| _gcmsg_                | git commit -m                                                                     |
| _gco_                  | git checkout                                                                      |
| _gcount_               | git shortlog -sn                                                                  |
| _gcp_                  | git cherry-pick                                                                   |
| _gcs_                  | git commit -S                                                                     |
| _gd_                   | git diff                                                                          |
| _gdca_                 | git diff --cached                                                                 |
| _gdt_                  | git diff-tree --no-commit-id --name-only -r                                       |
| _gdt_                  | git difftool                                                                      |
| _gfa_                  | git fetch --all --prune                                                           |
| _gg_                   | git gui citool                                                                    |
| _gga_                  | git gui citool --amend                                                            |
| _ggpnp_                | git pull origin $(current_branch) && git push origin $(current_branch)            |
| _ggpull_               | git pull origin $(current_branch)                                                 |
| _ggl_                  | git pull origin $(current_branch)                                                 |
| _ggpur_                | git pull --rebase origin $(current_branch)                                        |
| _glum_                 | git pull upstream master                                                          |
| _ggpush_               | git push origin $(current_branch)                                                 |
| _ggp_                  | git push origin $(current_branch)                                                 |
| _ggsup_                | git branch --set-upstream-to=origin/$(current_branch)                             |
| _gignore_              | git update-index --assume-unchanged                                               |
| _gignored_             | git ls-files -v &#124; grep "^\[\[:lower:\]\]"                                    |
| _git-svn-dcommit-push_ | git svn dcommit && git push github master:svntrunk                                |
| _gk_                   | gitk --all --branches                                                             |
| _gl_                   | git pull                                                                          |
| _glg_                  | git log --stat --max-count = 10                                                   |
| _glgg_                 | git log --graph --max-count = 10                                                  |
| _glgga_                | git log --graph --decorate --all                                                  |
| _glo_                  | git log --oneline --decorate --color                                              |
| _glog_                 | git log --oneline --decorate --color --graph                                      |
| _glp_                  | _git_log_prettily (git log --pretty=$1)                                           |
| _gm_                   | git merge                                                                         |
| _gmt_                  | git mergetool --no-prompt                                                         |
| _gp_                   | git push                                                                          |
| _gpoat_                | git push origin --all && git push origin --tags                                   |
| _gr_                   | git remote                                                                        |
| _grba_                 | git rebase --abort                                                                |
| _grbc_                 | git rebase --continue                                                             |
| _grbs_                 | git rebase --skip                                                             |
| _grbi_                 | git rebase -i                                                                     |
| _grh_                  | git reset HEAD                                                                    |
| _grhh_                 | git reset HEAD --hard                                                             |
| _grmv_                 | git remote rename                                                                 |
| _grrm_                 | git remote remove                                                                 |
| _grset_                | git remote set-url                                                                |
| _grt_                  | cd $(git rev-parse --show-toplevel &#124;&#124; echo ".")                         |
| _grup_                 | git remote update                                                                 |
| _grv_                  | git remote -v                                                                     |
| _gsd_                  | git svn dcommit                                                                   |
| _gsps_                 | git show --pretty = short --show-signature                                        |
| _gsr_                  | git svn rebase                                                                    |
| _gss_                  | git status -s                                                                     |
| _gst_                  | git status                                                                        |
| _gsta_                 | git stash save                                                                    |
| _gstaa_                | git stash apply                                                                   |
| _gstd_                 | git stash drop                                                                    |
| _gstl_                 | git stash list                                                                    |
| _gstp_                 | git stash pop                                                                     |
| _gsts_                 | git stash show --text                                                             |
| _gts_                  | git tag -s                                                                        |
| _gunignore_            | git update-index --no-assume-unchanged                                            |
| _gunwip_               | git log -n 1 &#124; grep -q -c "\-\-wip\-\-" && git reset HEAD~1                  |
| _gup_                  | git pull --rebase                                                                 |
| _gvt_                  | git verify-tag                                                                    |
| _gwch_                 | git whatchanged -p --abbrev-commit --pretty = medium                              |
| _gwip_                 | git add -A; git ls-files --deleted -z &#124; xargs -r0 git rm; git commit -m "--wip--" |

You also find these commands in Dash as a Cheat-sheet.




____
##[Plugins](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins)

&nbsp;

## common-aliases

Collection of useful zsh aliases, not enabled by default since they may change some user defined aliases.

| Alias   | Command                      |
|:--------|:-----------------------------|
| _l_     | ls -lFh                      |
| _la_    | ls -lAFh                     |
| _lr_    | ls -tRFh                     |
| _lt_    | ls -ltFh                     |
| _ll_    | ls -l                        |
| _ldot_  | ls -ld .*                    |
| _lS_    | ls -1FSsh                    |
| _lart_  | ls -1Fcart                   |
| _lrt_   | ls -1Fcrt                    |
| _zshrc_ | $EDITOR ~/.zshrc             |
| _h_     | history                      |
| _p_     | (processes for current user) |

##### _Alias to place at the end of command:_
| Alias | Command                   |
|:------|:--------------------------|
| _H_   | \| head                   |
| _T_   | \| tail                   |
| _G_   | \| grep                   |
| _L_   | \| less                   |
| _M_   | \| most                   |
| _LL_  | 2>&1 \| less              |
| _CA_  | 2>&1 \| cat -A            |
| _NE_  | 2> /dev/null              |
| _NUL_ | > /dev/null 2>&1          |
| _P_   | 2>&1\| pygmentize -l pytb |

- Interactive mode for rm, cp, mv
- Completion for the python interpreter

---

### Autojump [githib](https://github.com/wting/autojump)

```shell
brew install autojump
```

##### USAGE


`j` is a convenience wrapper function around `autojump`. Any option that
can be used with `autojump` can be used with `j` and vice versa.

-   Jump To A Directory That Contains `foo`:

        j foo

-   Jump To A Child Directory:

    Sometimes it's convenient to jump to a child directory
    (sub-directory of current directory) rather than typing out the
    full name.

        jc bar

-   Open File Manager To Directories (instead of jumping):

    Instead of jumping to a directory, you can open a file explorer
    window (Mac Finder, Windows Explorer, GNOME Nautilus, etc.) to the
    directory instead.

        jo music


## bundler
Make aliases

```
alias be="bundle exec"
alias bl="bundle list"
alias bp="bundle package"
alias bo="bundle open"
alias bout="bundle outdated"
alias bu="bundle update"
alias bi="bundle_install"
alias bcn="bundle clean"
```

## catimg


Print pictures to the stdout using convert ImageMagick

Example usage ```catimg image.png``` options:

```
-h -- print help
-w -- select output width
-c -- change printed character (default " " without the quotes)
```

---

## encode64


This is a plugin that helps to encode/decode strings with base64 from the console quickly:

| Command    | Description   |
|:-----------|:--------------|
| _encode64_ | encode string |
| _decode64_ | decode string |

##### _Example:_
```
$ encode64 some_string
=> c29tZV9zdHJpbmc=

$ decode64 c29tZV9zdHJpbmc=
=> some_string
```

---


## git-extras

git-extras - Support for [git-extras](https://github.com/visionmedia/git-extras) completion

Pressing tab after the various commands should autofill authors, branches and tags depending on context.

| Command                     | Description                                                                   |
|:----------------------------|:------------------------------------------------------------------------------|
| _git changelog_ [-l/--list] | populate changelog file with commits since the previous tag                   |
| _git contrib_               | display author contributions                                                  |
| _git count_ [--all]         | count commits                                                                 |
| _git delete-branch_         | delete local and remote branch                                                |
| _git delete-submodule_      | delete submodule                                                              |
| _git delete-tag_            | delete local and remote tag                                                   |
| _git extras_ [-v/--version] | git-extras                                                                    |
| _git graft_                 | merge commits from source branch to destination branch                        |
| _git squash_                | merge commits from source branch into the current one as a single commit      |
| _git feature_ [finish]      | create a feature branch                                                       |
| _git refactor_ [finish]     | create a refactor branch                                                      |
| _git bug_ [finish]          | create a bug branch                                                           |
| _git summary_               | repository summary                                                            |
| _git effort_ [--above]      | display effort statistics                                                     |
| _git repl_                  | read-eval-print-loop                                                          |
| _git commits-since_         | list commits since a given date                                               |
| _git release_               | release commit with the given tag                                             |
| _git alias_                 | define, search and show aliases                                               |
| _git ignore_                | add patterns to .gitignore                                                    |
| _git info_                  | show info about the repository                                                |
| _git create-branch_         | create local and remote branch                                                |
| _git fresh-branch_          | create empty local branch                                                     |
| _git undo_                  | remove the latest commit                                                      |
| _git setup_                 | setup a git repository                                                        |
| _git touch_                 | one step creation of new files                                                |
| _git obliterate_            | Completely remove a file from the repository, including past commits and tags |
| _git local-commits_         | list unpushed commits on the local branch                                     |

---


## httpie [website](https://httpie.org/)

Adds completion for HTTPie, which is a command line HTTP client, a user-friendly cURL replacement.

---

## history

Provides a couple of convenient aliases for using the `history` command to examine your command line history.

| Alias               | Description                                                                                                                  |
|:--------------------|:-----------------------------------------------------------------------------------------------------------------------------|
| _h_                 | List your command history. Equivalent to using `history`                                                                     |
| _hsi_               | When called without an argument you will get help on `grep` arguments                                                        |
| _hsi_ [search text] | Performs a **case insensitive** `grep` search on your command history, looking for commands that match the argument provided |

---

## jsontools

handy command line tools for dealing with json data.

| Command          | Description                                           |
|:-----------------|:------------------------------------------------------|
| _pp_json_        | pretty prints json                                    |
| _is_json_        | returns true if valid json; false otherwise           |
| _urlencode_json_ | returns a url encoded string for the given json       |
| _urldecode_json_ | returns decoded json for the given url encoded string |

---


## npm


- npm - adds autocompletion to [npm](https://npmjs.org)

---



## osx

| Command       | Description                                    |
|:--------------|:-----------------------------------------------|
| `tab`         | Open the current directory in a new tab        |
| `ofd`         | Open the current directory in a Finder window  |
| `pfd`         | Return the path of the frontmost Finder window |
| `pfs`         | Return the current Finder selection            |
| `cdf`         | `cd` to the current Finder directory           |
| `pushdf`      | `pushd` to the current Finder directory        |
| `quick-look`  | Quick-Look a specified file                    |
| `man-preview` | Open a specified man page in Preview app       |
| `showfiles`     | Show hidden files                                |
| `hidefiles`     | Hide the hidden files                            |
| `itunes`        | Control iTunes. User `itunes -h` for usage details |
| `spotify`       | Control Spotify and search by artist, album, track and etc.|

See the [README](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/osx) for more information.

---

## rails


#### rails aliases:
| Alias | Command                  |
|:------|:-------------------------|
| _rc_  | rails console            |
| _rd_  | rails destroy            |
| _rdb_ | rails dbconsole          |
| _rg_  | rails generate           |
| _rgm_ | rails generate migration |
| _rp_  | rails plugin             |
| _ru_  | rails runner             |
| _rs_  | rails server             |
| _rsd_ | rails server --debugger  |

#### rake aliases:
| Alias   | Command                       |
|:--------|:------------------------------|
| _rdm_   | rake db:migrate               |
| _rdms_  | rake db:migrate:status        |
| _rdr_   | rake db:rollback              |
| _rdc_   | rake db:create                |
| _rds_   | rake db:seed                  |
| _rdd_   | rake db:drop                  |
| _rdtc_  | rake db:test:clone            |
| _rdtp_  | rake db:test:prepare          |
| _rdmtc_ | rake db:migrate db:test:clone |
| _rlc_   | rake log:clear                |
| _rn_    | rake notes                    |
| _rr_    | rake routes                   |

---

## rand-quote


Creates a function `quote` to display a colored random quote picked from this [site](http://www.quotationspage.com/random.php3)

---

## The Fuck

[The Fuck](https://github.com/nvbn/thefuck) plugin — magnificent app which corrects your previous console command.

### Usage
Press `ESC` twice to correct previous console command.

### Notes
`Esc`-`Esc` key binding conflicts with [sudo](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/sudo) plugin.


---

## rsync
```
alias rsync-copy="rsync -avz --progress -h"
alias rsync-move="rsync -avz --progress -h --remove-source-files"
alias rsync-update="rsync -avzu --progress -h"
alias rsync-synchronize="rsync -avzu --delete --progress -h"
```


## iwhois
