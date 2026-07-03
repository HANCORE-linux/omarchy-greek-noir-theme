set -l color00 '#171717'
set -l color01 '#aeab94'
set -l color02 '#F25623'
set -l color03 '#888062'
set -l color04 '#88A57D'
set -l color05 '#F56E0F'
set -l color06 '#7b837b'
set -l color07 '#a6ada6'
set -l color08 '#525252'
set -l color09 '#aeab94'
set -l color0A '#F25623'
set -l color0B '#888062'
set -l color0C '#88A57D'
set -l color0D '#F56E0F'
set -l color0E '#7b837b'
set -l color0F '#bcbfbc'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
