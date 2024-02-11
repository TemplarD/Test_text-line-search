unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TMyForm = class(TForm)
    TextEditor: TMemo;
    PrintString: TEdit;
    SelectionNumberString: TComboBox;
    StartSelection: TButton;
    SumB: TButton;
    procedure StartSelectionClick(Sender: TObject);
    procedure SumBClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MyForm: TMyForm;

implementation

{$R *.dfm}

procedure TMyForm.StartSelectionClick(Sender: TObject);
var 
  SelectionIndex: Integer; //хранение инедекса SelectionNumberString выбранного номера строки
  begin
    try
      begin  
      selectionIndex := SelectionNumberString.ItemIndex;
        if (selectionIndex <> -1) and (SelectionNumberString.Text <> '') then
          begin
          PrintString.Text := TextEditor.Lines[selectionIndex];
          end
        else
        ShowMessage('Параметр не выбран');
      end;
    except
    ShowMessage('Произошла не предвиденная ошибка, при выборе и выводе строки!');
    end;
  end;

procedure TMyForm.SumBClick(Sender: TObject);
var
  Count: Integer;  // хранение числа вхождений в текст компонента TextEditor искомых символов.
  i: Integer;
  TextToSearch: string; // хранение текста приведенного к нижнему регистру, для избежания дублирования логики при поиске символов
  begin
    try
      begin
      TextToSearch := AnsiLowerCase(TextEditor.Text);  //приводим кирилический текст к нижнему регистру
      Count := 0;
        for i := 1 to Length(TextToSearch) do
          begin
            if TextToSearch[i] = 'б' then
            inc(Count);
          end;
      PrintString.Text := IntToStr(Count);
      end;
    Except
    ShowMessage('Произошла не предвиденная ошибка, при подсчете символов б!');
    end;
  end;

end.
