{ pkgs, ... }:

{ 
  imports = [
    ./treesitter-textobjects.nix
    ./ts-autotag.nix    
  ];

  programs.nixvim = {
    plugins.treesitter = {
      enable = true;

      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        bash
        c
        comment
        cpp
        css
        dockerfile
        graphql
        html
        javascript
        json
        lua
        luadoc
        make
        markdown
        markdown_inline
        nix
        python
        query
        regex
        ruby
        sql
        tmux
        toml
        tsx
        typescript
        vim
        vimdoc
        yaml
      ];

      settings = {
        highlight = {
          enable = true;
          additional_vim_regex_highlighting = true;
        };
        incremental_selection = {
          enable = true;
        };
        indent.enable = true;
        nixvimInjections = true;
      };
    };
  };
}
