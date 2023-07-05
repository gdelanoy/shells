 save - Capture and reuse output of command
#   A Bash function
#
# usage: save [file]
#
# On start of the Bash session a new temporary file is created that lives as
# long as this terminal session lives. This is the default file. It's path can
# be looked up in the environmental variable $SAVE. Anytime `save` runs, it
# will lookup this variable. The first argument to `save` is a file path that
# will be used as $SAVE file. A manual set file won't be deleted automatically.
#
# When `save` runs without stdin, the content of file at $SAVE will be printed
# to stdout. If stdin is connected with a pipe, then stdin will be printed to
# stdout instead and the content is saved to current active $SAVE file.
#
# examples:
#  # Update $SAVE content with output from ls.
#  ls | save
#
#  # Output content from current $SAVE file.
#  save
#
#  # Output path of current $SAVE file.
#  echo $SAVE
#
#  # Copy and set current file to new file path. Make it persistent.
#  save file1.txt

# If /dev/shm isn't available on your system, then use mktemp without options.
SAVE=$(mktemp -p '/dev/shm/')
# Do not single quote anything in trap, as the variable have to be expanded
# once at start.
trap "rm -f -- \"${SAVE}\"" EXIT

save () {
    if [[ "${#}" -gt 0 ]]
    then
        local file
        file="$(readlink -n --canonicalize-missing -- "${1/#\~/${HOME}}")"
        cp --force --no-target-directory -- "${SAVE}" "${file}"
        SAVE="${file}"
    fi

    if [ -t 0 ]
    then
        cat -- "${SAVE}"
    else
        tee -- "${SAVE}"
    fi
}
