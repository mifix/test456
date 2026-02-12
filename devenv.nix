{ pkgs, lib, config, inputs, ... }:
{
  packages = with pkgs; [
    git
    inputs.codex-nix.packages.${pkgs.system}.codex
  ];

  dotenv.enable = true;

  languages.ansible.enable = true;
}
