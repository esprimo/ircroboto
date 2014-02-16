STRING_RESULT=''

string.trim() {
    # @desc remove leading and trailing whitespaces from a string
    # @param $1 the string to clean up
    # @result the clean string

    local var=$@
    var="${var#"${var%%[![:space:]]*}"}"   # remove leading whitespace characters
    var="${var%"${var##*[![:space:]]}"}"   # remove trailing whitespace characters
    STRING_RESULT="$var"
}

string.underline() {
	# @desc Underlines the input string and echoes it
	# @param $1 is the string to underline.
	# @result Will echo the final string and save it to result var
	local string="$1"

	local underline=`tput smul`
	local endUnderline=`tput rmul`
	STRING_RESULT="${underline}${string}${endUnderline}"
	echo "$STRING_RESULT"
}

string.bold() {
	# @desc Bolds the input string and echoes it
	# @param $1 is the string to bold.
	# @result Will echo the final string and save it to result var
	local string="$1"

	local bold=`tput bold`
	local unbold=`tput sgr0`
	STRING_RESULT="${bold}${string}${unbold}"
	echo "$STRING_RESULT"
}