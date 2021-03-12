
export CLICOLORS=1;
export EDITOR=vim

start=0
precmd() {
  if [ $start -eq 0 ]
    then
    echo "\n## Welcome! ##\n"
    PROMPT=""
    else
    end=$(date "+%s")
    PROMPT="%(?.%F{green}√.%K{red}×) $((end-start))s. %(?.%f.| Exit code: %?%k)"$'\n'
  fi
  PROMPT+="%F{blue}%B%~%b%f"$'\n'"%F{white}$%f "
}
preexec () {
  start=$(date "+%s")
}
RPROMPT='%W %*'

# Directory stack cf. https://thevaluable.dev/zsh-install-configure/
setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.
alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index
# Autocompletion
# autoload -Uz compinit; compinit
# _comp_options+=(globdots) # With hidden files
# source .completion.zsh

# Basic
alias ls='ls -G'
alias ll='ls -alsG'
alias cd..='cd ..'
alias epoch='date "+%s"'
# Facebok stuff
alias cdo='cd ~/fbsource/fbobjc/'
alias cdx='cd ~/fbsource/xplat/'
alias ssh1='ssh devvm2167.lla0.facebook.com'
alias ap='arc pull'
alias jfs='jf submit --draft'
alias jfss='jf submit --draft --stack'
alias lint='arc lint -e fbsource'
# Mercurial
alias hgst='hg status'
alias hgsl='hg sl'
alias hgar='hg addremove'
alias hga='hg amend'
alias hgc='hg commit'
alias hgco='hg checkout'
alias hgcost='hg checkout fbobjc/stable'
alias hgd='hg diff'
alias hgtop='hg next --top'
alias hgbutt='hg prev --bottom'
## Git
git config --global alias.st status
## FZF
FD_OPTIONS="--hidden --follow --exclude .git --exclude node_modules"
export FZF_DEFAULT_OPTS="--no-mouse --height 50% -1 --reverse --multi --inline-info --preview='[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --style=numbers --color=always {} || cat {}) 2> /dev/null | head -300' --preview-window='right:hidden:wrap' --bind='f3:execute(bat --style=numbers {} || less -f {}),f2:toggle-preview,ctrl-d:half-page-down,ctrl-u:half-page-up,ctrl-a:select-all+accept,ctrl-y:execute-silent(echo {+} | pbcopy),ctrl-x:execute(rm -i {+})+abort'"
export FZF_DEFAULT_COMMAND="fd --type f --type l $FD_OPTIONS"
export FZF_CTRL_T_COMMAND="fd $FD_OPTIONS"
export FZF_ALT_C_COMMAND="fd --type d $FD_OPTIONS"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/e2fsprogs/bin:$PATH"
