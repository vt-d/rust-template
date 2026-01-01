{
  description = "My Rust Flake Templates";

  outputs = { self }: {
    templates = {
      simple = {
        path = ./simple;
        description = "A simple single-package Rust project with Mold + Nix";
      };

      workspace = {
        path = ./workspace;
        description = "A Cargo Workspace setup with Mold + Nix";
      };

      default = self.templates.simple;
    };
  };
}
