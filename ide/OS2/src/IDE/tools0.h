/*
*
*  File: TOOLS.H
*
*  XDS Shell - tools definitions
*
*  (c) 1996 by *FSA & NHA Inc.
*
*/

#ifndef __TOOLS__
#define __TOOLS__

#define TOOLNAMELEN        32
#define MAXTOOLS           50
#define IDM_TOOL_SEPARATOR (TOOL_MIN_ID + MAXTOOLS + 1)
#define POPUP_TMP_FILE     "XD$$HELL.TMP"

void    ToolRecallPopup();           // �ᯫ뢥�/ᮧ������ �������쭮� popup ����, �� ��஬ ��砥 - �� ��୥���.
void    ToolHidePopup();             // �᫨ popup ���� �� � ࠡ��, � ��� �������.
void    ToolStartPopup (MPARAM(m1)); // ����� �㫠 � �������쭮� popup ����, �� ��୥��� �� ����砭��.

struct TOOL
{
  int           cb;                         // ��� ��।�� ��������
  TOOL         *ptDefValue;                 // �� 0 �᫨ �� �� �� �� ����
  char          szName      [TOOLNAMELEN];  // ��� ���
  char          szComment   [46];           // ����� 'ᮯ��'
  PSZ           pszToolScript;              // malloc()ed ⥪�� ᮡ�᭮ ; 0 - �㫠 ����
  PSZ           pszFilter;                  // malloc()ed 䨫��� (��� 0); [0] = +/- (use/not use)
  char          szMenuItem  [50];           // "" - � ���� �� �⠢����
  BOOL          fRunWhenProject;            // ������: �㦥� ������� 䠩� �஥��
  char          szMatchFiles[50];           // ������: 蠡��� ����� ⥪�饣� 䠩��
  char          szHotKey    [20];           // ��-� ⨯� "Alt+'C'" (--- �� �ᯮ������!)
  ACCEL         rAccel;                     // Accel ��� hot key (��� .fs �㤥� 0)
  USHORT        usBmp;                      // �����䨪��� ����� ��⬠�� ��� 0

                TOOL        ();                       //
               ~TOOL        ();                       //
  BOOL          IsEnabled   ();                       // Enabled?
  BOOL          Execute     (HWND hMsgWnd);           // ����� (��୥� FALSE �� �訡��)
  void          Copy        (TOOL *pSrc);             // ����� ���祭��
  BOOL          RProfile    (LONG slot, PSZ szKey);
  BOOL          WProfile    (LONG slot, PSZ szKey, BOOL fMkNewDefs = FALSE);
  void          free_all    ();
private:
  BOOL          w_prf       (LONG slot, PSZ szKey, BOOL fMkNewDefs = FALSE);
  BOOL          r_prf       (LONG slot, PSZ szKey, BOOL *pfQDef);
};
typedef TOOL *PTOOL;


class TOOLBOX
{
public:
               TOOLBOX();
              ~TOOLBOX();
  BOOL         Execute          (LONG lCtrlId);
  BOOL         PlayTool         (PQMSG pqmsg);
  void         EditTools        ();
  void         ReenableAll      ();
  void         TuneMenu         ();
  void         Copy             (TOOLBOX *ptb);
  void         StorePopupPPFont (char szPPFont[FACESIZE+10]);
  PSZ          QueryPopupPPFont () {return szPPFont;}
  BOOL         RProfile         (LONG slot, PSZ pszKey, BOOL fKeepOld); // FALSE �᫨ ᫨誮� ����� �㫧��
  void         WProfile         (LONG slot, PSZ pszKey, BOOL fMkNewDefs = FALSE);
private:
  PTOOL        apTools[MAXTOOLS];             // �������� �㫮�
  char         szPPFont[FACESIZE+10];         // ���� popup ���� (⨯� "8.Helv" ��� "")

  HACCEL       make_hAccel       ();
  void         del_controls      (BOOL fMenu);
  void         reFill_controls   (BOOL fMenu);
  LONG         find_enabled      (PSZ pszName); // ����� ��⨢���� �㫠 � ⠪�� ������ (��� -1)
  friend       MRESULT EXPENTRY  dpToolCfgDlg(HWND,ULONG,MPARAM,MPARAM);
};
typedef TOOLBOX *PTOOLBOX;

#if 0
  �㫠� ᮯ��⠢������ �����䨪���� ����஫�� TOOL_ID_MIN+<����� �㫠>,
  ����쭮 �맢���� �� ����� ��⨬ ����� ����� ������⮣� � ���᪠ �।�
  ������⢠ �㫮� � ⠪�� ������ ��ࢮ�� ��⨢����
#endif

#define WC_QUERYACCEL "WC_QAccelWindow"
MRESULT EXPENTRY wpQueryAccel (HWND, ULONG, MPARAM, MPARAM);
void             Acc2Mp       (const ACCEL*, PMPARAM, PMPARAM);
void             Mp2Acc       (MPARAM, MPARAM, PACCEL);
PSZ              Mp2Txt       (PMPARAM pm1, PMPARAM pm2);


#endif /* ifndef __TOOLS__ */

