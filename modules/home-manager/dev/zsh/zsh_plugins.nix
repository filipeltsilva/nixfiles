{pkgs, ...}: {
  programs.zsh.plugins = [
    {
      name = "zsh-autopair";
      file = "autopair.zsh";
      src = pkgs.fetchFromGitHub {
        owner = "hlissner";
        repo = "zsh-autopair";
        rev = "449a7c3d095bc8f3d78cf37b9549f8bb4c383f3d";
        sha256 = "3zvOgIi+q7+sTXrT+r/4v98qjeiEL4Wh64rxBYnwJvQ=";
      };
    }

    {
      name = "zsh-you-should-use";
      file = "zsh-you-should-use-plugin.zsh";
      src = pkgs.fetchFromGitHub {
        owner = "MichaelAquilina";
        repo = "zsh-you-should-use";
        rev = "17c49d7c5ee3383c58f18bf3d6502a29e1bf1650";
        sha256 = "KZz0CZ+dT/mL3wM0lp/YDNW9tr9HPdi4F1fjnzaTL4w=";
      };
    }
  ];
}
