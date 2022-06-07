# Change Log for Shell Folders Unit

## v2.3.2 of 11 January 2014

+ Fixed problem with compiler directives in component and demo source files that was causing compilation to fail on Delphi XE5.
+ Fixed further conditional compilation problem in demo source where wrong unit uses clause was being compiled in Delphi XE2 and later.
+ Fixed demo program to compile without warnings with Delphi XE3 and later.
+ Minor documentation tweaks and corrections.

## v2.3.1 of 05 November 2013

+ Modified components to compile and function correctly with 64 bit Delphi compilers.
+ Changed type of _TPJBrowseDialog.Handle_ property from _THandle_ to _HWND_.
+ Unit names in all Pascal source files are now qualified with their name-spaces on Delphi XE2 and later.
+ Changes to avoid use of a deprecated Windows API function on later versions of Windows.
+ Changes to demo projects:
  + Font changed to Arial 9pt
  + Size of form and some controls changed.
  + Form file is now in text format.
  + Form is no longer scaled.
  + The demo now needs Delphi 7 as a minimum.
+ Some refactoring.
+ License changes:
  + Component source license changed to Mozilla Public License v2.0
  + Demo source code placed in public domain (Creative Commons CC0 1.0 Universal).
+ MPL text file and documentation wiki short-cut have had names changed.
+ WinHelp help file regenerated with updated copyright date.
+ Updated documentation.

## v2.3 of 29 January 2010

+ Changes to _TPJBrowseDialog_:
  + New display options for hiding "make new folder" button, displaying UA hints and including edit box to use to enter folder names.
  + New events:
    + _OnValidationFailed_, for when entry in edit box is not valid and
    + _OnHelp_ triggered when help requested to provide custom help handling.
  + New _HelpType_ and _HelpKeywords_ properties (compiled in for Delphi 6 and later only).
  + Modified dialogue initialisation to ensure _OnSelectChangeXXX_ events triggered for default selection.
+ Updated demo program to demonstrate new options and _OnValidationFailed_ event.
+ Improved checks for valid special folder IDs to allow for use of _CSIDL_FLAG_CREATE_ mask.
+ Re-factored code that frees PIDLs
+ Added new _CSIDL_FLAG_XXX_ and _BIF_XXX_ constants.
+ Updated help file and other documentation.

## v2.2.5 of 27 January 2010

+ Fixed shell folders unit to compile with Unicode Delphis.
+ Fixed bug that can freeze program if exception occurs when help system called when no help system installed in Delphi.
+ Switched off some compilation warnings on Delphi 7 and later.
+ Simplified compiler directives.
+ Updated documentation.
+ Included copy of MPL in release.

## v2.2.4 of 03 July 2007

+ Removed _CSIDL_XXX_ constants that were provisionally slated for Windows Vista but were removed from MSDN documentation.
+ Changed tests for valid folder ids to ignore any _CSIDL_FLAG_XXX_ values that may have been included with the folder id.
+ Added various additional _CSIDL_FLAG_XXX_ constants.
+ Changed _TPJBrowseDialog.Options_ property to permit any combination of values. Certain options are now ignored when used in combination with others.
+ Added _TPJBrowseDlgOption_ enumeration that provides basis of _TPJBrowseDlgOptions_ set. Previously enumeration was defined in set declaration.
+ Changed to always initialise COM regardless of whether code used to display new style browser for folder. Previous code that selectively initialised COM was buggy.
+ Re-factored some duplicated code.
+ Fixed code that enables / disables browser dialogue box OK button to work with new style dialogue.
+ Made help button caption able to be localised.
+ Updated help file re changes to _TPJBrowseDialog.Options_ property.
+ Updated demo program, simplifying browse dialogue customisation and giving access to all browse dialogue options.

## v2.2.3 of 12 April 2006

+ Added new _CSIDL_XXX_ special folder and folder creation constants.

## v2.2.2 of 22 December 2005

+ Updated to compile with Delphi 2005/6.
+ Removed Delphi 3 specific code.
+ Fixed range check bug in demo program and changed icon from Delphi default to DelphiDabbler.

## v2.2.1 of 09 January 2005

+ Fixed bug in shell folder ID property editor that was preventing user from changing the value of properties at design time.

## v2.2 of 22 August 2004

+ Added support for new dialogue style enabled via the Options property.
+ Provided default specifier of `0` for _HelpContext_ property.
+ Added further special folder identifiers.
+ Updated help file re new _TPJBrowseFolder_ new dialogue style option and added additional `A` keywords to improve Delphi help integration.
+ Updated text of Help about box.
+ Added new `.als` file for integrating with Delphi 6 and 7 OpenHelp system.
+ Added code to exercise new style dialogue box to demo program.
+ Changed to Mozilla public license v1.1.

## v2.1 of 29 July 2003

+ Prevented compiler warnings being issued when compiling under Delphi 6 and 7.
+ Added support for additional special shell folders.
+ Modified demo program.

## v2.0 of 15 June 2003

+ Fixed bug that meant that display name wasn't being shown correctly in Win NT OSs.
+ Added new _OnSelChangeEx_ event to _TPJBrowseDialog_ component that exposes selected folder's PIDL.
+ Enabled _TPJBrowseDialog_ to display and accept virtual as well as file system folders.
+ _TPJBrowseDialog_ now displays disabled help button when _HelpContext_ is 0.
+ Additional shell folder identifiers missing from Delphi 3 are now conditionally placed in interface of unit in Delphi 3.
+ Added new public functions to get folder path and display name from PIDLs.
+ All errors in components and routines now raise _EPJShellFolder_ exceptions.
+ Property editor and component registration moved to separate design time unit.
+ Help file corrected and updated.
+ Demo program added.

## v1.0 of 01 April 2001

+ Original version with help file and HTML documentation.
