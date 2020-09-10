.*==============================================================*\
.*                                                              *
.* Options.ipf - Information Tag Language file for the screens  *
.*              for help on Options menu items.                 *
.*  Copyright 1999 Excelsior. All Rights Reserved.              *
.*  Copyright 1996,97 xTech Ltd                                 *
.*                                                              *
.*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - *
.*                                                              *
.* Helps for OPTIONS menu and its items:                        *
.*      PANEL_OPTIONS                                           *
.*        PANEL_OPTSETTINGS                                     *
.*        PANEL_OPTASSOCIATIONS                                 *
.*        PANEL_OPTMACROS                                       *
.*                                                              *
.* Helps for appropriate dialogs:                               *
.*                                                              *
.*      PANEL_EDOPTDLG                                          *
.*      PANEL_ASSDLG                                            *
.*      PANEL_EDASSLISTDLG                                      *
.*      PANEL_EDVARDLG                                          *
.*      PANEL_MACRODLG                                          *
.*      PANEL_EDMACRODLG                                        *
.*      PANEL_MACROMONDLG                                       *
.*      PANEL_EDITCLRDLG                                        *
.*      PANEL_MAKECLRDLG                                        *
.*                                                              *
.*==============================================================*



.*>>>>>> LDV: ����, � ��� ���� Editor options dialog, �� �� - Settings � ���� options. ����� ���
.*       ���-����� �������筮 �������. ���? ���� Editor options - � ���� ⠪ ����� ����� ������� :)

.*--------------------------------------------------------------*\
.*  Main Options menu                                           *
.*      res = PANEL_OPTIONS                                     *
.*--------------------------------------------------------------*/
:h1 res=2600 name=PANEL_OPTIONS.Options Menu
:i1 id=Options.Options Menu
:p.The Options menu contains commands that you use to set edit windows
font/colors and various IDE options. The following commands appear in the
Options menu:
:parml compact tsize=3 break=all.
:pt.:hp2.Settings:ehp2.
:pd.Changes current editor settings: font, colors...
:pt.:hp2.Associations:ehp2.
:pd.Changes files associations: default editor settings
for different file types.
:pt.:hp2.Macros:ehp2.
:pd.Changes keyboard macros.
:eparml.


.*--------------------------------------------------------------*\
.*  Options menu Settings command help panel                    *
.*      res = PANEL_OPTSETTINGS                                 *
.*--------------------------------------------------------------*/
:h1 res=2605 name=PANEL_OPTSETTINGS.Settings
:i2 refid=Options.Settings
:p.Use the :hp2.Settings:ehp2. command to change the current editor
settings: font, colors, syntax highlighting etc.
:p.Mouse shortcut: Toolbar :artwork runin name='..\res\settings.bmp'.

.*--------------------------------------------------------------*\
.*  Options menu Associations command help panel                *
.*      res = PANEL_OPTASSOCIATIONS                             *
.*--------------------------------------------------------------*/
:h1 res=2610 name=PANEL_OPTASSOCIATIONS.Associations
:i2 refid=Options.Associations
:p.Use the :hp2.Associations:ehp2. command to change file associations:
default editor settings for different file types.

.*--------------------------------------------------------------*\
.*  Options menu Macros command help panel                      *
.*      res = PANEL_OPTMACROS                                   *
.*--------------------------------------------------------------*/
:h1 res=2615 name=PANEL_OPTMACROS.Macros
:i2 refid=Options.Macros
:p.Use the :hp2.Macros:ehp2. command to change keyboard macros.

.*--------------------------------------------------------------*\
.*  Editor options dialog box help panel                        *
.*      res = PANEL_EDOPTDLG                                    *
.*--------------------------------------------------------------*/
:h1 res=2620 name=PANEL_EDOPTDLG.Editor settings dialog box
:i1.Editor settings dialog
(�����, ����⭮, ᪠����, �� ��� ������ ��宦 �� ������ ���樠権,
⠬ ���� ��-� �������������� ���� :) )
Highlight mode - dropdownlist � ������묨 ⨯��� 䠩���. (� �� ����� ���-�����
  ᮡ�ࠥ��� �������� ��� ��楯������ highligh-���?).
