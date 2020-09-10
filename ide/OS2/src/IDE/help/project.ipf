.*==============================================================*\
.*                                                              *
.* Project.ipf - Information Tag Language file for the screens  *
.*               for help on Project menu items.                *
.*  Copyright 1999 Excelsior. All Rights Reserved.              *
.*  Copyright 1996,97 xTech Ltd.                                *
.*                                                              *
.*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - *
.*                                                              *
.* Helps for PROJECT menu and its items:                        *
.*    PANEL_PROJECT                                             *
.*      PANEL_PROJNEW                                           *
.*      PANEL_PROJOPEN                                          *
.*      PANEL_PROJCLOSE                                         *
.*      PANEL_PROJMODIFY                                        *
.*      PANEL_PROJEDTEXT                                        *
.*                                                              *
.* Helps for appropriate dialogs:                               *
.*    PANEL_PRJNEWDLG                                           *
.*    PANEL_PRJMODDLG                                           *
.*    PANEL_USROPTDLG                                           *
.*    PANEL_USREQDLG                                            *
.*    PANEL_MODULESDLG                                          *
.*    PANEL_USRLOOKUPDLG                                        *
.*                                                              *
.*==============================================================*



.*--------------------------------------------------------------*\
.*  Main Project menu                                           *
.*      res = PANEL_PROJECT                                     *
.*--------------------------------------------------------------*/
:h1 res=2800 name=PANEL_PROJECT.Project Menu
:i1 id=Project.Project Menu
:p.The Project menu contains commands that you use to open, close
and edit a project file, and to compile, make and run your program.
The following commands appear in the Project menu:
:parml compact tsize=3 break=all.
:pt.:hp2.New project:ehp2.
:pd.Creates new project file and opens it as a project
:pt.:hp2.Open project:ehp2.
:pd.Opens a project file
:pt.:hp2.Close project:ehp2.
:pd.Closes a project file
:pt.:hp2.Modify project:ehp2.
:pd.Lets you modify project using a dialog box
:pt.:hp2.Edit project file:ehp2.
:pd.Lets you edit the project file manually
:eparml.
� ���� ���� - ����� �஥�⮢.


.*--------------------------------------------------------------*\
.*  Project menu Open project command help panel                *
.*      res = PANEL_PROJNEW                                     *
.*--------------------------------------------------------------*/
:h1 res=2805 name=PANEL_PROJNEW.New project
:i2 refid=Project.New project
:p.Use the :hp2.New project:ehp2. command to create new project file.
:p.A dialog will appear that allows you to enter a project file name.


.*--------------------------------------------------------------*\
.*  Project menu Open project command help panel                *
.*      res = PANEL_PROJOPEN                                    *
.*--------------------------------------------------------------*/
:h1 res=2810 name=PANEL_PROJOPEN.Open project
:i2 refid=Project.Open project
:p.Use the :hp2.Open project:ehp2. command to open an existing project file.
:p.A dialog will appear that allows you to select a project file.
������ ��������, �� ⨯ 䠩�� ��� �� ॣ�����������, ��� ����� ���� ��� -
�� �ᥣ� ���� ���祭�� ��६����� $(proj*) � �᫮��� �����쭮�� �㫮�.
������஢��� � ���⨭��� ���� �஥��� �� 㤠���� :)


.*--------------------------------------------------------------*\
.*  Project menu Close project command help panel               *
.*      res = PANEL_PROJCLOSE                                   *
.*--------------------------------------------------------------*/
:h1 res=2815 name=PANEL_PROJCLOSE.Close project
:i2 refid=Project.Close project
:p.Use the :hp2.Close project:ehp2. command to close the currently
opened project.


.*--------------------------------------------------------------*\
.*  Project menu Modify project command help panel              *
.*      res = PANEL_PROJMODIFY                                  *
.*--------------------------------------------------------------*/
:h1 res=2820 name=PANEL_PROJMODIFY.Modify project
:i2 refid=Project.Modify project
:p.Use the :hp2.Modify project:ehp2. command to edit currently opened
project using a dialog box.
���쪮 ��� �������� ⨯�� �஥�⮢, ���� ����� ���뤠�� �訡��.


.*--------------------------------------------------------------*\
.*  Project menu Edit project file command help panel           *
.*      res = PANEL_PROJEDTEXT                                  *
.*--------------------------------------------------------------*/
:h1 res=2825 name=PANEL_PROJEDTEXT.Edit project file
:i2 refid=Project.Edit project file
:p.Use the :hp2.Edit project file:ehp2. command to edit currently
opened project file manually. The auto window will be opened and the
project file will be loaded into it.
��� �� �� ��३��� � ����, ��� �� 㦥 ।��������.


.*--------------------------------------------------------------*\
.*  New project dialog box help panel                           *
.*      res = PANEL_PRJNEWDLG                                   *
.*--------------------------------------------------------------*/
:h1 res=2830 name=PANEL_PRJNEWDLG.New project dialog box
:i1 id=newprjdlg.New project dialog
Project name - EF: ��� ����� ����� ��� 䠩�� �஥�� (��࠭�祭��
                   ���, ⠪ �� ᫥��� 㪠�뢠�� � ���७��.)
Browse...    - PB: browse dialog, ������ ��� ⮣�, �� � ��� �㤥�
                   ��࠭� ����� � Project name EF
