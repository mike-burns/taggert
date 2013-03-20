module Taggert.HelpRunner (sqlQueries, formatter) where

import Data.List (intersperse)

sqlQueries :: [String] -> [[String]]
sqlQueries _ = []

formatter _ = unlines ["usage: taggert subcommand tag [file ...]",
  "",
  "subcommands:",
  "  add",
  "  rm",
  "  ls"]
