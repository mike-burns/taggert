module Paths_taggert (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(Version, versionBranch, versionTags))
import System.Environment (getEnv)
import Prelude ((++), FilePath, IO, return)

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch


version :: Version
version = Version {versionBranch = [0,1,0,0], versionTags = []}
bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/home/mike/taggert/cabal-dev//bin"
libdir     = "/home/mike/taggert/cabal-dev//lib/taggert-0.1.0.0/ghc-7.4.1"
datadir    = "/home/mike/taggert/cabal-dev//share/taggert-0.1.0.0"
libexecdir = "/home/mike/taggert/cabal-dev//libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catchIO (getEnv "taggert_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "taggert_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "taggert_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "taggert_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
