.*==============================================================*\
.*                                                              *
.* Tools.ipf - Information Tag Language file for the Tools      *
.*             menu help panels.                                *
.*  Copyright 1999 Excelsior. All Rights Reserved.              *
.*  Copyright 1996,97 xTech Ltd.                                *
.*                                                              *
.*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - *
.*                                                              *
.* Helps for TOOLS menu and its items:                          *
.*       PANEL_TOOLS                                            *
.*        PANEL_TOOLCFG                                         *
.*                                                              *
.* Helps for appropriate dialogs:                               *
.*       PANEL_TOOLCFGDLG                                       *
.*       PANEL_TOOLCHBTNDLG                                     *
.*       PANEL_ADDTOOLDLG                                       *
.*       PANEL_TOOLWIZDLG                                       *
.*       PANEL_TOOLEDFILTERDLG                                  *
.*       PANEL_POPUPWINDLG                                      *
.*                                                              *
.*==============================================================*/


.*--------------------------------------------------------------*\
.*  Main Tools menu                                             *
.*      res = PANEL_TOOLS                                       *
.*--------------------------------------------------------------*/
:h1 res=3000 name=PANEL_TOOLS.Tools Menu
:i1 id=Tools.Tools Menu
:p.The :hp2.Tools:ehp2. menu contains commands that you use to
modify the current set of
:link refid=PANEL_CONCEPTSTOOLS.tools:elink.
and to access them.
The following commands appear in the :hp2.Tools:ehp2. menu:
:parml compact tsize=3 break=all.
:pt.:hp2.Configure tools:ehp2.
:pd.Invoke the tools configuration dialog
:pt.:hp2.Recall popup window:ehp2.
.* !!! Move to another menu?
:pd.Display the tool pop-up window
:eparml.
:p.Menu items below these commands, if any, are the currently enabled
tools.

.*--------------------------------------------------------------*\
.*  Tools menu Edit tools command help panel                    *
.*      res = PANEL_TOOLCFG                                     *
.*--------------------------------------------------------------*/
:h1 res=3005 name=PANEL_TOOLCFG.Configure tools
:p.Use the :hp2.Configure tools:ehp2. command to add or remove tools and
to change their properties. A dialog box will appear, which contain
a list of all registered tools.

.*--------------------------------------------------------------*\
.*  Tools menu Edit tools command help panel                    *
.*      res = PANEL_TOOLCFGDLG                                  *
.*--------------------------------------------------------------*/
:h1 res=3020 name=PANEL_TOOLCFGDLG.Configure tools dialog
:i2 refid=Tools.Congigure tools dialog
:p.Use the :hp2.Configure tools dialog:ehp2. to add or remove tools and
to change their properties. A dialog box will appear, which contain
a list of tools.
Controls:
Tools list: �冷� � ��� ������ � ���⨪���묨 ��५���� ��� ���㯮�冷稢����
            �㫮�. ��� �⠢���� � ���� � � �㫡�� � �⮬ ���浪�, �஬� ⮣�, ��ॣ�㦥���
            (����騥 ���� ���) ��� �஢������� � �⮬ �� ���浪� �� ��ࢮ�� �믮���쭮��.
            � �㫡�� �����뢠���� �� ������� ������ (��� ��ॣ�㦥��� �㫮� - ⮫쪮 ��� ��ࢮ��),
            ��� ���ਢ�����; � ������� ���� ���������� ⮫쪮 �믮����� ��� (����� ��, ���
            ��ॣ�㦥���� - ⮫쪮 ����).
 Menu item: ⥪�� ࠧ���� ���� (����� �� ��������), ����� �ᯮ�짮���� $() ��६����
 Hot-key:   ⠬ ������ ������.
 Comment:   ⥪�� �뤠����� � ����᭮� ���� �� ��������� ��让 �� ������, ����� �ᯮ�짮����
            $() ��६����
 Button frame: ᮤ�ন� ���� � �����뢠���� � ��� ������� � ������
   Change      ��� ��������� ��⠭����. (PANEL_TOOLCHBTNDLG)
 Enable rulezzz frame:
   Project required:  CB
   Filename required: EF - ⥬���� ����� 䠩��, ����� �ᯮ�짮���� $() ��६����,
            <����> �������⭮ '*'
