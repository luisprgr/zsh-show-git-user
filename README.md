# zsh-show-git-user

There are some times when as a developer you need to work with multiple git users on the same machine, like when you need to have a work account separate from your personal account. This situation can be a bit difficult to manage, because you need to always remember change the git user for the project you are working on. 

This zsh plugin helps you to add the current git user name to your zsh prompt, so you can always know which user you are using.

![example](https://github.com/luisprgr/zsh-show-git-user/assets/50538689/52ea180e-8ffb-44a7-923c-b0efa9a41c48)

## Installation

### oh-my-zsh

1. Clone this repository in oh-my-zsh's custom plugins directory:

```
git clone https://github.com/luisprgr/zsh-show-git-user.git $ZSH_CUSTOM/plugins/zsh-show-git-user
```

2. Enable the plugin in `~/.zshrc`:

```
plugins=(your-other-plugins zsh-show-git-user)
```

## Usage

This plugin adds a new function called `git_user_name_prompt` that you can use to add the current git user name to your zsh prompt. 

You can use it by adding a new line to your .zshrc like this one:

```
export PROMPT='$(git_user_name_prompt)'$PROMPT
```

## Some Configurations  

### Show the git user name only when you are in a git repository

By default, the plugin will show the git user name in your prompt even if you are not in a git repository. If you want to show the git user name only when you are in a git repository, you can add the following line to your .zshrc:

```
export SHOW_GIT_USER_NAME_ONLY_IN_REPOS=true
```

### Don't show the git user name for a certain user

If you want to hide the prompt for a certain user, you can add the following line to your .zshrc:

```
export SHOW_GIT_USER_NAME_EXCEPT="user-name"
```

### Show the git user name in a different color

By default, the plugin will show the git user name in yellow. If you want use a different color, you can add the following line to your .zshrc:

```
export SHOW_GIT_USER_NAME_COLOR="color"
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
