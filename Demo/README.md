# Shell Folders Unit Demo

## Introduction

This project is provided with the DelphiDabbler _Shell Folders Unit_ to demonstrate how to use some of the code in the unit.

The project requires Delphi 7 as a minimum and should compile on all later compilers. Both 32 bit and 64 bit Windows targets are supported when compiling with Delphi XE2 or later. The project has been tested with Delphi 7, 2006, 2007, 2009, 2010, XE, XE2, XE3 and XE4.

## Installing the Demo Project

The demo project is provided in the same zip file as the _Shell Folders Unit_.

**_The Shell Folder components must be installed before trying to compile this demo._** If compiling for a 64 bit Windows target ensure that the components have been built into a 64 bit package.

Copy the code from the `Demo` sub-folder of the zip file to some suitable location on your hard drive then open the `ShellFolderDemo.dpr` project in Delphi. If the compiler can't find the component's `.dcu` file, place the directory where you installed the components on your compiler's search path.

By default the demo compiles as a 32 bit Windows application. When using Delphi XE2 or later you can compile the project as a 64 bit Windows application simply by using the IDE to add a 64 bit target to the project and recompiling.

## Overview

The program exercises much of the main code in `PJShellFolders.pas`. On starting the program displays information about each of the supported special shell folders in the main part of the window. This information is:

* ID: the symbolic constant associated with the folder.

* Display name: the display name of the folder (or `<not supported>` if the folder is not supported by the underlying operating system).

* Folder path: the path to the folder in the file system. If the folder is not part of the physical file system, i.e. is virtual, then `<virtual folder>` is displayed. No entry is present for unsupported folders.

Below the main display are several controls:

* _Browse selected folder_ button

  Clicking this button displays the _Browse for Folder_ dialogue box with the selected special folder as the root in the display. Click the button to experiment with the dialogue, the behaviour of which changes according to the state of other controls. If the selected folder is not supported by the operating system then the button is disabled. The dialogue can also be displayed by double clicking the folder's entry in the display.

* _Dialog Box Options_ group box

  This group box contains check boxes that enable and disable associated options in the browse dialogue box's _Options_ properties, as follows:

  * _Show Help_

    Displays a help button in the dialogue box. The button will be disabled because no help context is assigned to the dialogue box – assigning a non-zero help context would enable the button.

    > **Note:** No help button is displayed if _New Style Dialog_ is checked.

  * _Context Help_

    Displays a "**?**" button in the dialogue box title and enables context sensitive help.

    > **Note:** this only works on some versions of Windows.

  * _Status Text_

    Displays status text in the dialogue box. The status text is set in the demo's _OnSelChange_ and _OnSelChangeEx_ event handlers.

    > **Note:** Status text is not displayed if _New Style Dialog_ is checked.

  * _Directories Only_

    Displays only folders from the file system in the dialogue box. Virtual folders are not displayed.

  * _New Style Dialog_

    Displays the dialogue in the new style. It is resizeable and displays a _Make New Folder_ button by default.

  * _Hide "Make Folder" Button_

    Hides the _Make New Folder_ button that appears by default on the new style dialogue.

    > **Note:** This option is ignored if _New Style Dialog_ is not checked.

  * _Display Edit Box_

    Displays an edit control in the dialogue box. Enter a path in this control. A valid path will be used as the selected folder when the dialogue box is closed.

    > If the entered path is not valid it will be ignored and the _OnValidationFailed_ event will be triggered, if assigned.

  * _Display Usage Hint_

    Causes a usage hint to appear in the dialogue box when checked.

    > _New Style Dialog_ must be checked and _Display Edit Box_ must be cleared for this to take effect. Furthermore `shlobj.dll` v6.0 or later is also required for this option to take effect.

* _Bold Headline Text_ check box

  When checked, the _Browse for folder_ dialogue box will display its headline text in bold, using the main form's font. This customisation is carried out in the demo program's _OnInitialize_ event handler.

