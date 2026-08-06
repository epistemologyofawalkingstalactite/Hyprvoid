# .bashrc

# ---

# Default que no toco para no rompoer nada jaskdlfjasdf.

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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

# ---

# Ejemplo de bash con colorines (?)

# Antigua
# PS1='[\u@\h \W]\$ '

# Nueva
PS1='\[\033[01;32m\][\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[01;32m\]]\[\033[00m\] \$ '

# ---

# Hacer el editor default "vim"
export EDITOR="vim"

# ---

# Poner un fastfetch.
fastfetch

# ---

# Variables

# ---

# Agregar las funciones globing a bash ("esteroidearlo" en pocas palabras)
shopt -s extglob

# ---
