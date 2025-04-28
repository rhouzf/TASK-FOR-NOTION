#!/bin/bash
# Function to display usage information
usage() {
    echo "Usage: $0 [-n] [-v] <search_string> <file>"
    echo "Options:"
    echo "  -n    Show line numbers for each match"
    echo "  -v    Invert the match (print non-matching lines)"
    exit 1
}

# Argument validation check
if [ "$#" -lt 2 ]; then
    usage
fi

# Parse options using getopts
show_line_numbers=false
invert_match=false

while getopts "nv" opt; do
    case "$opt" in
        n) show_line_numbers=true ;;
        v) invert_match=true ;;
        *) usage ;;
    esac
done

# Shift positional parameters to remove processed options
shift $((OPTIND - 1))

# Extract search string and file
search_string="$1"
file="$2"

# Check if the file exists and is readable
if [ ! -f "$file" ] || [ ! -r "$file" ]; then
    echo "Error: File '$file' does not exist or is not readable."
    exit 1
fi

# Perform the search
line_number=0
while IFS= read -r line; do
    ((line_number++))
    if [[ "${line,,}" == *"${search_string,,}"* ]]; then
        match=true
    else
        match=false
    fi

    # Apply -v (invert match)
    if $invert_match; then
        if $match; then
            match=false
        else
            match=true
        fi
    fi

    # Print matching lines
    if $match; then
        if $show_line_numbers; then
            printf "%d:%s\n" "$line_number" "$line"
        else
            echo "$line"
        fi
    fi
done < "$file"