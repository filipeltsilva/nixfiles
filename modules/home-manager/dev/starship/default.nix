{lib, ...}: {
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    enableFishIntegration = true;

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

      fill = {
        symbol = "-";
        style = "bright-black";
      };
    };
  };
}
