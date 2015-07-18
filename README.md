80steve-dot-emacs
========================

80steve-dot-emacs is the Emacs Configuration for my own usage. It's not intended to be a starter-kit or setup framework.

## Overview

- Packages are installed via [package.el] from GNU ELPA & MELPA
- Should work fine with [Mac Emacs], Homebrew Emacs or Terminal Emacs
- Cmd+P, Cmd+T are defined and ready for use (similar to textmate or sublime text)

## Notes

- Arrow keys are disabled, in case you need it, simply modify the keys-binding.el, and comment the rows containing ``(global-unset-key (kbd "<left>"))`` etc.
- ack-and-a-half package is currently disabled, due to the package being removed from the MELPA repo, and it will cause error during initialization. So if you are able to fetch the package ack-and-a-half.el elsewhere, simply uncomment the `(require 'ack-setup)` inside init.el

[package.el]: https://www.gnu.org/software/emacs/manual/html_node/emacs/Packages.html
[Mac Emacs]: http://emacsformacosx.com/
