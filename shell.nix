with import <nixpkgs> { };

let
 tl = (texlive.combine {
   inherit (texlive) scheme-full
   epstopdf
   ; }).overrideAttrs (old: {
      postBuild = old.postBuild + ''
      cp -P "$out"/bin/{epstopdf,repstopdf}
      sed 's|^exec |exec -a "$0" |' -i "$out"/bin/repstopdf
      '';
   });
in mkShell {
  buildInputs = [ dia plantuml ghostscript imagemagick tl ];
}
