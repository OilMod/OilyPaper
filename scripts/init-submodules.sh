#!/usr/bin/env bash
# get base dir regardless of execution location
# resolve shell-specifics
case "$(echo "$SHELL" | sed -E 's|/usr(/local)?||g')" in
    "/bin/zsh")
        RCPATH="$HOME/.zshrc"
        SOURCE="${BASH_SOURCE[0]:-${(%):-%N}}"
    ;;
    *)
        RCPATH="$HOME/.bashrc"
        if [[ -f "$HOME/.bash_aliases" ]]; then
            RCPATH="$HOME/.bash_aliases"
        fi
        SOURCE="${BASH_SOURCE[0]}"
    ;;
esac

# get base dir regardless of execution location

while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
    DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
    SOURCE="$(readlink "$SOURCE")"
    [[ "$SOURCE" != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
. $(dirname $SOURCE)/init.sh
PS1="$"

echo "Performing checkout branch master on submodules.... "
function checkout {
	what=$1

	cd "$basedir/$what"
	git checkout master
	cd "$basedir"
}

(
	(cd "$basedir" &&
	git submodule update --init

	checkout  OilMod-API &&
	checkout  OilMod-TestPlugin &&
	checkout  OilMod-TestPlugin2) || exit 1
) || (
	echo "Failed to checkout submodules"
	exit 1
) || exit 1
