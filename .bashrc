# .bashrc

# ---

# Default que no toco para no rompoer nada jaskdlfjasdf.

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ---

# Variables

# Hacer el editor default "vim"
export EDITOR="vim"

# Mejorar el historial de comandos
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=100000
export HISTFILESIZE=100000

# ---

# Alias para hacer la vida más fácil

# 0- default ls colorines
alias ls='ls --color=auto'

# 1- para xbps y sus partes
alias sxi='sudo xbps-install'
alias sxr='sudo xbps-remove'
alias xq='xbps-query'

# 2- para w3m y su buscador y duck duck go
alias w3ms='w3m https://duckduckgo.com'
alias w3md='w3m https://duckduckgo.com'

# 3- Para reiniciar y apagar
alias ssd-r='sudo shutdown -r now'
alias ssd-h='sudo shutdown -h now'

# 4- Para dormir e hibernar
alias sz='sudo zzz'
alias sZ='sudo ZZZ'

# -5 Moverse atrás solo poniendo puntos
alias ..='cd ..'
alias ...='cd ../..'

# -6 Linkear sin escribir sudo
alias sl='sudo ln'

# -? Para recargar rápido
alias so='source ~/.bashrc'
alias eso='$EDITOR ~/.bashrc'

# ---

# Funciones avanzadas

# Crea una carpeta y meteté en ella
mkcd() {
    mkdir -p "$1" && cd "$1"
}

# ---

# Ejemplo de bash con colorines (?)

# Antigua
# PS1='[\u@\h \W]\$ '

# Nueva
PS1='\[\033[01;32m\][\u@\h\[\033[00m\]:\[\033[00;34m\]\w\[\033[00m\]\[\033[01;32m\]]\[\033[00m\] \$ '

# ---

# Poner un fastfetch.
fastfetch

# ---

# Agregar las funciones globing a bash ("esteroidearlo" en pocas palabras)
shopt -s extglob

# ---
