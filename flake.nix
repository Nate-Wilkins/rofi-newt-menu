{
  description                                                      = "Rofi program to show Newt notes.";

  inputs                                                           = {
    systems.url                                                    = "path:./flake.systems.nix";
    systems.flake                                                  = false;

    nixpkgs.url                                                    = "github:Nate-Wilkins/nixpkgs/nixos-unstable";

    flake-utils.url                                                = "github:numtide/flake-utils";
    flake-utils.inputs.systems.follows                             = "systems";

    newt.url                                                       = "github:nate-wilkins/newt";
    newt.inputs.systems.follows                                    = "systems";
    newt.inputs.nixpkgs.follows                                    = "nixpkgs";
    newt.inputs.flake-utils.follows                                = "flake-utils";
    newt.inputs.gitignore.follows                                  = "gitignore";
    newt.inputs.fenix.follows                                      = "fenix";
    newt.inputs.asciinema-automation.follows                       = "asciinema-automation";
    newt.inputs.task-documentation.follows                         = "task-documentation";
    newt.inputs.task-runner.follows                                = "task-runner";
    newt.inputs.jikyuu.follows                                     = "jikyuu";
    newt.inputs.rust-analyzer-src.follows                          = "rust-analyzer-src";

    asciinema-automation.url                                       = "github:Nate-Wilkins/asciinema-automation/3.0.0";
    asciinema-automation.inputs.systems.follows                    = "systems";
    asciinema-automation.inputs.nixpkgs.follows                    = "nixpkgs";
    asciinema-automation.inputs.flake-utils.follows                = "flake-utils";
    asciinema-automation.inputs.fenix.follows                      = "fenix";
    asciinema-automation.inputs.jikyuu.follows                     = "jikyuu";
    asciinema-automation.inputs.rust-analyzer-src.follows          = "rust-analyzer-src";
    asciinema-automation.inputs.task-documentation.follows         = "task-documentation";
    asciinema-automation.inputs.task-runner.follows                = "task-runner";

    task-documentation.url                                         = "gitlab:ox_os/task-documentation/5.1.0";
    task-documentation.inputs.systems.follows                      = "systems";
    task-documentation.inputs.nixpkgs.follows                      = "nixpkgs";
    task-documentation.inputs.flake-utils.follows                  = "flake-utils";
    task-documentation.inputs.fenix.follows                        = "fenix";
    task-documentation.inputs.asciinema-automation.follows         = "asciinema-automation";
    task-documentation.inputs.jikyuu.follows                       = "jikyuu";
    task-documentation.inputs.rust-analyzer-src.follows            = "rust-analyzer-src";
    task-documentation.inputs.task-runner.follows                  = "task-runner";

    task-runner.url                                                = "gitlab:ox_os/task-runner/4.0.2";
    task-runner.inputs.systems.follows                             = "systems";
    task-runner.inputs.nixpkgs.follows                             = "nixpkgs";
    task-runner.inputs.flake-utils.follows                         = "flake-utils";
    task-runner.inputs.fenix.follows                               = "fenix";
    task-runner.inputs.asciinema-automation.follows                = "asciinema-automation";
    task-runner.inputs.jikyuu.follows                              = "jikyuu";
    task-runner.inputs.rust-analyzer-src.follows                   = "rust-analyzer-src";
    task-runner.inputs.task-documentation.follows                  = "task-documentation";

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Transatives
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
    fenix.url                                                      = "github:nix-community/fenix";
    fenix.inputs.nixpkgs.follows                                   = "nixpkgs";
    fenix.inputs.rust-analyzer-src.follows                         = "rust-analyzer-src";

    gitignore.url                                                  = "github:hercules-ci/gitignore.nix";
    gitignore.inputs.nixpkgs.follows                               = "nixpkgs";

    rust-analyzer-src.url                                          = "github:rust-lang/rust-analyzer/nightly";
    rust-analyzer-src.flake                                        = false;

    jikyuu.url                                                     = "github:Nate-Wilkins/jikyuu/3.0.1";
    jikyuu.inputs.systems.follows                                  = "systems";
    jikyuu.inputs.nixpkgs.follows                                  = "nixpkgs";
    jikyuu.inputs.flake-utils.follows                              = "flake-utils";
    jikyuu.inputs.fenix.follows                                    = "fenix";
    jikyuu.inputs.asciinema-automation.follows                     = "asciinema-automation";
    jikyuu.inputs.rust-analyzer-src.follows                        = "rust-analyzer-src";
    jikyuu.inputs.task-documentation.follows                       = "task-documentation";
    jikyuu.inputs.task-runner.follows                              = "task-runner";
  };

  outputs                                                        = {
    nixpkgs,
    flake-utils,
    asciinema-automation,
    newt,
    task-runner,
    task-documentation,
    ...
  }:
########################################################################################################################
#⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀#
#⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ Configuration ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀#
#⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀#
########################################################################################################################
    let
      mkPkgs                                        =
        system:
          pkgs: (
            # NixPkgs
            import pkgs { inherit system; }
            //
            # Custom Packages.
            {
              asciinema-automation                  = asciinema-automation.defaultPackage."${system}";
              newt                                  = newt.defaultPackage."${system}";
              task-documentation                    = task-documentation.defaultPackage."${system}";
            }
          );
    in (
      flake-utils.lib.eachDefaultSystem (system: (
        let
          pkgs                                      = mkPkgs system nixpkgs;
          manifest                                  = (pkgs.lib.importTOML ./package.toml);
          name                                      = manifest.name;
          environment                               = {
            inherit system nixpkgs pkgs;
          };
        in rec {
          packages.${name}                          = pkgs.callPackage ./default.nix environment;
          legacyPackages                            = packages;

          # `nix build`
          defaultPackage                            = packages.${name};

          # `nix run`
          apps.${name}                              = flake-utils.lib.mkApp {
            inherit name;
            drv                                     = packages.${name};
          };
          defaultApp                                = apps.${name};

          # `nix develop`
          devShells.default                         = import ./shell/default.nix (
            environment
          // {
            taskRunner                              = task-runner.taskRunner.${system};
          });
        }
      )
    )
  );
}


