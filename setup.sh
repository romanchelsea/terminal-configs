set -e

printf "Setting up home directory: $HOME\n\n"
cd $HOME

TERMINAL_CONFIG="$HOME/terminal-configs"
if ! [[ -d $TERMINAL_CONFIG ]]; then

    printf "Put terminal-config in the home directory!\n\n"
    exit 1
fi

printf "Configuring Git\n\n"
if [ -r .gitconfig ]; then
    printf "A Git config file already exists.\n"
    printf "Backing it up to ~/.gitconfig.backup\n"
    printf "" > .gitconfig.backup
    mv .gitconfig .gitconfig.backup
fi

ln -s $TERMINAL_CONFIG/.gitconfig .gitconfig
