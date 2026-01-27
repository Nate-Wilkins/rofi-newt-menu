{ pkgs, ... }: (
  pkgs.writeShellScriptBin "rofi-newt-menu" ''
    export PROGRAM_ALACRITTY=${pkgs.alacritty}/bin/alacritty
    export PROGRAM_NEWT=${pkgs.newt}/bin/newt
    export PROGRAM_ROFI=${pkgs.rofi}/bin/rofi

    ${builtins.readFile ./src/rofi-newt-menu}
  ''
)