* _Use OnSelChange_ radio button

  When this button is checked the browse dialogue box component uses the demo's _OnSelChange_ event handler when the selected folder changes. The event handler displays the name of the selected folder in the dialogue's status text and ensures the _OK_ button is always enabled.

  > This event handler does not display status text when _New Style Dialog_ check box is checked since the new style dialogue box does not support status text.

* _Use OnSelChangeEx_ radio button

  When this button is checked the browse dialogue box component uses the demo's _OnSelChangeEx_ event handler when the selected folder changes. The event handler sets the dialogue's status text to indicate the name of the selected folder, along with information about whether the folder is virtual. The path to the folder and its small and large icons are displayed in the main window.

  > This event handler does not display status text when the _New Style Dialog_ check box is checked.

* _Use OnValidationFailed_ check box

  When this check box is checked the browse dialogue component uses the demo's _OnValidationFailed_ event handler when an invalid path is entered in any edit control in the dialogue box. The invalid path is displayed and the user is asked to decide whether the dialogue box is closed.

## Source Code

The main purpose of this demo is to provide source code that shows how to use the various classes and components from the `PJShellFolders` unit. The code of `ShellFolderDemoForm.pas` illustrates the following:

* The _DisplaySpecialFolders_ method (called from _FormCreate_) uses the _IPJSpecialFolderEnum_ interface, implemented by the _TPJSpecialFolderEnum_ class, to display details of all supported folders in the main window. The code uses the _TPJSpecialFolderInfo_ component to get the information to display.

* The _IsSelectionSupported_ method uses the _TPJSpecialFolderInfo_ component to test to see if the currently highlighted folder is supported by the operating system.

* The _BrowseButtonClick_ event handler sets up the _TPJBrowseDialog_ component to display the _Browse for Folders_ dialogue box, using the selected special folder as its root node. The _TPJBrowseDialog.Execute_ method is called to display the dialogue box. This causes the component's _OnInitialise_ event to fire – how this is handled is described below.

* The _BrowseDialogInitialise_ method handles the _TPJBrowseDialog.OnInitialise_ event and makes the dialogue box headline text in bold if the _Bold Headline Text_ check box is checked.

* As folders are selected in the the browse dialogue either the _TPJBrowseDialog.OnSelChange_ or _TPJBrowseDialog.OnSelChangeEx_ events are handled by the _BrowseDlgSelChange_ or _BrowseDlgSelChangeEx_ methods respectively, according to the state of the _Use OnSelChange_ and _Use OnSelChangeEx_ radio buttons. These event handlers perform as follows:

  * _BrowseDlgSelChange_: This event handler simply displays the selected folder's display name in the dialogue's status text and ensures the dialogue's _OK_ button is always enabled.

    > Status text is ignored if the dialogue box has the new style.

  * _BrowseDlgSelChangeEx_: This event handler gets the display name and path from the PIDL passed to the handler and displays folder information in the dialogue's status text. It then gets the handle of the small and large icons associated with the folder, along with the folder's path and displays them in the main form.

    > Status text is ignored if the dialogue has the new style.

* The _BrowseDlgValidationFailed_ event handler handles any _TPJBrowseDialog.OnValidationFailed_ events if the _Use OnValidationFailed_ check box is checked. It reports the name of the invalid folder entered into the browse dialogue's edit control then asks the user if the dialogue box is to be closed.

  > The _Display Edit Box_ option check boxes must be checked to include the required edit control in the dialogue box.

* When the browse dialogue is closed, the _TPJBrowseDialog.OnClose_ event is triggered and handled by the _BrowseDlgClose_ event handler. This simply ensures that any icons and path displayed in the main window are cleared.

You should run the program and examine the source code to get an idea about how to use the `PJShellFolders` unit.

## Bugs

If you find any bugs in the demo or the _Shell Folders Unit_ please report them using the [Issue Tracker](https://github.com/ddablib/shellfolders/issues). A GitHub account is required.

----

This document is copyright © 2005-2022, [P D Johnson](https://gravatar.com/delphidabbler).
