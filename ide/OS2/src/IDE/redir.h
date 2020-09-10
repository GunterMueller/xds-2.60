/////////////////// File: redir.h
#ifndef __REDIR
#define __REDIR

    // DEFINITION MODULE RCThunk:

    /***  Copyright (c) xTech 1997.  All Rights Reserved ***/
    /***  Utility library: regular expressions           ***/


    typedef LHANDLE HEXPR;
    typedef HEXPR  *PHEXPR;
    void RCThunk_Compile (PSZ szExpr, PHEXPR phExpr, PLONG pRes);
    /** res <= 0 -- error in position ABS(res);
        res >  0 -- done.
    */

    void RCThunk_FreeExpr (HEXPR hExpr);

    BOOL RCThunk_Const (HEXPR hExpr);
    /** Returns TRUE, if expression does not contain wildcards */

    BOOL RCThunk_Match (HEXPR hExpr, PSZ sz);
    /** Returns TRUE, iff expression matches with string "sz"
    */

    BOOL RCThunk_FastMatch (PSZ expr, PSZ s);
    /** Returns TRUE, iff expression matches with string "s" or the expression is empty string */

    void RCThunk_Substitute (HEXPR hExpr, PSZ s, PSZ m, PSZ d, LONG dlen);
    /** Substitutes  the substrings of "s" matched with "hExpr" instead
      of "$digit" in the "m" and copies the resulting string into "d" (up to "dlen" charachers).
    */

    LONG RCThunk_Len (HEXPR hExpr, LONG n);
    /** Returns the length of  the  substring matched to "$n"
      at last call of match procedure with parameter "re".
    */

    LONG RCThunk_Pos (HEXPR hExpr, LONG n);
    /** Returns the position of the  beginning  of  the  substring
      matched to "$n" at last call of match procedure with
      parameter "re".
    */

    // END RCThunk.




  BOOL FindRedirFile  (char *szTarg, char *szName);
  BOOL FName2Full     (char *pchTarg, char *szName, BOOL fFindIt, char *szBasePath=0);
  BOOL FName2Path     (char *pchTarg, char *szName);
  BOOL FName2Ext      (char *pchTarg, char *szName);

  BOOL Browse         (char *szOut, char *szIn, HWND hOwner, char *szCaption, BOOL fSaveAs);

  BOOL EditVarTable   (HWND hWnd);   // hWnd - parent window, ��୥� TRUE  �᫨ ��-� �뫮 ��������
  PSZ  OpenExprVar    (PSZ pszExpr); // ���뢠�� ��६���� � pszExpr ��ࠦ���� � �����頥�
                                     // malloc()ed १���� (0 �� �訡��)


  #define VARNAMELEN 32
  class VARTABLE
  {
    struct VARSTR
    {
      char szVarName [VARNAMELEN];
      char szVarValue[1];
    };
    typedef VARSTR *PVARSTR;

    PVARSTR   *apVarStr;                           // Malloc()ed 㯮�冷祭�� ���ᨢ 㪠��⥫��
    ULONG      lVarsAlloced;                       // ��१�ࢨ஢����� ����� ���ᨢ� (�-�� ����⮢)
    ULONG      lVarsTotal;                         // ������⢮ ��६�����
    BOOL       find_name(PSZ name, PLONG pIdx);
  public:
    PSZ        QueryVar   (PSZ szName);              // �����⥫� �� ᮤ�ন��� ��� 0
    BOOL       QueryIdxVar(ULONG idx,                // �᫨ ������ idx �� ��室�� �� �࠭��� ⠡����
                           PSZ *ppszName,            //   - ��⠭���� 㪠��⥫� �� ��� � ���祭��
                           PSZ *ppszValue);          //   ��६�����, ���� ��୥� FALSE
    LONG       QueryVarIdx(PSZ szName);              // ������ ��६����� � ⠡��� ��� -1
    void       AssignVar  (PSZ szName, PSZ szValue); // �᫨ ��६����� ��� - �������
    BOOL       ForgetVar  (PSZ szName);              // FALSE  �᫨ ⠪��� ����� ���
    void       ForgetAll  ();                        // ������ ⠡����
    void       WProfile   (LONG slot, PSZ szKey);
    void       RProfile   (LONG slot, PSZ szKey, BOOL fAddNew);
               VARTABLE   (VARTABLE *pInit = 0);
              ~VARTABLE   ();
  };
  typedef VARTABLE *PVARTABLE;


#endif




