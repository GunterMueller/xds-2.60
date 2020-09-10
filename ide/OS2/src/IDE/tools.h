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
  char          szName      [TOOLNAMELEN];  // ��� ���
  PSZ           pszToolScript;              // malloc()ed ⥪�� ᮡ�᭮ ; 0 - �㫠 ����
  PSZ           pszFilter;                  // malloc()ed 䨫��� (��� 0); [0] = +/- (use/not use)
  BOOL          fRunWhenProject;            // ������: �㦥� ������� 䠩� �஥��
  char          szMatchFiles[50];           // ������: 蠡��� ����� ⥪�饣� 䠩��
//TOOL         *ptDefValue;                 // �� 0 �᫨ �� �� �� �� ����
  TOOL         *next;

                TOOL        ();                       //
               ~TOOL        ();                       //
  BOOL          IsEnabled   ();                       // Enabled?
  BOOL          Execute     (HWND hMsgWnd);           // ����� (��୥� FALSE �� �訡��)
  void          Copy        (TOOL *pSrc);             // ����� ���祭��
  void          free_all    ();
  BOOL          RProfile    (LONG slot, PSZ szKey);
  BOOL          WProfile    (LONG slot, PSZ szKey);
};
typedef TOOL *PTOOL;

struct TOOLCATEGORY
{
  int            cb;                          // ��� ��।�� ��������
  char           szName       [TOOLNAMELEN];  // ��� ��⥣�ਨ (���⮥ => ��⥣��� ����������)
  char           szComment    [50];           // ����� 'ᮯ��'
  char           szMenuItem   [50];           // "" - � ���� �� �⠢����
  ACCEL          rAccel;                      // Accel ��� hot key (��� .fs �㤥� 0)
  USHORT         usBmp;                       // �����䨪��� ����� ��⬠�� ��� 0
  PTOOL          pToolList;                   // ���᮪ �㫮� ��⥣�ਨ
  ULONG          nLastEdTool;                 // ��� ।���஢���� - ����� ��᫥����� ������襣��� �㫠

                 TOOLCATEGORY ();                       //
                ~TOOLCATEGORY ();                       //
  BOOL           IsEnabled    ();                       // Enabled?
  BOOL           Execute      (HWND hMsgWnd);           // ����� (��୥� FALSE �� �訡��)
  void           Apply        (TOOLCATEGORY *pSrc);     // �������� ���, �������� ᮢ�����騥
  BOOL           WProfile     (LONG slot, PSZ szKey);
  BOOL           RProfile     (LONG slot, PSZ szKey);
  void           free_all     ();
};
typedef TOOLCATEGORY *PTOOLCATEGORY;


class TOOLBOX
{
public:
                TOOLBOX();
               ~TOOLBOX();
  BOOL          Execute           (LONG lCtrlId); // �㫠� ᮯ��⠢������ �����䨪���� ����஫�� TOOL_ID_MIN+<����� ��⥣�ਨ �㫠>
  BOOL          PlayTool          (PQMSG pqmsg);  // �᫨ ᮮ�饭�� ᮮ⢥����� �� - ���஡�� �믮�����, TRUE; ���� - FALSE
  void          EditTools         ();
  void          ReenableAll       ();
  void          TuneMenu          ();
  void          Copy              (TOOLBOX *ptb);
  void          StorePopupPPFont  (char szPPFont[FACESIZE+10]);
  PSZ           QueryPopupPPFont  () {return szPPFont;}
  void          free_all();
  BOOL          RProfile          (LONG slot, PSZ pszKey); // FALSE �᫨ ᫨誮� ����� �㫧��
  void          WProfile          (LONG slot, PSZ pszKey);
private:
  PTOOLCATEGORY apToolCategories[MAXTOOLS];    // ��⥣�ਨ �㫮� (��������騥 - ��� �����)
  char          szPPFont[FACESIZE+10];         // ���� popup ���� (⨯� "8.Helv" ��� "")

  HACCEL        make_hAccel       ();
  void          del_controls      (BOOL fMenu);
  void          reFill_controls   (BOOL fMenu);
  friend        MRESULT EXPENTRY  dpToolCfgDlg(HWND,ULONG,MPARAM,MPARAM);
};
typedef TOOLBOX *PTOOLBOX;


#define WC_QUERYACCEL "WC_QAccelWindow"
MRESULT EXPENTRY wpQueryAccel (HWND, ULONG, MPARAM, MPARAM);
void             Acc2Mp       (const ACCEL*, PMPARAM, PMPARAM);
void             Mp2Acc       (MPARAM, MPARAM, PACCEL);
PSZ              Mp2Txt       (PMPARAM pm1, PMPARAM pm2);


#endif /* ifndef __TOOLS__ */

