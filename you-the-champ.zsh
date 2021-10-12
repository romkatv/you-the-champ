if (( ! ${+functions[-you-the-champ]} )); then
  -you-the-champ() {
    'builtin' 'autoload' '-Uz' "${functions_source[-you-the-champ]}"
    'you-the-champ.zsh' ''
  }
  precmd_functions+=('-you-the-champ')
  'builtin' 'return' '1'
fi

(( $# )) || 'builtin' 'return' '0'

precmd_functions=("${(@)precmd_functions:#-you-the-champ}")
builtin set --
builtin source -- "${ZDOTDIR:-$HOME}/.zshrc" || builtin true
builtin unfunction -- -you-the-champ you-the-champ.zsh
builtin fc -R || builtin true
builtin set -- "${precmd_functions[@]}"
while (( $# )); do
  (( ! ${+functions[$1]} )) || "$1" || builtin true
  builtin shift
done
