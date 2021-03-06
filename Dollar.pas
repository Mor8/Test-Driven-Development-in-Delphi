unit Dollar;

interface

uses SysUtils, StrUtils;

type
  TDollar = class(TObject)

  private
    amount: Integer;
  public
    constructor Create(amount: Integer);
    function Times(multiplier: Integer): TDollar;
    function Equals(AObject: TObject): boolean;
  end;

implementation

constructor TDollar.Create(amount: Integer);
begin
  Self.amount := amount;
end;

function TDollar.Times(multiplier: Integer): TDollar;
var
  FDollar: TDollar;
begin
  FDollar := TDollar.Create(amount * multiplier);
  Result := FDollar;
end;

function TDollar.Equals(AObject: TObject): boolean;
var
  FDollar: TDollar;

begin
  FDollar := TDollar(AObject);
  Result := amount = FDollar.amount;
end;
end.
