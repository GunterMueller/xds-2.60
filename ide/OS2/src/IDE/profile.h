/*
*
*  File: PROFILE.H
*
*  XDS Shell: access to profile(s)
*
*  (c) 1996 by *FSA & NHA Inc.
*
*/


#ifndef __PROFILE__
#define __PROFILE__


#include "sf_lib.h"

#define INISCRIPTFILENAME "MkXdsIni.cmd"
#define INIFILENAME       "XD$.INI"
#define PROFIDENT         180696L
#define WPTPL_FILE        "WpTpl.INI"

#define WPNAMELEN   100

// ����� �⥭��/���� ��䠩��
#define PRF_IO_NORMAL     0x0001  // �����
#define PRF_IO_MIRRORBASE 0x0003  // ��⠥� �� NORMAL, ��⥬ ��������� MIRROR
#define PRF_IO_MIRROR     0x0004  // ��ઠ��� ��䠩�
#define PRF_IO_TEMPLATE   0x0008  // ����� ⮫쪮 �ॡ㥬��, �� �⥭�� - �ਬ����� � ⥪. WP
#define PRF_IO_TPL_ASS    0x0010  //  ����� ���樠樨
#define PRF_IO_TPL_TOOLS  0x0020  //  ����� �㫧�
#define PRF_IO_TPL_RMTLS  0x0040  //  �� �⥭�� ⥪�騥 �㫧� �모����

/* --- Globals:
*/
extern char    szWorkplace[WPNAMELEN];
extern BOOL    fUseMirror;
extern char    szWPMirror [CCHMAXPATH];
extern char    szIniPath  [CCHMAXPATH]; // ���� � ��襩 ini+temp ��४�ਨ
extern PSZ     pszWPComment;

/* Create the profile
>
> pszPFPath     - path to create the profile in (if 0 - query the directory)
> fSetAsDefault - set this profile as the default
> hMsgWnd       - window to use as a parent for a messages or 0 to query nothing
> szIniDir      - 0 or the directory to use as initial for the profile creating dialog
> NOTE: when pszPFPath specifyed this function will newer display a dialogs and
>       does not needs any windows more then message boxes. This allows to use
>       it with the '/I' key to install us from the command prompt.
*/
BOOL PfCreateProfile(PSZ pszPFPath, BOOL fSetAsDefault, HWND hMsgWnd, PSZ szIniDir=0);

/* Open the default profile
>
>  PSZ  pszPath (in)  - Profile path (to use as default) or 0 to find the default
>                       using the installation information was wrote before
>  HWND hMsgWnd (in)  - Window to use as a parent for a messages or 0 to query nothing
>                       if set, it will prompt user to craete the profile when error
>
>  Returns TRUE when success;
*/
BOOL PfOpenDefProfile(PSZ pszPath,HWND hMsgWnd);

/* Open WP
>
>  PSZ   pszWPName   - Workplace to open or 0 to open default
>  Returns TRUE when success;
>  NOTE: configuration must be saved before
*/
BOOL PfOpenWPlace(PSZ pszWPName);

/* Store the current workplace (using szWorkplace as a name)
>  PSZ   pszWPName   - Name to use or 0 to use default (szWorkplace global)
>                      The name will be set in the szWorkplace.
>  LONG  slot        - internal use
*/
BOOL PfStoreWPlace(PSZ szWPName, LONG slot = -1);

/* Search the slot
>
>  PSZ  pszName (in) - what to search: 0 - free slot, else the name
>  BOOL fPrj (in)    - TRUE  - means that the name is a project
>                      FALSE - means that the name is a workplace
>  Returns           - positive valie - the slot found
>                      negative value - -free slot number (pszName==0  OR  not found)
*/
LONG PfSearchSlot(PSZ pszName, BOOL fPrj);


BOOL      PfWriteItem     (LONG slot, PSZ pszName, PVOID pBuf, LONG cbBuf);
BOOL      PfDeleteItem    (LONG slot, PSZ pszName);
LONG      PfReadItem      (LONG slot, PSZ pszName, PVOID pBuf,  LONG cbBuf, PVOID pDefVal, int cbDef);
BOOL      PfWriteLong     (LONG slot, PSZ pszName, LONG  l);
BOOL      PfReadLong      (LONG slot, PSZ pszName, LONG *pLong, LONG lDefVal);
void      PfWriteLineList (LONG slot, PSZ pszName, LINELIST *pllWrite);
LINELIST *PfReadLineList  (LONG slot, PSZ pszName);
void      PfWritePPFont   (LONG slot, PSZ pszName, HWND hWnd);
void      PfApplyPPFont   (LONG slot, PSZ pszName, HWND hWnd);
BOOL      PfWriteRelFName (LONG slot, PSZ pszName, PSZ szFName);
LONG      PfReadRelFName  (LONG slot, PSZ pszName, char szTarg[CCHMAXPATH], PVOID pDefVal, int cbDef);
LONG      PfQueryItemSize (LONG slot, PSZ pszName);


