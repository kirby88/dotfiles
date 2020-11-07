
export CLICOLORS=1;
# Customize editor for mecurial
export EDITOR=vim

alias ls='ls -G'
alias ll='ls -alsG'

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

# Facebok stuff
alias cdo='cd ~/fbsource/fbobjc/'
alias cdx='cd ~/fbsource/xplat/'
alias hgst='hg status'
alias hgsl='hg sl'
alias hgar='hg addremove'
alias hga='hg amend'
alias hgc='hg commit'
alias hgco='hg checkout'
alias hgd='hg diff'
alias hgtop='hg next --top'
alias hgbutt='hg prev --bottom'
alias bb='buck build'
alias bt='buck test'
alias ap='arc pull'
alias jfs='jf submit --draft'
alias jfss='jf submit --draft --stack'
alias epoch='date "+%s"'
alias ssh1='ssh devvm2167.lla0.facebook.com'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
