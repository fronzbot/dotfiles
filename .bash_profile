# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

export TERM="screen-256color"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{bash_prompt,bash_aliases}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Set ls colors
eval `dircolors -b ~/.dircolors`
#export LS_COLORS=$(cat ~/.colors | grep '\w' | grep -v '^#' | sed 's/#.\ //' | perl -lane "printf '%s=%s:', shift @F, join ';', @F;")