Use template - dropdownlist - ���� ���? �� ࠢ�� ��� �� �ਤ㬠��...
Create       - ᮧ���� 䠩� (�᫨ 㦥 ���� - ���� overwrite it,
               �� �⪠�� - ��୥��� � ��� ������.
Cancel
Help

.*--------------------------------------------------------------*\
.*  Modify project dialog box help panel                        *
.*      res = PANEL_PRJMODDLG                                   *
.*--------------------------------------------------------------*/
:h1 res=2835 name=PANEL_PRJMODDLG.Modify project dialog box
:i1 id=modifyprjdlg.Modify project dialog

� �� ��᪠���� �� ��㤠 �� ������?
� ��६����� $(XDSCompiler) ������ ���� �ய�ᠭ� ���
��������� (⨯� e:\xds\bin\xc.exe). ����砫쭮 ��
����� ⠬ ������ �� ᮧ����� ������� � �ᯮ�짮������
⥬���� �� ��⠭���� � ᥡ� ������饣� (� ���� ⠬ ����
��������� ��⨭� ⥬���� � ४ᮢ� �ਯ⮬ ������
��६����� ��⠭�������騬). �᫨ ��६����� ���, � ���� ���㫨��
��窠��.
����७�� ����� ��������� ������� �� .prt (project template)
� �� ���� ��ந��� ��ॢ� ��権 ��� ��ᬮ�� � ����㯮���⮬
�������. ���⠪�� 䠩�� ���室�� �� �६���� ������ � ��ᥬ�
����� ���� ����⠭����� ⮫쪮 �� �祭� ����讬 �������. ����ন���
⮦�, ����⭮, �� ᮮ⢥����� ᮢ६������ ������ ��権.

����� �ந�������� ����⪠ ࠧ����� ⥪�� �஥�� � ᮮ⢥��⢨ﬨ
� �����ﬨ �����窨 � ��� ᨭ⠪��. ������ ���� ������
� ��᫥���� ।��樨 �뫠 ����祭� �� ���졠� ������-�
᭥����� 祫�����, ��᫥ 祣� ��� �� �������� �஥��� ��
�����: ���㫨 � ���७��� �� ���������, �᪨� ��樨
- ⮫쪮 "-name:+" � �� ":name+" � �.�. �� ���ᯥ�, �訡��
���������� � ����-���� � ⠬ ᨤ��, ���� �� ��� ����,
���� - ������ ������:

����� - ���⡮�� � ��ॢ�� ࠧ����� ��� ।���஢����.
�������� �� ���ନ������ 㧫�� �⮣� ��ॢ� ��/��-��뢠�� ��.
��ࠢ� - ��࠭�窠 ��権 ������ �� ��࠭��� 㧫� ��ॢ�.
��� ��� - �������਩ � ��樨 ��� ����஬. �������਩
ᠬ����㬥�����騩�� ���� �� ���� �� ����� (?)
����� ������
  User options   - PANEL_USROPTDLG
  User equations - PANEL_USREQDLG
  Modules        - PANEL_MODULESDLG
  Lookups        - PANEL_USRLOOKUPDLG
Ok
Cancel
Help


.*--------------------------------------------------------------*\
.*  Modify project dialog box help panel                        *
.*      res = PANEL_USROPTDLG                                   *
.*--------------------------------------------------------------*/
:h1 res=2840 name=PANEL_USROPTDLG.User options
:i2 id=modifyprjdlg.User options dialog
������ - ���� � ���ﬨ � �� ���祭�ﬨ.
����� - ������
New... - ������ ��� ��� ����� ��樨
Remove - �᭮
Toggle - ������� ���祭�� �� ��⨢��������� (+ �� - � - �� +)
Ok
Cancel
Help

.*--------------------------------------------------------------*\
.*  Modify project dialog box help panel                        *
.*      res = PANEL_USREQDLG                                    *
.*--------------------------------------------------------------*/
:h1 res=2845 name=PANEL_USREQDLG.User equations dialog box
:i2 id=modifyprjdlg.User equations dialog
������ - ���� � ��ப��� ���� "���=���祭��",
������:
New        - ������ ���, ��⥬ - ���祭��,
Remove     -
Edit value - ������� ⥪�饥 ���祭�� � �������� ��� ��������
Ok Cancel Help


.*--------------------------------------------------------------*\
.*  Modify project dialog box help panel                        *
.*      res = PANEL_MODULESDLG                                  *
.*--------------------------------------------------------------*/
:h1 res=2850 name=PANEL_MODULESDLG.Modules dialog box
:i2 id=modifyprjdlg.Modules dialog
������ - ���� � ��ப��� ���� "!module name",
������:
New        - ������ ��� ����� � ������� ���
Remove     -
Edit name - ������� ��� � �������� ��� ��������
Ok Cancel Help

.*--------------------------------------------------------------*\
.*  Modify project dialog box help panel                        *
.*      res = PANEL_USRLOOKUPDLG                                *
.*--------------------------------------------------------------*/
:h1 res=2855 name=PANEL_USRLOOKUPDLG.Lookups dialog box
:i2 id=modifyprjdlg.Lookups dialog
������ - ���� � ��ப��� ���� "-lookup = template = pathlist"
������:
New           - ������ ��� template, ��⥬ - pathlist
Remove        -
Edit pathlist - ������� pathlist � �������� ��� ��������
Ok Cancel Help



