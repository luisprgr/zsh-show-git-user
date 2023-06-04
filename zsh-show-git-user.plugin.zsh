SHOW_GIT_USER_NAME_ONLY_IN_REPOS=false
SHOW_GIT_USER_NAME_EXCEPT=""
SHOW_GIT_USER_NAME_COLOR="yellow"

function git_user_name_prompt() {
	[[ $SHOW_GIT_USER_NAME_ONLY_IN_REPOS = false || -d ".git" ]] && \
	[[ $SHOW_GIT_USER_NAME_EXCEPT != $(git config user.name) ]] && \
	echo "%F{$SHOW_GIT_USER_NAME_COLOR}% [$(git config user.name)]%f❭"
}
