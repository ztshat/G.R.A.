unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.StdCtrls;

type
  TMain = class(TForm)
    Image4: TImage;
    Panel_io: TPanel;
    Panel_menu: TPanel;
    DrawButton: TImage;
    Image6: TImage;
    Image7: TImage;
    IntButton: TImage;
    GroupBox1: TGroupBox;
    Intelect: TPanel;
    index: TPanel;
    to_menu: TImage;
    draw: TPanel;
    Image1: TImage;
    Image2: TImage;
    simple: TPanel;
    Image12: TImage;
    axes: TPanel;
    Image14: TImage;
    Memo1: TMemo;
    Memo2: TMemo;
    ConnectL: TButton;
    Memo3: TMemo;
    build: TButton;
    Memo4: TMemo;
    Memo5: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Image16: TImage;
    Image13: TImage;
    Image3: TImage;
    DownPanel: TPanel;
    ImageCanvas: TImage;
    ColorListBox1: TColorListBox;
    RadioGroup1: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure to_menuClick(Sender: TObject);
    procedure IntButtonClick(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure DrawButtonClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
  procedure DrawLine(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;
  w,h,icw,ich,st:integer;

implementation

{$R *.dfm}

procedure TMain.DrawButtonClick(Sender: TObject);
begin

   index.Visible:=false;
   simple.Visible:=False;
  intelect.Visible:=False;
  axes.Visible:=False;
  draw.Visible:=true;
  draw.Height:=Panel_menu.Height-30;
  draw.Width:=250;
  draw.Top:=20;
  draw.Left:=20;

  DrawLine(self);
end;


procedure TMain.FormCreate(Sender: TObject);

begin
  w:=Screen.Width;
  h:=Screen.Height;
  Panel_io.Width:=w;
  Panel_menu.Width:=290;
  Panel_menu.Height:=h-panel_io.Height-60;
  index.Height:=Panel_menu.Height-30;
  intelect.Height:=Panel_menu.Height-30;
  simple.Height:=Panel_menu.Height-30;


  DownPanel.Height:=140;
  DownPanel.Width:=w-40;
  GroupBox1.Left:=DownPanel.Width-320;
  //Розміщення картинки для малювання
  icw:=w-290;
  ich:=h-140;
  ImageCanvas.Width:=icw;
  ImageCanvas.Height:=ich;






end;


  //Малювання клітинок
  procedure TMain.DrawLine(Sender : TObject);
var
wl,hl,i,st: integer;
begin
ImageCanvas.Canvas.Pen.Color:=clBlack;

 st:=(RadioGroup1.ItemIndex+1)*10;
i:=1;
//Малювання вертикальних ліній
while i<=icw do
begin
ImageCanvas.Canvas.MoveTo(i,0);
ImageCanvas.Canvas.LineTo(i,ich);
i:=i+st;
 end;
 //Малювання горизонтальних ліній
 i:=0;
 while i<=ich do
 begin
   ImageCanvas.Canvas.MoveTo(0,i);
ImageCanvas.Canvas.LineTo(icw,i);
i:=i+st;
 end;




end;
procedure TMain.to_menuClick(Sender: TObject);
begin
   index.Visible:=true;
   intelect.Visible:=false;
   simple.Visible:=False;
   axes.Visible:=False;
end;

procedure TMain.IntButtonClick(Sender: TObject);
begin
  intelect.BringToFront;



end;

procedure TMain.RadioGroup1Click(Sender: TObject);
begin

//заливка фону прямокутником
ImageCanvas.Canvas.Pen.Width:=1;
ImageCanvas.Canvas.Brush.Color:=clWhite;
ImageCanvas.Canvas.Pen.Color:=clWhite;
ImageCanvas.Canvas.Rectangle(0,0,icw,ich);

//
DrawLine(self);
end;

procedure TMain.Image6Click(Sender: TObject);
begin

 intelect.BringToFront;



end;

procedure TMain.Image7Click(Sender: TObject);
begin
  intelect.BringToFront;




end;

end.
