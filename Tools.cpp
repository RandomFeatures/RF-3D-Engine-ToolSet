//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
USERES("Tools.res");
USEFORM("main.cpp", frmMain);
USEFORM("char.cpp", frmChar);
USEUNIT("J:\bcb\strFunctions.pas");
USEUNIT("POXControl.pas");
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->Title = "cRPG Tool Set";
                 Application->CreateForm(__classid(TfrmMain), &frmMain);
                 Application->CreateForm(__classid(TfrmChar), &frmChar);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        return 0;
}
//---------------------------------------------------------------------------