//--- ����७��� ᯨ᮪ WP-⥬���⮢
// � szIniPath 䠩� WPTPL_FILE ᮤ�ন� ���짮��⥫�᪨� ⥬����� (slots 1..)
// � os2.ini/xds ���� XDS_WPT_* - ��� � *.ini 䠩��� � ��⥬�묨 ⥬���⠬� (slots 1..)
//
class WPTPLOFFICE
{
public:
   WPTPLOFFICE();
  ~WPTPLOFFICE();
  void ReBuild();                                 // ������� ��� ��� ��� ����㯭�� ⥬�����
  void ShowList       (HWND hLB);                 // ��������� ����
  void ShowComment    (LHANDLE h, HWND hMLE);     // �������� �������਩ (h - ��� � ����)
  void RefreshComment (LHANDLE h, HWND hMLE);     // ��������, �᫨ ����, �������਩ (h - ��� � ����)
  void StoreTpl       (PSZ szName, HWND hMsgWnd); // ������� ���� ⥬����        // ��᫥ ��� ����
  BOOL RemoveTpl      (LHANDLE h, HWND hMsgWnd);  // ������� ⥬����. ��୥� fOk. //   ������� ᯨ᮪
  void ApplyTpl       (LHANDLE h, HWND hMsgWnd, BOOL fNewWp=FALSE);  // �ਬ����� ⥬���� (h - ��� � ����)
  BOOL IsReadOnly     (LHANDLE h);                // TRUE �᫨ h - read olny ��� h = 0
private:
  typedef struct ONEWPTPL
  {
    ONEWPTPL  ();
   ~ONEWPTPL  ();
    ONEWPTPL *next;
    char      szName   [WPNAMELEN];
    PSZ       pszComment;
    char      szIniFile[CCHMAXPATH];
    LONG      lSlot;
    BOOL      fReadOnly;
  } *PONEWPTPL;

  PONEWPTPL   poneList;
  PONEWPTPL   seek(LHANDLE h) {PONEWPTPL p; for(p=poneList; p; p=p->next)if(p==(PONEWPTPL)h)break; return p;}
  void        free_all()      {for(PONEWPTPL p1,p=poneList; p; p=p1) {p1=p->next; delete p; } poneList=0;}
  void        app_ini_file(PSZ szFile, BOOL fReadOnly);
};

class WPTPLADVANCEDINIT
//
// �� ����� ����ࠪ�� ����� ��� advanced ���樠����樨 ������ WP �� ᮧ����� ��� ��
// ⥬����. ���� �� ���� ����� rexx script.
// �࠭���� �� ⮫쪮 � ⥬�����, �� � � WPs, �⮡� ����� �뫮 �� ���
// ᮧ������ ⥬�����.
//
{
public:
          WPTPLADVANCEDINIT ();
         ~WPTPLADVANCEDINIT ();
  void    ApplyNow          (HWND hMsgWnd);           // �ਬ����� ��� � ����饬�� �� ����� ������ WP
  void    ModifyDlg         (HWND hMsgWnd);           // ������ � ����䨪�樥� ���.
  void    WProfile          (LONG slot, PSZ pszName); //
  void    RProfile          (LONG slot, PSZ pszName); //
private:
  PSZ     pszRexxScript;
  friend  MRESULT EXPENTRY dpWpTplAdvDlg(HWND,ULONG,MPARAM,MPARAM);
};
typedef WPTPLADVANCEDINIT *PWPTPLADVANCEDINIT;

/*******************************************************************************/
/*                                                                             */
/*  U s e r  i n t e r f a c e                                                 */
/*                                                                             */
/*******************************************************************************/

MRESULT EXPENTRY dpNewWPDlg    (HWND,ULONG,MPARAM,MPARAM);
MRESULT EXPENTRY dpWPListDlg   (HWND,ULONG,MPARAM,MPARAM);
MRESULT EXPENTRY dpWPPropDlg   (HWND,ULONG,MPARAM,MPARAM);
MRESULT EXPENTRY dpWPTplDlg    (HWND,ULONG,MPARAM,MPARAM);



#endif /* ifndef __PROFILE__ */

