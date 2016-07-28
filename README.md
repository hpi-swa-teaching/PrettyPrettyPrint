# SWT16-Project-08 [![Build Status](https://travis-ci.org/HPI-SWA-Teaching/SWT16-Project-08.svg?branch=master)](https://travis-ci.org/HPI-SWA-Teaching/SWT16-Project-08)

Implementation Details
=================
The project contains three classes that aggregate most logic and a set of classes used to represent the abstract syntax tree (AST) of a method.

#### The PPPTokenizer

The tokenizer implements the stream interface. It operates on a string and returns instances of PPPToken. The tokens are identified via symbolic constants, but have a number of test methods for more fine grained check on their contents (e.g. isOpeningCurlyBrace, isIdentifier, ...). Repeatedly calling its `next` method (as per Stream interface) will yield new tokens, until an EOF token is returned.

#### The PPPParser

The parser takes a stream of tokens (so for us directly the PPPTokenizer) and builds the AST based on those. To facilitate understanding the parsing process and to give the methods a degree of isolation, `self nextToken` always points at the first token of the node that is to be parsed upon entry of any `parse*` method (this contract is also the reason why `self nextNextToken` had to be created for assignments).

Rough code flow when parsing a method is as follows:
* The method header is parsed (`parseMethod`, then either one of `parseBinaryMessageDeclaration`, `parseNamedMessageDeclaration`, `parseUnaryMessageDeclaration`)
* The body of the method is parsed into a PPPSequenceNode (`parseSequence`)
* To parse the sequence, `parseStatement:` is called repeatedly, until the end of the method is reached.
* `parseStatement` differentiates between assignments, return statements and message sends.
* message sends are further broken up into its three different types and special cases like cascades.
* Any value (blocks, numbers, literals, ...) is regarded as receiver (`parseReceiver`) (if it's just an argument, it will later not be wrapped in a `PPPMessageNode`)

Methods responsible for parsing message sends carry a `PPPParserState` with them. This is required for keeping the parse methods isolated while still maintaining the knowledge of whether we are currently parsing a multi part named message or a cascade.

#### The PPPPrinter
The printer is implemented as a visitor over the AST. Each `visit*` method returns a string (so that the resulting length of a subexpression can be determined before printing it). The indent is kept within the object and can be incremented or decremented upon encountering nodes that require such a change. `newLineIndentOn:` can then be used to directly print a newline and the current indent on a given buffer.

Different methods can be used for pretty pretty printing (more on preferences can be found in the next section):
* Calling just `format:` will use the default set of preferences.
* `format:preferences:` allows to tweak the default settings before they are used.
* `userProfileFormat:` will use the current global profile.
* `format:in:notifying` and `format:in:notifying:decorated:` are called by the CodeHolders to get pretty print. In practice, only the supplied string prove to be relevant for us, so we are ignoring all other parameters.

#### The PPPPSettingsProfile
The printer has a PPPSettingsProfile that can be tweaked or overriden. Its settings are used during the printing process.

On its class side, all options are duplicated. This is done to provide user settings inside the Squeak Preference Browser. Having the duplicated options allows to provide the preferences in the browser, while also being able to override them e.g. in tests or, later on, on a per project basis. Having a single global set of options, on the other hand, prove impractical for both the user and testing.

When any option on the class side is changed, all CodeHolder subinstaces are asked to force refresh their contents, resulting in a live preview of the settings change. To suppress this behavior (e.g. when loading a set of preferences), call `freezeCodeHolderRefresh`.

The class allows to import and export the profile to the filesystem via `importUserProfileFromFileNamed:` and `exportUserProfileFromFileNamed:`.

