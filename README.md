# Shell Folder Unit

## Contents

* [Description](#description)
* [Installation](#installation)
* [Demo Program](#demo-program)
* [Update History](#update-history)
* [License and Disclaimer](#license-and-disclaimer)
* [Bugs and Feature Requests](#bugs-and-feature-requests)
* [About the Author](#about-the-author)

## Description

This unit provides various components, classes and routines for handling Windows shell folders. It contains:

* A component that provides information about a specified special shell folder.
* A class that enumerates all the special shell folders.
* Routines to manipulate special shell folder information.
* A component that encapsulates the Windows _Browse for Folder_ dialogue box.
* A property editor that enumerates special shell folder identifiers.

For full details please see the [online documentation](https://delphidabbler.com/url/shellfolders-docs).

### Compatibility

The _Shell Folders Unit_ has been tested on Delphi 7 to XE4 Windows compilers (except Delphi 2005) and the Delphi XE2 to XE4 64 bit compilers. The unit is thought to compile on compilers back to Delphi 4, but that is not guaranteed.

The unit is for use with the VCL only: it is not compatible with FireMonkey.

.NET and non-Windows platforms are not supported.

Some features require Delphi 6 and later and are not implemented when compiled with earlier compilers.

## Installation

The _Shell Folders Unit_, its components and associated property editors, documentation and demo program are supplied in a zip file. Before installing you need to extract all the files from the zip file, preserving the directory structure. The following files will be extracted:

* **`PJShellFolders.pas`** – classes, routines and component source code.
* **`PJShellFolders.dcr`** – component palette glyphs.
* **`PJShellFoldersDsgn.pas`** – property editors and component registration source code.
* `README.md` – this file.
* `CHANGELOG.md` – change log.
* `MPL-2.txt` – the Mozilla Public License v2.0.
* `Documentation.URL` – short-cut to the _Shell Folders Unit's_ online documentation.

In addition to the above files you will find the source code of a [demo project](#demo-program) in the `Demo` sub-directory.

You can now install the components into the Delphi IDE. To do this, the files `PJShellFolders.pas`, `PJShellFolders.dcr` and `PJShellFoldersDsgn.pas` should be added to a design time package. If you need help doing this [see here](https://delphidabbler.com/url/install-comp).

## Demo Program

A demo program with associated explanatory notes is included in the download. The demo lists and provides information about all the special shell folders supported by the unit.

Delphi 7 or later is required to compile the demo, which is compatible with Windows 32 and 64 bit compilers.

For more information see the [demo read-me](https://github.com/ddablib/shellfolders/blob/main/Demo/README.md) file.

## Update History

A complete change log is provided in [`CHANGELOG.md`](https://github.com/ddablib/shellfolders/blob/main/CHANGELOG.md) that is included in the download.

## License and Disclaimer

The _Shell Folders Unit_ is released under the terms of the [Mozilla Public License v2.0](https://www.mozilla.org/MPL/2.0/).

Thanks to the following who have contributed to this project:

* Philippe Lucarz
* Ryan Fischbach

All relevant trademarks are acknowledged.

## Bugs and Feature Requests

Bugs can be reported or new features requested via the project's [Issue Tracker](https://github.com/ddablib/shellfolders/issues). A GitHub account is required.

Please check if an issue has already been created for a similar report or request. If so then please add a comment containing as much information as you can to the existing issue, or if you've nothing to add, just add a :+1: (`:+1:`) comment. If there is no suitable existing issue then please add a new issue and give as much information as possible.

## About the Author

I'm Peter Johnson – a hobbyist programmer living in Ceredigion in West Wales, UK, writing mainly in Delphi. My programs and other library code are available from: [https://delphidabbler.com/](https://delphidabbler.com/).

This document is copyright © 2005-2022, [P D Johnson](https://gravatar.com/delphidabbler).
