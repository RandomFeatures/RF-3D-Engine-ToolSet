//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "char.h"
#include "strFunctions.hpp"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "NumberEdit"
#pragma link "TFlatEditUnit"
#pragma link "TFlatSpinEditUnit"
#pragma link "TFlatComboBoxUnit"
#pragma link "TFlatListBoxUnit"
#pragma link "TShadowControl"
#pragma link "TFlatTabControlUnit"
#pragma link "TFlatPanelUnit"
#pragma link "MemoEx"
#pragma link "TFlatCheckListBoxUnit"
#pragma link "TFlatSpeedButtonUnit"
#pragma resource "*.dfm"
TfrmChar *frmChar;
//---------------------------------------------------------------------------
__fastcall TfrmChar::TfrmChar(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmChar::FormCreate(TObject *Sender)
{
 PoxSetup();
 //Setup the defaults
 pgcCharacter->ActivePageIndex = 0;
 pgcAIScript->ActivePageIndex = 0;
// pgcToolList->ActivePageIndex = 0;

//create my color lists
 BlueList = new TStringList;
 GreenList = new TStringList;
 RedList = new TStringList;
 PurpleList = new TStringList;

 //open the color ini file
 TIniFile *ColorIni = new TIniFile(ExtractFilePath(Application->ExeName)+  "scriptColors.ini");


 //Read in the colors for the script commands
 ColorIni->ReadSection("blue", BlueList);
 ColorIni->ReadSection("red", RedList);
 ColorIni->ReadSection("green", GreenList);
 ColorIni->ReadSection("purple", PurpleList);

 delete ColorIni;

 MasterCharDB = new TIniFile(ExtractFilePath(Application->ExeName)+ "databases\\character.db");
 MasterCharDB->ReadSections(lbCharList->Items);
 MasterCharDB->ReadSections(cbChrInherite->Items);

}
//---------------------------------------------------------------------------

void __fastcall TfrmChar::mmChrIdlScrGetLineAttr(TObject *Sender,
      const AnsiString Line, int Index, const TSelAttrs SelAttrs,
      TLineAttrs &Attrs)
{
  int iOLoop, iLoop, iPos;
  AnsiString tmpStr;
  //grab the current line
  AnsiString strLine = LowerCase(Line);

  //see if the current line contains words from the blue list
  for (iOLoop = 0; iOLoop < BlueList->Count -1; iOLoop ++)
  {
    tmpStr = BlueList->Strings[iOLoop];
    iPos = strLine.Pos(tmpStr);
    if (iPos != 0)
    {
       for (iLoop = iPos-1; iLoop < iPos + tmpStr.Length() - 1; iLoop++)
           Attrs[iLoop].FC = clBlue;
    };
  }

  //see if the current line contains words from the green list
  for (iOLoop = 0; iOLoop < GreenList->Count -1; iOLoop ++)
  {
    tmpStr = GreenList->Strings[iOLoop];
    iPos = strLine.Pos(tmpStr);
    if (iPos != 0)
    {
       for (iLoop = iPos-1; iLoop < iPos + tmpStr.Length() - 1; iLoop++)
           Attrs[iLoop].FC = clGreen;
    };
  }

  //see if the current line contains words from the red list
  for (iOLoop = 0; iOLoop < RedList->Count -1; iOLoop ++)
  {
    tmpStr = RedList->Strings[iOLoop];
    iPos = strLine.Pos(tmpStr);
    if (iPos != 0)
    {
       for (iLoop = iPos-1; iLoop < iPos + tmpStr.Length() - 1; iLoop++)
           Attrs[iLoop].FC = clRed;
    };
  }

    // color these special case characters
    iPos = strLine.Pos("=");
    if (iPos != 0)
    {
       Attrs[iPos-1].FC = clRed;
    };

    iPos = strLine.Pos(";");
    if (iPos != 0)
    {
       Attrs[iPos-1].FC = clRed;
    };

  //see if the current line contains words from the red list
  for (iOLoop = 0; iOLoop < PurpleList->Count -1; iOLoop ++)
  {
    tmpStr = PurpleList->Strings[iOLoop];
    iPos = strLine.Pos(tmpStr);
    if (iPos != 0)
    {
       for (iLoop = iPos-1; iLoop < iPos + tmpStr.Length() - 1; iLoop++)
           Attrs[iLoop].FC = clPurple;
    };
  }

  return;

}

void __fastcall TfrmChar::FormDestroy(TObject *Sender)
{
 //free up the color lists
 PoxShutDown();
 delete BlueList;
 delete RedList;
 delete GreenList;
 delete PurpleList;
 delete MasterCharDB;
}
//---------------------------------------------------------------------------

void __fastcall TfrmChar::FormResize(TObject *Sender)
{
     //make the mid childeren look good when resizing the parent
     pnlCharMain->Left = (frmChar->ClientWidth - pnlCharMain->Width)/2;
     pnlCharMain->Top = ((frmChar->ClientHeight + pnlChrBtnBar->Height) - pnlCharMain->Height)/2;
}
//---------------------------------------------------------------------------

void __fastcall TfrmChar::btnOneToBPClick(TObject *Sender)
{
     int iLoop;
     //place magic items the characters backpack
     for (iLoop = 0; iLoop < lbMagicItemList->Items->Count; iLoop ++)
     {
         if (lbMagicItemList->Selected[iLoop])
         {
            lbChrBackPack->Items->Add(lbMagicItemList->Items->Strings[iLoop]);
         }
     }
}
//---------------------------------------------------------------------------

void __fastcall TfrmChar::btnOneFromBPClick(TObject *Sender)
{

     int iLoop;
     //Place Items from the master list into the characters backpack
     for (iLoop = 0; iLoop < lbMstrItemList->Items->Count; iLoop ++)
     {
         if (lbMstrItemList->Selected[iLoop])
         {
            lbChrBackPack->Items->Add(lbMstrItemList->Items->Strings[iLoop]);
         }

     }
}
//---------------------------------------------------------------------------

void __fastcall TfrmChar::btnRandomItemClick(TObject *Sender)
{
     //Place random Items in the charaters backpack
     int iLoop, iMaxItems;

     // Do I pick a magic item
     if (random(5) == 1 && (lbMagicItemList->Items->Count > 0))
     {
      lbChrBackPack->Items->Add(lbMagicItemList->Items->Strings[random(lbMagicItemList->Items->Count)]);
     }

     iMaxItems = random(9) + 1; //10
     //Add in the non magic items
     if (lbMstrItemList->Items->Count > 0)
     {
       for (iLoop = 0; iLoop < iMaxItems; iLoop++)
       {
        lbChrBackPack->Items->Add(lbMstrItemList->Items->Strings[random(lbMstrItemList->Items->Count)]);
       }
     }

}
//---------------------------------------------------------------------------

void __fastcall TfrmChar::btnAllToBPClick(TObject *Sender)
{
     int iLoop;
     //place all magic items the characters backpack
     for (iLoop = 0; iLoop < lbMagicItemList->Items->Count; iLoop ++)
     {
       lbChrBackPack->Items->Add(lbMagicItemList->Items->Strings[iLoop]);
     }

}
//---------------------------------------------------------------------------

void __fastcall TfrmChar::btnAllFromBPClick(TObject *Sender)
{
     int iLoop;
     //Place Items from the master list into the characters backpack
     for (iLoop = 0; iLoop < lbMstrItemList->Items->Count; iLoop ++)
     {
       lbChrBackPack->Items->Add(lbMstrItemList->Items->Strings[iLoop]);
     }

}
//---------------------------------------------------------------------------

void __fastcall TfrmChar::FormShow(TObject *Sender)
{
     //Stupid list boxes never work right!
     lbChrBackPack->Height = 219;
     lbMagicItemList->Height = 99;
     lbMstrItemList->Height = 99;
     lbCharList->Height = 174;
     randomize();

}
//---------------------------------------------------------------------------

void __fastcall TfrmChar::btnDeleteItemClick(TObject *Sender)
{
     int iLoop;
     //place magic items the characters backpack
     for (iLoop = 0; iLoop < lbChrBackPack->Items->Count; iLoop ++)
     {
         if (lbChrBackPack->Selected[iLoop])
         {
            lbChrBackPack->Items->Delete(iLoop);
         }
     }

}
//---------------------------------------------------------------------------

void __fastcall TfrmChar::btnRandomStatsClick(TObject *Sender)
{
     //pick some random stats
     sedtChrStr->Value = random(15) + 6;
     sedtChrPer->Value = random(15) + 6;
     sedtChrEnd->Value = random(15) + 6;
     sedtChrChar->Value = random(15) + 6;
     sedtChrInt->Value = random(15) + 6;
     sedtChrAgi->Value = random(15) + 6;
     sedtChrLuc->Value = random(15) + 6;
}
//---------------------------------------------------------------------------

void __fastcall TfrmChar::btnRandomHitPointsClick(TObject *Sender)
{
     //random hit points
     sedtChrHP->Value = random(480) + 21;
}
//---------------------------------------------------------------------------


void __fastcall TfrmChar::btnRandomArmorClick(TObject *Sender)
{
     //random Armor Rating
     sedtChrAR->Value = random(99) + 1;
}
//---------------------------------------------------------------------------

void __fastcall TfrmChar::btnRandomManaClick(TObject *Sender)
{
     //random Mana
     sedtChrMana->Value = random(480) + 21;
}
//---------------------------------------------------------------------------
void __fastcall TfrmChar::LoadCharData(AnsiString GUID)
{
  TStringList *stPropertyList = new TStringList;

  MergeInheritedData(GUID,stPropertyList);
  edtChrID->Text = GUID;
  cbChrInherite->ItemIndex = cbChrInherite->Items->IndexOf(stPropertyList->Values["inherite"]);
  sedtChrStr->Value = StrToInt(stPropertyList->Values["Str"]);
  sedtChrPer->Value = StrToInt(stPropertyList->Values["Per"]);
  sedtChrEnd->Value = StrToInt(stPropertyList->Values["End"]);
  sedtChrChar->Value = StrToInt(stPropertyList->Values["Cha"]);
  sedtChrInt->Value = StrToInt(stPropertyList->Values["Int"]);
  sedtChrAgi->Value = StrToInt(stPropertyList->Values["Agi"]);
  sedtChrLuc->Value = StrToInt(stPropertyList->Values["Luc"]);
  sedtChrHP->Value = StrToInt(stPropertyList->Values["Hp"]);
  sedtChrMana->Value = StrToInt(stPropertyList->Values["Mana"]);
  sedtChrLvl->Value = StrToInt(stPropertyList->Values["Lvl"]);
  sedtChrMax->Value = StrToInt(stPropertyList->Values["MaxDamage"]);
  sedtChrMin->Value = StrToInt(stPropertyList->Values["MinDamage"]);
  sedtChrAR->Value = StrToInt(stPropertyList->Values["AR"]);
  sedtChrHPRec->Value = StrToInt(stPropertyList->Values["HpRec"]);
  sedtChrManaRec->Value = StrToInt(stPropertyList->Values["ManaRec"]);
  sedtChrToHit->Value = StrToInt(stPropertyList->Values["Hit"]);
  sedtChrDodge->Value = StrToInt(stPropertyList->Values["Dodge"]);
  sedtChrDamage->Value = StrToInt(stPropertyList->Values["Damage"]);
  FormatScript(stPropertyList->Values["IdlScr"], mmChrIdlScr);
  FormatScript(stPropertyList->Values["CmbtScr"], mmChrCmbScr);
//  mmChrIdlScr->Text = stPropertyList->Values["IdlScr"];
//  mmChrCmbScr->Text = stPropertyList->Values["CmbtScr"];
//BPack
//Head
//Chest
//Back
//Legs
//Feet
//Arms
//Hands
//LHand
//RHand
//Belt
//Ring1
//Ring2
//Neck

/*
        sedtChrArmed;
        sedtChrUnArmed;
        sedtChrRanged;
        sedtChrMagery;
        lbChrBackPack;
 */
  delete stPropertyList;
}

//---------------------------------------------------------------------------
void __fastcall TfrmChar::MergeInheritedData(AnsiString GUID, TStringList *stControlList)
{
//  TStringList *stControlList = new TStringList;
  TStringList *stGUIDList = new TStringList;
  AnsiString tmpGUID;

  stGUIDList->Insert(0,GUID); //add the current one to the list
  tmpGUID = MasterCharDB->ReadString(GUID,"Inherite","");
  while(!tmpGUID.IsEmpty())
  {
    stGUIDList->Insert(0,tmpGUID);//add the last one read in to the list
    tmpGUID = MasterCharDB->ReadString(tmpGUID,"Inherite","");
  }

  for (int iLoop = 0; iLoop < stGUIDList->Count; iLoop++)
  {
      tmpGUID = stGUIDList->Strings[iLoop];
      TStringList *tmpList = new TStringList;

      MasterCharDB->ReadSectionValues(tmpGUID, tmpList);
      for (int jLoop = 0; jLoop < tmpList->Count; jLoop++)
      {
         if(stControlList->IndexOfName(tmpList->Names[jLoop]) != -1)
         {
          stControlList->Values[tmpList->Names[jLoop]] = tmpList->Values[tmpList->Names[jLoop]];
         }
         else
         {
          stControlList->Add(tmpList->Strings[jLoop]);
         }
      }
      delete tmpList;
  }

//   delete stControlList;
   delete stGUIDList;

}
//---------------------------------------------------------------------------

void __fastcall TfrmChar::SpitInheritedData(TStringList *stCurrentList)
{
  TStringList *stControlList = new TStringList;
  TStringList *stGUIDList = new TStringList;
  AnsiString tmpGUID;
  int iLoop;
  //build an inherited list
  tmpGUID = MasterCharDB->ReadString(stCurrentList->Values["inherite"],"inherite","");
  while(!tmpGUID.IsEmpty())
  {
    stGUIDList->Insert(0,tmpGUID);//add the last one read in to the list
    tmpGUID = MasterCharDB->ReadString(tmpGUID,"inherite","");
  }

  for (iLoop = 0; iLoop < stGUIDList->Count; iLoop++)
  {
      tmpGUID = stGUIDList->Strings[iLoop];
      TStringList *tmpList = new TStringList;

      MasterCharDB->ReadSectionValues(tmpGUID, tmpList);
      for (int jLoop = 0; jLoop < tmpList->Count; jLoop++)
      {
         if(stControlList->IndexOfName(tmpList->Names[jLoop]) != -1)
         {
          stControlList->Values[tmpList->Names[jLoop]] = tmpList->Values[tmpList->Names[jLoop]];
         }
         else
         {
          stControlList->Add(tmpList->Strings[jLoop]);
         }
      }
      delete tmpList;
  }

  //compare the control list to the current list to see what is different
   for (iLoop = 0; iLoop < stControlList->Count; iLoop++)
   {
       if((stCurrentList->Values[stControlList->Names[iLoop]]).AnsiCompareIC(stControlList->Values[stControlList->Names[iLoop]])==0)
       {
         stCurrentList->Delete(stCurrentList->IndexOfName(stControlList->Names[iLoop]));
       } 
   }


   delete stControlList;
   delete stGUIDList;

}
//---------------------------------------------------------------------------

void __fastcall TfrmChar::lbCharListDblClick(TObject *Sender)
{
LoadCharData(lbCharList->Items->Strings[lbCharList->ItemIndex]);
}
//---------------------------------------------------------------------------
void __fastcall TfrmChar::FormatScript(AnsiString Text, TMemoEx *Memo)
{
   Memo->Clear();
   for(int iLoop = 0; iLoop < strTokenCount(Text,';'); iLoop++)
   {
      Memo->Lines->Add(strTokenAt(Text,';',iLoop)+";");
   }
}
//---------------------------------------------------------------------------



void __fastcall TfrmChar::Button1Click(TObject *Sender)
{
  if (OpenDialog->Execute())
  {
    LoadPOX(OpenDialog->FileName);
    if (RLE)
    {
     Draw(Image1,1);
     tbPoxImage->Max = (RLE->Frames -1);
    }
  }

}
//---------------------------------------------------------------------------

void __fastcall TfrmChar::tbPoxImageChange(TObject *Sender)
{
  Draw(Image1,tbPoxImage->Position);

}
//---------------------------------------------------------------------------