Tab width - spin button
Smart tab - �᫨ � ��ப� ��� �ࠢ�� ��� ���� �஡��(�), � �� ��⠭�� ��᫥ ���,
  ���� - ����� tab
Autoident mode - CR under line
Paste replaces selection - subj
Color frame:
  Color palettes: click  - set
                  2clisk - edit & set (PANEL_EDITCLRDLG)
  Selected colors sample:
                  2clisk - edit (PANEL_EDITCLRDLG)
  Highlight syntax
  Highlight current line
  Apply to all - apply changes 2 ALL editors
Font frame:
  sample
  Apply to all - apply font changes 2 ALL editors
  Change
Ok
Cancel
Help


.*--------------------------------------------------------------*\
.*  Associations dialog box help panel                          *
.*      res = PANEL_ASSDLG                                      *
.*--------------------------------------------------------------*/
:h1 res=2625 name=PANEL_ASSDLG.Associations dialog box
:i1.Associations
:p.To change associations (the default editor settings for files
whose names match a particular template)&colon.
:ol.
:li.Select the :hp2.Global list:ehp2. or the :hp2.Local list:ehp2.
radiobutton to select the appropriate list of associations. !!! ref
:li.Select a filename template from the :hp2.Associate with files:ehp2.
list or select the :hp2.Edit list:ehp2. pushbutton to edit the list
of filename templates.
:li.Select a highlight mode.
:li.Select one of the eight predefined color schemes for the mode
or double click the current color scheme to edit it.
:
Associate with files frame
  Allows us to select the association we want to edit.
  Dropdown list - ᯨ᮪ 蠡����� ���� 䠩���. ��� ᯨ᪮� ��� - ��������
    � �������. ��� ��४��祭�� ����� ���� �㦠� ࠤ�����⮭�:
    Global list
    Local list
  Edit list - ������ ।���஢���� ���⮢. (PANEL_EDASSLISTDLG)
Highlight mode - dropdownlist � ������묨 ⨯��� 䠩���. (� �� ����� ���-�����
  ᮡ�ࠥ��� �������� ��� ��楯������ highligh-���?).
Tab width - spin button
Smart tab - �᫨ � ��ப� ��� �ࠢ�� ��� ���� �஡��(�), � �� ��⠭�� ��᫥ ���,
  ���� - ����� tab
Autoident mode - CR under line
Paste replaces selection - subj
Color frame:
  Color palettes: click  - set
                  2clisk - edit & set (PANEL_EDITCLRDLG)
  Selected colors sample:
                  2clisk - edit (PANEL_EDITCLRDLG)
  Highlight syntax
  Highlight current line
Font frame:
  sample
  Change
  Change all - �ࠧ� ��� ��� ���樠権
Ok
Cancel
Help


.*--------------------------------------------------------------*\
.*  Edit association lists dialog box help panel                *
.*      res = PANEL_EDASSLISTDLG                                *
.*--------------------------------------------------------------*/
:h1 res=2630 name=PANEL_EDASSLISTDLG.Edit association lists dialog box
:i2 refid=Associations.Edit association lists dialog box
�����������, ��祬 ᮢ��襭�� ᨬ����筮, ��� ����: �������� � �������.
����஫�:
Local list
Global list
����� ������� ���� - ������:
  �� ��५���� ����� � ���� - �������� ���㯮�冷稢��� ���樠樨. ���冷�
    ���᪠ ���樠権: ��᫥����⥫�� ��ॡ�� ᭠砫� � �����쭮�, ��⥬ - �
    ������쭮� ���� �� ᮢ������� ����� 䠩��. � ������쭮� ���� _�ᥣ��_ ����
    ��㭨�⮦���� ���� '*', ⠪ �� ���� ���祭 �� �ᯥ�.
    ������������ 䠩� ᮮ⢥����� 蠡���� "*".
  New - ����� ⥬���� ����� 䠩�� ��� ����� ᮧ������ ���樠樨. ��樨 � ⠪��
    ���樠樨 ���� �ந��樠����஢��� �� �������.
  Edit - ।���஢���� ⥬����
  Duplicate
  Remove