������
   Add       - �뫥���� ������ PANEL_ADDTOOLDLG � �������� ᮧ����� � ��� �� � ᯨ᮪
   Rename    - ����訢��� ����� ��� ��� �㫠
   Duplicate - ᠡ�
   Remove    - ᠡ�
   Default   - �᫨ �� ����� ᢮� �ந�宦����� �� ⥬���� �������, � ��� ��⠭���� �� ������
               �⥭�� ���㤠 �࠭���� � ����� ���� ����⠭������ �⮩ �������. �㯫��஢���� ���
               ⮦� ��᫥���� ��� ���ଠ�� (�� �� ������ �㡫�஢����, � �� �� - �����).
   Wizard    - ������ PANEL_TOOLWIZDLG ��� ���䨣��ﭨ� �ਯ� �㫠. �᫨ �ਯ� ��।���஢�� ������, �
               ����� ����� ��� �� ࠧ����� � �।����� ��⠢��� ������� ����᪠ ��। �ਯ⮬. �᫨ ��
               �� � ࠧ���� ��� - �, �� ��� �����, ����� � �������� 祣�...
Tool script: MLE - �ਯ� �㫠. ����� �ᯮ�짮���� $() ��६����. ���� �㪠�� �� �ண���.
Ok
Cancel
Help


.*--------------------------------------------------------------*\
.*  Tools menu Edit tools command help panel                    *
.*      res = PANEL_TOOLCHBTNDLG                                *
.*--------------------------------------------------------------*/
:h1 res=3025 name=PANEL_TOOLCHBTNDLG.Set tool button dialog
:p.Use the :hp2.Set tool button dialog:ehp2.
 ����� �� ⠡��窥 �����:  "Click the button you want to place to the toolbar for this tool.";
 ���� �ᯮ������ ��������� � ��������, �� ��� ���ᮢ��� �����-� ���⨭��.
 �� ����让 ������ ����� ��-� ��१�� ᫮��: "Place NO button".
 ��� �� ������� ������ Cancel � Help.
 ��������� ������ ���.


.*--------------------------------------------------------------*\
.*  Tools menu Edit tools command help panel                    *
.*      res = PANEL_ADDTOOLDLG                                  *
.*--------------------------------------------------------------*/
:h1 res=3030 name=PANEL_ADDTOOLDLG.Add a new tool
:p.Use the :hp2.Add a new tool dialog:ehp2.
Tool name: EF
Comment:   EF
Ok Cancel Help


.*--------------------------------------------------------------*\
.*  Tools menu Edit tools command help panel                    *
.*      res = PANEL_TOOLWIZDLG                                  *
.*--------------------------------------------------------------*/
:h1 res=3035 name=PANEL_TOOLWIZDLG.Tool wizard dialog
:p.Use the :hp2.Tool wizard dialog:ehp2. to...

Tool     - inducates toolname
Comment  - comment
Execute  - 䠩� � ��� ��������� ��ப�� , � dropdown ���� ��� ��� ���� "<Projecj>" -
           ��� ����⠢�� $(ProjName).exe � ����⢥ ��譨��.
Browse   - ���� 䠩��
Run in separate session:  RB - ����᪠�� �� ᨥ � �⤥�쭮� ��ᨨ �१ start?
  Keep session after run: CB - ON: "start /F ...", OFF: "start /N /F ...";
Run in popup window:      RB - ����᪠�� � popup window
  Entry field :  popup window caption
  Use output filter:      CB - ��᪠�� �� stdout & stderr �१ 䨫���
  Edit filter:            PB - ������ ।���஢���� 䨫��� (PANEL_TOOLEDFILTERDLG)
Ok
Cancel
Help

