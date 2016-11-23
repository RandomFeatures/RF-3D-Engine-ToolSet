//---------------------------------------------------------------------------

#ifndef charH
#define charH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <Menus.hpp>
#include <Inifiles.hpp>
#include "NumberEdit.h"
#include "TFlatEditUnit.hpp"
#include "TFlatSpinEditUnit.hpp"
#include "TFlatComboBoxUnit.hpp"
#include "TFlatListBoxUnit.hpp"
#include "TShadowControl.hpp"
#include <ExtCtrls.hpp>
#include "TFlatTabControlUnit.hpp"
#include "TFlatPanelUnit.hpp"
#include "MemoEx.hpp"
#include <Buttons.hpp>
#include "TFlatCheckListBoxUnit.hpp"
#include <ToolWin.hpp>
#include "TFlatSpeedButtonUnit.hpp"
#include <Dialogs.hpp>
#include "POXControl.hpp"



//---------------------------------------------------------------------------
#define _STYLE_NORMAL         0                 //  normal text
#define _STYLE_INVISIBLE      1                 //  invisible text
#define _STYLE_BOLD           2                 //  bold text
#define _STYLE_ITALIC         3                 //  italic
#define _STYLE_UNDERLINE      4                 //  underlined text
#define _STYLE_SPECIAL        5                 //  special text
#define _STYLE_HOTSPOT        6                 //  hotspot

#define _STYLE_FIRST          _STYLE_NORMAL
#define _STYLE_LAST           _STYLE_HOTSPOT
//---------------------------------------------------------------------------