���樠樨 ����� �᪠�� ����� ���⠬�: >>Copy, <<Copy, >>Move, >>Move
� ⥬����� ����᪠���� �ᯮ�짮����� �᪨� (�� � ��⮬���᪨�, ����⭮ :))
��६�����.
Variable list - ������ ।���஢���� �᪨� ��६����� (PANEL_EDVARDLG)
Ok
Cancel
Help
Note: ����� ��������/᪮��஢��� ��म�।������ ⥬���� '*' � ������쭮� ����.

.*--------------------------------------------------------------*\
.*  Variables list dialog box help panel                        *
.*      res = PANEL_EDVARDLG                                    *
.*--------------------------------------------------------------*/
:h1 res=2635 name=PANEL_EDVARDLG.Edit user variables list dialog box
:i1 refid=Variables list dialog box
� ���� ����᫥��� �᪨� ��६���� � �ଥ name = "value"
New         - ������ ��� � ᮧ���� ��६����� � ����� ���祭���
Edit name   - �।����� �������� ���
Edit value  - �।����� �������� ���祭��
Remove
Ok
Cancel
Help

.*--------------------------------------------------------------*\
.*  Macros dialog box help panel                                *
.*      res = PANEL_MACRODLG                                    *
.*--------------------------------------------------------------*/
:h1 res=2640 name=PANEL_MACRODLG.The macro manager
:i1.Macro manager
:p.The macro manager provides keyboard macro control facilities. It displays
the list of :hp3.global:ehp3. macros, which are available in all
:link refid=PANEL_CONCEPTSWORKPLACES.workplaces:elink.
and the list of macros which are local to the current workplace.
Both lists have very similar sets of associated pushbuttons:
:dl break=all tsize=3.
:dt.:hp2.Up/Down arrows:ehp2.
:dd.Move the currently selected macro one line up or down in the list.
:dt.:hp2.Copy to local:ehp2.
:dd.:hp3.Copies:ehp3. the currently selected global macro to the local list.
:dt.:hp2.Move to global:ehp2.
:dd.:hp3.Moves:ehp3. the currently selected local macro to the global list.
:dt.:hp2.Edit:ehp2.
:dd.Edits the currently selected macro.
:dt.:hp2.New:ehp2.
:dd.Adds a new macro to the list.
:dt.:hp2.Duplicate:ehp2.
:dd.Duplicates the currently selected macro.
:dt.:hp2.Remove:ehp2.
:dd.Removes the currently selected macro.
:dt.:hp2.Ok:ehp2.
:dd.Commits changes and exits the Macro manager.
:dt.:hp2.Cancel:ehp2.
:dd.Exits the Macro manager, abandoning all changes.
:edl.
.* Global list -
.* Local list  - ���� ����ᮢ. ��ᯮ������� �冷� ������ � ����. ��५����
.* ��������� ���㯮�冷稢��� ������ � ����, ������ Copy to local & Move to global,
.* � ⠪ �� Duplicate � Remove - �ᮢ��� ����� ��直�� ��ࠧ���.
.* �� ����⨨ ������ ������ ������ ᭠砫� � �����쭮�, ��⥬ - � ������쭮�
.* ���� �� ���浪�. �᫨ ��室���� ����� ��� ������, �� ⨯ 䠩�� � ���� �� ᮢ������ -
.* ���� �த��������.
.* �������: ������ �������� ������, ������ �ᥬ �஥�⠬ - �����. ����� ���
.* ������. �������⥫� ᮤ�ন��� � �ਯ� MkXdsIni.cmd - �� ᭥�� ��������
.* ���� � �ய��� ��䮫��. ��� �᪠�� 䠩� XD$.INI ����� ��᪠����...
.* ����ন��� ���� ����� ��������, �맢�� ������ ।���஢���� ����� (PANEL_EDMACRODLG)
.* ������� Edit.
.* �஬� ⮣�, ����� ᮧ���� ������� ����� �� Alt+= �� ।���� (PANEL_MACROMONDLG)...
.* ���-� ��� ᫥������ �� ���㬥��஢��� ४ᮢ� �㭪樨, ����� ��� �⠭��
.* ��� �������... :)
.*
.* ����஫�:
.* �����:
.*   Global macros list
.*   Copy to local
.*   Edit - (PANEL_EDMACRODLG)
.*   New  - ⮦� ����᪠�� ।���஢���� (PANEL_EDMACRODLG)
.*   Duplicate
.*   Remove
.*
.* ��ࠢ�:
.*   Local macros list
.*   Move to global
.*   Edit - (PANEL_EDMACRODLG)
.*   New  - ⮦� ����᪠�� ।���஢���� (PANEL_EDMACRODLG)
.*   Duplicate
.*   Remove
.*
.* Ok, Cancel, Help

