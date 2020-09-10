/*
*
*  File: PROJECT.H
*
*  XDS Shell - project: open & edit features
*
*  (c) 1996 by *FSA & NHA Inc.
*
*/

#ifndef __PROJECT__
#define __PROJECT__

BOOL   NewProject    ();

/* OpenProject:
>  PSZ pszFile (in) - 0           - browse
>                     ""          - ��� �஥��
>                     <file name> - ���⠢��� ��� ��� �஥��
>  Return value: TRUE �᫨ �஥�� ��������
*/
BOOL   OpenProject   (PSZ pszFile, HWND hMsgWnd);

//// ������ ।���� � 䠩��� �஥��
//
BOOL   EdProjectFile ();

//// ����⢥��� ।���஢���� �஥�� '� ���⨭���'
//
// hMsgWnd   - த�⥫�᪮� ���� ��� �������(��)
// szPrjFile - ������ ��� 䠩�� �஥��
// szPrtFile - ������ ��� *.prt 䠩�� = ⥬���� �������
// Returns   - TRUE �᫨ 䠩� �஥�� ���������
//
BOOL   PrjEdit(HWND hMsgWnd, PSZ szPrjFile, PSZ szPrtFile);

#endif /* ifndef __PROJECT__ */

