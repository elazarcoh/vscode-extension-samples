module Extension
  ( activateImpl
  , deactivateImpl
  ) where

import Prelude

import Effect (Effect)
import Effect.Console as Console
import VSCode.Commands (Command)
import VSCode.Common (subscribeDisposable)
import VSCode.Types (ExtensionContext, register)
import VSCode.Window (showInformationMessage)

activateImpl :: ExtensionContext -> Effect Unit
activateImpl ctx = do
  Console.log "Congratulations, your extension \"helloworld-sample\" is now active!"
  disposable <- register "extension.helloWorld" (\_ -> showInformationMessage "Hello World!") :: Effect Command
  subscribeDisposable ctx disposable

deactivateImpl :: Effect Unit
deactivateImpl = do
  Console.log "deactivated"
