/*
*
*  File: edthelp.h
*
*  XDS IDE help
*
*  (c) 1997 by *FSA & NHA Inc.
*
*/

extern HWND hwndHelpInstance;

#define MAXINFFILES           16

class HELPMENU
{
public:
  HELPMENU();
 ~HELPMENU();
  //// Append:
  // <szInfList> ::= <infitem>[;<szInfList>]
  // <infitem>   ::= FULLNAME.INF | DIRECTORY | NAME.INF | NAME | ""//
  // FULLNAME.INF - ������塞 ��� 䠩�
  // DIRECTORY    - �� *.inf 䠩�� �� ���
  // NAME.INF     - �饬 ��� 䠩� �� BOOKSHELF
  // NAME         - 1) ������� ".inf" � ���஡㥬 ��� NAME.INF
  //                2)�᫨ ���� env. variable � ⠪�� ������ � �� ��� *.inf{+*.inf} -
  //                  � ����⢥ NAME.INF ���஡㥬 ���� *.inf
  void Append           (PSZ szInfList);
  void Clear            ();
  void WProfile         (LONG slot, PSZ szName, BOOL fMirror);
  void RProfile         (LONG slot, PSZ szName);
private:
  PSZ  apszInfs [MAXINFFILES];
  BOOL bookshelf_search (PSZ szInf);
  BOOL add_inf_fullname (PSZ szFName, int nFile);
};

void  HelpInit           ();
void  HelpDestroy        ();
void  HelpGeneral        ();
void  HelpUsingHelp      ();
void  HelpKeys           ();
void  HelpIndex          ();
void  HelpTutorial       ();
void  HelpProductInfo    ();
void  HelpClickMenu      (int nCmd);
void  HelpWProfile       (LONG slot, PSZ szName, BOOL fMirror);
void  HelpRProfile       (LONG slot, PSZ szName);
void  DisplayHelpPanel   (ULONG idPanel);
void  DisplayContextHelp (PSZ szTopic, PSZ szExt);