.*--------------------------------------------------------------*\
.*  Edit macro dialog box help panel                            *
.*      res = PANEL_EDMACRODLG                                  *
.*--------------------------------------------------------------*/
:h1 res=2645 name=PANEL_EDMACRODLG.Edit macro dialog box
:i1.Edit macro dialog box
:p.To enter or edit the macro comment&colon.
:ol compact.
:li.Type a new or edit the existing comment in the :hp2.Comment:ehp2.
field.
:li.Select the :hp2.Ok:ehp2. pushbutton.
:eol.
:p.To change the associated key combination.
:ol compact.
:li.Select the :hp2.Key:ehp2. field using the mouse.
:li.Press the desired key combination for the macro.
:li.Select the :hp2.Ok:ehp2. pushbutton.
:eol.
:note.Some keys and key combinations may only be entered by
pressing the :hp2....:ehp2. pushbutton next to the :hp2.Key:ehp2.
field and typing them manually.
.* !!! Move to a separate topic
:p.To set or modify the associated filename filter:
.* !!! ref
:ol compact.
:li.Type the filter in the :hp2.Required file:ehp2. field.
:li.Select the :hp2.Ok:ehp2. pushbutton.
:eol.
:p.To modify the macro itself:
.* !!! ref
:ol compact.
:li.Edit the REXX script in the MLE field.
:li.Select the :hp2.Ok:ehp2. pushbutton.
:eol.
:p.Detailed description of controls:
:dl break=all tsize=3.
:dt.:hp2.???:ehp2.
:dd.???

.*--------------------------------------------------------------*\
.*  Edit macro dialog box help panel                            *
.*      res = PANEL_MACROMONDLG                                 *
.*--------------------------------------------------------------*/
:h1 res=2650 name=PANEL_MACROMONDLG.Macro recording monitor
:i1.Macro recording monitor
Comment - ��ப� ��������� ��� ������ � ����� � (PANEL_MACRODLG),
����� ��
��������.
Key     - ��� �������� �������� ������. �� ����᪥ ������ ��,
���� �����,
���� 䮪��
          �⮬� ����� � ���� ������ ������. ��᫥ �⮣� - ��४��砥���
���⭮ �� �������
          � ���� �����. �� ����୮� �맮�� ������ (��� �� ���室� � ����
��让) �� ��⮢
          � ����������� ᮧ������ �����. ��� ����� ����� ���㫨�� ���祭��
��⠭���� �
          ������, ����� �������� � ������� � �த������ ������ ���஢�.
Required file - 蠡��� ����� 䠩��. ��࠭�稢��� ������� �ਬ������
�����
          ᨬ� 䠩����.
������:
Done    - �᫨ ��� ������ ������ 㦥 ��।���� �����, � ����:
�������� ��
���.
          �� �⪠�� - ��୥��� � ������ (����� �������� ������).
Cancel
Details>> / No details - ����砥�/�몫�砥� ���७��� ����, �
���஬ �����
������ (�� �� ।���஢���)
          ⥪�� ᮧ��������� �����.
