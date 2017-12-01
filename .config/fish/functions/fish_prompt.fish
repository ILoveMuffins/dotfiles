function fish_prompt
    set_color green
    echo -n '<'
    #set_color $fish_color_cwd
    set_color purple
    echo -n (prompt_pwd)
    set_color green
    echo -n '>'
    set_color red
    echo -n '$ '
end

