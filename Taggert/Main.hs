module Main (main) where

import System.Environment (getArgs)
import qualified Taggert.HelpRunner as HelpRunner
import qualified Taggert.AddRunner as AddRunner

data Runner = Runner {
  sqlQueries :: [String] -> [[String]],
  formatter :: [String] -> String
}

main :: IO ()
main = do
  (runnerType:args) <- getArgs
  let runner = runnerForArgs runnerType
  let queries = (sqlQueries runner) args
  results <- runQueries queries
  putStrLn $ (formatter runner) results

runnerForArgs :: String -> Runner
runnerForArgs "add" = Runner AddRunner.sqlQueries AddRunner.formatter
runnerForArgs _ = Runner HelpRunner.sqlQueries HelpRunner.formatter

runQueries :: [[String]] -> IO [String]
runQueries [] = return []
