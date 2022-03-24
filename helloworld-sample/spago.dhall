{-
Welcome to a Spago project!
You can edit this file as you like.

Need help? See the following resources:
- Spago documentation: https://github.com/purescript/spago
- Dhall language tour: https://docs.dhall-lang.org/tutorials/Language-Tour.html

When creating a new Spago project, you can use
`spago init --no-comments` or `spago init -C`
to generate this file without the comments in this block.
-}
{ name = "helloworld-sample"
, dependencies = 
  [ "aff"
  , "aff-promise"
  , "arrays"
  , "console"
  , "effect"
  , "foreign"
  , "literals"
  , "node-fs"
  , "node-fs-aff"
  , "prelude"
  , "psci-support"
  , "undefined-is-not-a-problem"
  , "undefined-or"
  , "untagged-union"
  , "either"
  , "exceptions"
  , "identity"
  , "lists"
  , "maybe"
  , "node-path"
  , "strings"
  , "unsafe-coerce"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
