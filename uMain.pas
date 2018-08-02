unit uMain;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
    Vcl.ExtCtrls, RzPanel, RzRadGrp, Math;

type
    TfrmMain = class(TForm)
        cgBit: TRzCheckGroup;
        neIntValue: TRzNumericEdit;
        rgMethod: TRadioGroup;
        procedure neIntValueChange(Sender: TObject);
        procedure cgBitChange(Sender: TObject; Index: Integer;
          NewState: TCheckBoxState);
        procedure rgMethodClick(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.cgBitChange(Sender: TObject; Index: Integer;
  NewState: TCheckBoxState);
var
    i: Integer;
    LIntVal: Integer;
begin
    if rgMethod.ItemIndex = 1 then
    begin
        LIntVal := 0;
        for i := 0 to cgBit.Items.Count - 1 do
        begin

            if cgBit.Checks[i].Checked then
            begin
                if i = 0 then
                begin
                    Inc(LIntVal, 1);
                end
                else
                begin
                    Inc(LIntVal, Floor(Power(2, i)));
                end;
            end;

        end;
        neIntValue.IntValue := LIntVal;
    end;
end;

procedure TfrmMain.neIntValueChange(Sender: TObject);
var
    LIntVal, i: Integer;
begin
    if rgMethod.ItemIndex = 0 then
    begin
        LIntVal := neIntValue.IntValue;

        for i := cgBit.Items.Count - 1 downto 1 do
        begin
            if LIntVal >= Floor(Power(2, i)) then
            begin
                cgBit.Checks[i].Checked := True;
                Dec(LIntVal, Floor(Power(2, i)))
            end
            else
            begin
                cgBit.Checks[i].Checked := False;
            end;

        end;

        if LIntVal = 1 then
        begin
            cgBit.Checks[0].Checked := True;
        end
        else
        begin
            cgBit.Checks[0].Checked := False;
        end;

    end;

end;

procedure TfrmMain.rgMethodClick(Sender: TObject);
var
    i: Integer;
begin
    neIntValue.IntValue := 0;

    for i := 0 to cgBit.Items.Count - 1 do
    begin
        cgBit.Checks[i].Checked := False;
    end;

end;

end.