class TfrmChar : public TForm
{
__published:	// IDE-managed Components
        TPanel *pnlCharMain;
        TLabel *Label19;
        TLabel *Label1;
        TLabel *Label2;
        TLabel *Label3;
        TShadowPanel *ShadowPanel3;
        TShadowPanel *ShadowPanel4;
        TFlatEdit *edtChrID;
        TShadowPanel *ShadowPanel5;
        TFlatEdit *edtChrName;
        TShadowPanel *ShadowPanel6;
        TFlatComboBox *cbChrInherite;
        TPageControl *pgcCharacter;
        TTabSheet *tbChrStats;
        TLabel *Label4;
        TLabel *Label5;
        TLabel *Label6;
        TLabel *Label7;
        TLabel *Label8;
        TLabel *Label9;
        TLabel *Label10;
        TLabel *Label11;
        TLabel *Label13;
        TLabel *Label16;
        TLabel *Label18;
        TLabel *Label17;
        TShadowPanel *ShadowPanel1;
        TFlatSpinEditInteger *sedtChrStr;
        TFlatSpinEditInteger *sedtChrPer;
        TFlatSpinEditInteger *sedtChrEnd;
        TFlatSpinEditInteger *sedtChrChar;
        TFlatSpinEditInteger *sedtChrAgi;
        TFlatSpinEditInteger *sedtChrInt;
        TFlatSpinEditInteger *sedtChrLuc;
        TFlatSpinEditInteger *sedtChrMana;
        TFlatSpinEditInteger *sedtChrAR;
        TFlatSpinEditInteger *sedtChrMin;
        TFlatSpinEditInteger *sedtChrMax;
        TFlatSpinEditInteger *sedtChrHP;
        TFlatSpinEditInteger *sedtChrLvl;
        TFlatSpinEditInteger *sedtChrArmed;
        TFlatSpinEditInteger *sedtChrUnArmed;
        TFlatSpinEditInteger *sedtChrRanged;
        TFlatSpinEditInteger *sedtChrMagery;
        TFlatListBox *lbChrBackPack;
        TShadowPanel *ShadowPanel2;
        TTabSheet *tbChrSkills;
        TGroupBox *GroupBox1;
        TLabel *Label12;
        TLabel *Label14;
        TLabel *Label15;
        TLabel *Label20;
        TShadowPanel *ShadowPanel7;
        TShadowPanel *ShadowPanel8;
        TGroupBox *GroupBox2;
        TLabel *Label21;
        TLabel *Label22;
        TLabel *Label23;
        TTabSheet *tbChrItems;
        TLabel *Label24;
        TLabel *Label25;
        TSpeedButton *btnOneToBP;
        TSpeedButton *btnAllToBP;
        TSpeedButton *btnOneFromBP;
        TSpeedButton *btnAllFromBP;
        TShadowPanel *ShadowPanel12;
        TShadowPanel *ShadowPanel13;
        TFlatListBox *lbMagicItemList;
        TTabSheet *tbChrEquip;
        TTabSheet *tbChrAIScript;
        TPanel *Panel3;
        TPageControl *pgcAIScript;
        TTabSheet *TabSheet8;
        TShadowPanel *ShadowPanel10;
        TFlatPanel *FlatPanel2;
        TMemoEx *mmChrIdlScr;
        TTabSheet *TabSheet9;
        TShadowPanel *ShadowPanel11;
        TFlatPanel *FlatPanel3;
        TMemoEx *mmChrCmbScr;
        TTabSheet *tbChrEventScript;
        TShadowPanel *ShadowPanel9;
        TFlatComboBox *FlatComboBox2;
        TFlatPanel *FlatPanel1;
        TMemoEx *mmChrEventScr;
        TTabSheet *tbChrSpells;
        TLabel *Label26;
        TLabel *Label27;
        TSpeedButton *SpeedButton5;
        TSpeedButton *SpeedButton6;
        TSpeedButton *SpeedButton7;
        TSpeedButton *SpeedButton8;
        TShadowPanel *ShadowPanel14;
        TFlatCheckListBox *FlatCheckListBox1;
        TShadowPanel *ShadowPanel15;
        TFlatListBox *FlatListBox5;
        TTabSheet *tbChrSounds;
        TPanel *pnlChrBtnBar;
        TBitBtn *btnNew;
        TBitBtn *btnSave;
        TBitBtn *btnDelete;
        TGroupBox *GroupBox3;
        TSpeedButton *btnRandomStats;
        TSpeedButton *btnRandomHitPoints;
        TSpeedButton *btnRandomDamage;
        TSpeedButton *btnRandomArmor;
        TSpeedButton *btnRandomMana;
        TLabel *Label28;
        TShadowPanel *ShadowPanel16;
        TFlatListBox *lbMstrItemList;
        TSpeedButton *btnRandomItem;
        TSpeedButton *btnDeleteItem;
        TSpeedButton *SpeedButton1;
        TTabSheet *TabSheet1;
        TShadowPanel *ShadowPanel17;
        TSaveDialog *savedat;
        TLabel *Label30;
        TLabel *Label31;
        TPanel *Panel1;
        TListBox *lbCharList;
        TTabSheet *tbChrBonus;
        TShadowPanel *ShadowPanel18;
        TFlatSpinEditInteger *sedtChrManaRec;
        TFlatSpinEditInteger *sedtChrDamage;
        TFlatSpinEditInteger *sedtChrToHit;
        TFlatSpinEditInteger *sedtChrDodge;
        TFlatSpinEditInteger *sedtChrHPRec;
        TLabel *Label32;
        TLabel *Label33;
        TLabel *Label34;
        TLabel *Label35;
        TLabel *Label36;
        TLabel *Label37;
        TLabel *Label38;
        TButton *Button1;
        TOpenDialog *OpenDialog;
        TTrackBar *tbPoxImage;
        TPanel *Panel2;
        TImage *Image1;
        void __fastcall mmChrIdlScrGetLineAttr(TObject *Sender,
          const AnsiString Line, int Index, const TSelAttrs SelAttrs,
          TLineAttrs &Attrs);
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall FormDestroy(TObject *Sender);
        void __fastcall FormResize(TObject *Sender);
        void __fastcall btnOneToBPClick(TObject *Sender);
        void __fastcall btnOneFromBPClick(TObject *Sender);
        void __fastcall btnRandomItemClick(TObject *Sender);
        void __fastcall btnAllToBPClick(TObject *Sender);
        void __fastcall btnAllFromBPClick(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall btnDeleteItemClick(TObject *Sender);
        void __fastcall btnRandomStatsClick(TObject *Sender);
        void __fastcall btnRandomHitPointsClick(TObject *Sender);
        void __fastcall btnRandomArmorClick(TObject *Sender);
        void __fastcall btnRandomManaClick(TObject *Sender);
        void __fastcall lbCharListDblClick(TObject *Sender);
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall tbPoxImageChange(TObject *Sender);
private:	// User declarations
  //List of script commands by color
  TStringList *BlueList;
  TStringList *RedList;
  TStringList *GreenList;
  TStringList *PurpleList;
  TIniFile    *MasterCharDB;

  void __fastcall LoadCharData(AnsiString GUID);
  void __fastcall MergeInheritedData(AnsiString GUID,TStringList *stControlList);
  void __fastcall SpitInheritedData(TStringList *stControlList);
  void __fastcall FormatScript(AnsiString Text, TMemoEx *Memo);


public:		// User declarations
        __fastcall TfrmChar(TComponent* Owner);

};
//---------------------------------------------------------------------------
extern PACKAGE TfrmChar *frmChar;
//---------------------------------------------------------------------------
#endif