.*--------------------------------------------------------------*\
.*  Tools menu Edit tools command help panel                    *
.*      res = PANEL_TOOLEDFILTERDLG                             *
.*--------------------------------------------------------------*/
:h1 res=3040 name=PANEL_TOOLEDFILTERDLG.Filter dialog
:p.Use the :hp2.Filter dialog:ehp2. to create, edit and delete
:hp3.filters:ehp3. - rules that may be used to extract error and
warning messages from data that an external program tool writes
to standard output.
:p.A filter is a regular expression and a set of associated rules. Each
line of the program output is compared with that regular expression and
if a match occurs, the rules are used to build the message and determine
its type (error, warning, or notice) and location (file, line, and column).


    ������ ᮮ�饭��:
    ----------------
    �����୮� ��ࠦ���� (� ��६���묨) � �ࠢ��� ������樨 ��� ��६�����.
    �����஢ ����� ���� ���ᠭ� ��᪮�쪮.

    ������� 䨫���� ��᫥����⥫쭮 �ࠢ�������� � ��砫�� ��।��� ��ப� �,
    �� ��宦����� 㤠筮�� �ࠢ����� �ࠡ��뢠��. �᫨ � 䨫��� ��� �ࠢ�� ���
    ����஥��� ᮮ�饭��, � ᮮ�饭�� �� �� ��஦����, ᮢ����� ��ப� ����
    �� 䨫�������.


    ���ᠭ�� 䨫���:
    ==== Cut ====

    Filter = "<regular expression>"
    <rule 1>
    .
    .
    <rule n>

    ==== Cut ====
    �㫥��� ����� � �� ����.
    '"' ����� ��ப� ������ 㤢��������.
    ��ப� ��稭��騥�� �� ';', '%' ��� '#' - �������ਨ
    ����� ��ப� �ࠢ��� ��᫥ �ᯥ譮�� ��� ࠧ��� - ⮦� �������਩
    �ࠢ��� ��।����� ���祭�� ���: File, Line, Position, Message, MessageKind.
    ���� �� ⠪���:
    File         = ".\$1"     ; ����⭮
    Line         = "$1+1"     ; �, �� ��諮 � $1, �ਡ����� 1 (ࠧ�蠥��� 㪠�뢠�� +/- ����⠭��, ����� �� �����)
    Position     = "$1+1"     ; �, �� ��諮 � $1, �ਡ����� 1 (ࠧ�蠥��� 㪠�뢠�� +/- ����⠭��, ����� �� �����)
    Message      = "Oops: $(1)" ;
    MessageKind  = "$1" "expr 1" ... "expr n"
    ;; � Line � Position �� ��ந��� ⥪��, � ��������� +/- ᬥ饭��.
    ;; � MessageKind ���祭�� 0 ��ࠦ���� ����⠢����� ��᫥����⥫쭮 � ॣ���� ��ࠦ���� 1..4 �, �� ��ࢮ�
    ;;   �ᯥ譮� �ࠢ�����, ᮮ�饭�� �ਤ�����, ᮮ⢥��⢥���, ⨯: ERROR, WARNING, NOTICE, MSG_SEVERE.
    ;;     ��� �� 㬮�砭�� - ERROR.
   �ਬ�� ࠡ���饣� 䨫��� (��� �Set)
   ------------------
     ;; Error message example:
     ;; e:\fsa\mymdi\filters.cpp(234:4) : warning EDC3104: Unrecognized source character "#", code point 0x23.

     Filter       = "*$1\({0-9}$2:{0-9}$3\) : {a-z}$4 {A-Z}{0-9}: *$5"
     File         = "$1"
     Line         = "$2"
     Position     = "$3"
     Message      = "$5"
     MessageKind  = "$4" "error" "warning" "---" "---" ; Expressions order: ERROR, WARNING, NOTICE, MSG_SEVERE.
   ------------------

�⠪, � ������� ����:
MLE � 䨫��஬(���);
Ok
Cancel
Insert sample - ��⠢��� ������ 䨫��� (���� ������ �� 㬠);
Help


.*--------------------------------------------------------------*\
.*  Edit tools dialog box help panel                            *
.*      res = PANEL_POPUPWINDLG                                 *
.*--------------------------------------------------------------*/
:h1 res=3045 name=PANEL_POPUPWINDLG.Popup window
:i1 id=tooldlg.Popup window
� ��ࢮ� �३�� - �������, ����� ������ ����� �� �믮������ � �⠭������
  ��᭮�/������� �� �����襭�� � ��/�㫥�� ����� ������.
�ᮡ� ���� ��� ����� �뤠���� ⥪�� � ���� ��᫥ ���, �� ���㫥��� ���� ������ ⠬ �㤥�
  �����஢��� ��� ���祭��.

��ன �३� - ⮦� ࠡ�⠥� ⮫쪮 � ᢮���:
   Line: 0   �ࠤ�᭨�
   Comment:

��⨩: ���稪� �訡�� � ��୨���� ����������� � ����� ࠡ��� � Messagelist

����� - ���� �뤠� �㫠. �ࠢ�� ������ ��� �ᯫ뢠�� ������ �
   Font...
   Copy - � ��������

Close - �ନ��஢��� �� � ������� ����
Stop  - �ନ��஢��� ��
Message list - �ନ��஢��� �� � ��३� � messagelist (disabled if it is empty)
Help


