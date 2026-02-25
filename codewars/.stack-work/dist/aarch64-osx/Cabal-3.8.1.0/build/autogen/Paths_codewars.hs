{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module Paths_codewars (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where


import qualified Control.Exception as Exception
import qualified Data.List as List
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude


#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir `joinFileName` name)

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath



bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath
bindir     = "/Users/joaofelipesoares/Development/haskell/haskell-learn/codewars/.stack-work/install/aarch64-osx/5fcdde4fcb2d3e421d904e2b141cb989eb2b75c214fa897a4eb7fb6a71f865ec/9.4.5/bin"
libdir     = "/Users/joaofelipesoares/Development/haskell/haskell-learn/codewars/.stack-work/install/aarch64-osx/5fcdde4fcb2d3e421d904e2b141cb989eb2b75c214fa897a4eb7fb6a71f865ec/9.4.5/lib/aarch64-osx-ghc-9.4.5/codewars-0.1.0.0-BM3WsMXuX7NDIxbgGOC4Vh"
dynlibdir  = "/Users/joaofelipesoares/Development/haskell/haskell-learn/codewars/.stack-work/install/aarch64-osx/5fcdde4fcb2d3e421d904e2b141cb989eb2b75c214fa897a4eb7fb6a71f865ec/9.4.5/lib/aarch64-osx-ghc-9.4.5"
datadir    = "/Users/joaofelipesoares/Development/haskell/haskell-learn/codewars/.stack-work/install/aarch64-osx/5fcdde4fcb2d3e421d904e2b141cb989eb2b75c214fa897a4eb7fb6a71f865ec/9.4.5/share/aarch64-osx-ghc-9.4.5/codewars-0.1.0.0"
libexecdir = "/Users/joaofelipesoares/Development/haskell/haskell-learn/codewars/.stack-work/install/aarch64-osx/5fcdde4fcb2d3e421d904e2b141cb989eb2b75c214fa897a4eb7fb6a71f865ec/9.4.5/libexec/aarch64-osx-ghc-9.4.5/codewars-0.1.0.0"
sysconfdir = "/Users/joaofelipesoares/Development/haskell/haskell-learn/codewars/.stack-work/install/aarch64-osx/5fcdde4fcb2d3e421d904e2b141cb989eb2b75c214fa897a4eb7fb6a71f865ec/9.4.5/etc"

getBinDir     = catchIO (getEnv "codewars_bindir")     (\_ -> return bindir)
getLibDir     = catchIO (getEnv "codewars_libdir")     (\_ -> return libdir)
getDynLibDir  = catchIO (getEnv "codewars_dynlibdir")  (\_ -> return dynlibdir)
getDataDir    = catchIO (getEnv "codewars_datadir")    (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "codewars_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "codewars_sysconfdir") (\_ -> return sysconfdir)




joinFileName :: String -> String -> FilePath
joinFileName ""  fname = fname
joinFileName "." fname = fname
joinFileName dir ""    = dir
joinFileName dir fname
  | isPathSeparator (List.last dir) = dir ++ fname
  | otherwise                       = dir ++ pathSeparator : fname

pathSeparator :: Char
pathSeparator = '/'

isPathSeparator :: Char -> Bool
isPathSeparator c = c == '/'
