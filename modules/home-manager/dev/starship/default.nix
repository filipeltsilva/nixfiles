{lib, ...}: {
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    enableZshIntegration = true;

    settings = {
      scan_timeout = 10;

      format = lib.concatStrings [
        "$directory"
        "$git_branch"
        "$git_status"
        "$git_state"
        "$bun"
        "$conda"
        "$container"
        "$dart"
        "$deno"
        "$direnv"
        "$docker_context"
        "$env_var"
        "$golang"
        "$mise"
        "$nix_shell"
        "$nodejs"
        "$python"
        "$ruby"
        "$fill"
        "$line_break"
        "$character"
      ];

      character = {success_symbol = "[❯](bold cyan)";};

      directory = {style = "bold cyan";};

      fill = {style = "bright-black";};

      git_branch = {style = "bold yellow";};

      git_state = {style = "bold magenta";};

      git_status = {style = "bold magenta";};
    };
  };
}
