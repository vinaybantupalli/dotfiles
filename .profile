# Load ~/.extra, ~/.exports, ~/.aliases and ~/.functions
for file in ~/.{exports,aliases,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file
