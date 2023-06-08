-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.DidCloseTextDocumentParams where

import Control.DeepSeq
import GHC.Generics
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Internal.Types.TextDocumentIdentifier
import qualified Language.LSP.Protocol.Types.Common

{-|
The parameters sent in a close text document notification
-}
data DidCloseTextDocumentParams = DidCloseTextDocumentParams 
  { {-|
  The document that was closed.
  -}
  _textDocument :: Language.LSP.Protocol.Internal.Types.TextDocumentIdentifier.TextDocumentIdentifier
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (NFData)

instance Aeson.ToJSON DidCloseTextDocumentParams where
  toJSON (DidCloseTextDocumentParams arg0) = Aeson.object $ concat $  [["textDocument" Aeson..= arg0]]

instance Aeson.FromJSON DidCloseTextDocumentParams where
  parseJSON = Aeson.withObject "DidCloseTextDocumentParams" $ \arg -> DidCloseTextDocumentParams <$> arg Aeson..: "textDocument"