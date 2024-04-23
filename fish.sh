curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

hash -r

fisher install catppuccin/fish
fisher install jethrokuan/fzf

fish_config theme save "Catppuccin Frappe"
