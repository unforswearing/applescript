
do shell script "pbpaste | sed -e 's/ /-/g' | awk '{print tolower($0)
}' | pbcopy"