Help.

.*--------------------------------------------------------------*\
.*  Edit colors dialog box help panel                           *
.*      res = PANEL_EDITCLRDLG                                  *
.*--------------------------------------------------------------*/
:h1 res=2655 name=PANEL_EDITCLRDLG.Edit colors dialog box
:i1.Edit colors dialog box
:p.To change color settings for a highlight mode:
:ol.
:li.Select an item from the :hp2.Text element:ehp2. listbox.
:li.Select a color from the color table. Double click a color box
    to change its color (the first 16 colors cannot be changed).
:li.Select the :hp2.Underline:ehp2. checkbox if you want the
    currently selected text element to be underlined.
:li.Repeat the above steps for other text elements if desired.
:li.Select the :hp2.OK:ehp2. pushbutton.
:eol.
:p.Detailed description of controls:
:dl break=all tsize=3.
:dt.:hp2.Sample text:ehp2.
:dd.Displays a small piece of text containing all text elements supported
by the highlight mode being edited.
.* !!! Terms!!! May be "syntax elements"? "highlight mode" - I do not liek either.
.* Refernces to how all this stuff works (DLLs etc.)
:dt.:hp2.Text element:ehp2.
:dd.Select a text element which color and/or underline attribute you want to change.
:dt.:hp2.Color table:ehp2.
.* !!! This text is not present on the dialog.
:dd.Select a color for the currently selected text element. All but the first 16
colors in the table can be edited by double-clicking them. :hp2.Note::ehp2.
This table is shared by all workplaces.
:dt.:hp2.Underline:ehp2.
:dd.Select this checkbox if you want the currently select text element
to be underlined on display.
:dt.:hp2.Ok:ehp2.
:dd.Select the :hp2.Ok:ehp2. pushbutton to confirm your changes to
the color scheme.
:dt.:hp2.Cancel:ehp2.
:dd.Select the :hp2.Cancel:ehp2. pushbutton if you decide to abandon
your changes.
:edl.

.* Sample text:
.*   ����襭�� ⥪�� � �ᥬ� ������묨 ����⠬�. ������ ��
.*   ⥪�饣� �����.
.* Text element listbox:
.*   �������� ⥪��. ���� �� ������ �� ⥪�饣� �����.
.* ��ࠢ� - 梥�. ���� 16 梥⮢ ��䮫��, ��⠫�� �����
.* ।���஢���:
.* �������� ��
.*          梥� - ������ PANEL_MAKECLRDLG ��� ��� ।���஢����.
.* Underline checkbox - ����ન����� ����� ⥪��.
.* ������ �������, ��
.*   1) ������ 梥⮢ ������쭠, �.�. ����� ��� �� ������ᮢ.
.*   2) �� �롮� 梥� ����� ⥪�� �� ��६ ��� ���祭�� � ���쭥�襥
.* ।��஢����
.*      ��室���� 梥� �� ���᪥ ࠭�� �ᯮ�짮����� ��� ����⮢ ⥪�� ��
.* ��ࠧ����.
.* ��� - ������ Ok Cancel Help

.*--------------------------------------------------------------*\
.*  Color dialog box help panel                                 *
.*      res = PANEL_MAKECLRDLG                                  *
.*--------------------------------------------------------------*/
:h1 res=2660 name=PANEL_MAKECLRDLG.Color dialog box
:i1.Color dialog box
����� �ᯮ������ ���� � 梥⠬�. (RGB ����� :)
�몠� � ���� ����� ����� ������� 梥�, �� �����뢠����
� ���� �ࠢ�.
��஫� Bright �㦨� ��� ॣ㫨஢���� �મ�� 梥�,
��஫�� R, G, B - ��� ॣ㫨஢�� ��� 梥⮢�� ��⠢�����.
������ Ok �ਢ���� ��� � �ᯥ��,
Cancel - �� �ਢ����.
Help ���� ����������� ������ ᥩ ⥪��.

