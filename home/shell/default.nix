{ pkgs, inputs, system, ... }:

{
  home.packages = with pkgs; [ ripgrep ];

  programs.zsh = {
    enable = true;
    autocd = true;
    enableSyntaxHighlighting = true;
    shellAliases = {
      vi = "nvim";
      vim = "nvim";
      vimdiff = "nvim -d";
    };
  };

  programs.fzf.enable = true;

  programs.tmux = {
    enable = true;
    prefix = "C-Space";
    escapeTime = 0;
    baseIndex = 1;
  };

  programs.git = {
    enable = true;
    userName = "Jeanre Swanepoel";
    userEmail = "jeanres@icloud.com";
    extraConfig = {
      init = {
        defaultBranch = "main";
      };
      merge = {
        ff = "only";
      };
      pull = {
        rebase = true;
      };
      rebase = {
        autoSquash = true;
        autoStash = true;
      };
      commit = {
        verbose = true;
      };
      url = {
        "ssh://git@github.com/" = {
          insteadOf = [ "github:" "gh:" ];
        };
      };
    };
  };

  programs.starship.enable = true;
  programs.direnv.enable = true;
}
