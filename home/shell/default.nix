{ pkgs, inputs, system, ... }:

{
  programs.zsh = {
    enable = true;

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
