#!/bin/bash
wget https://raw.githubusercontent.com/lenguyenthanh/nt9-oh-my-zsh-theme/master/nt9.zsh-theme \
  -P ~/.oh-my-zsh/themes/

# Put a lovely whale in the prompt. Also the hostname
prompt_cyan='%{$FG[045]%}'
whale=$prompt_cyan'〔🐳 〕%{$reset_color%}'
host=$prompt_cyan'$(echo $HOST | cut -c -5) %{$reset_color%}'
echo "PROMPT=\"${whale}${host}"'${PROMPT}'\" >> ~/.zshrc
