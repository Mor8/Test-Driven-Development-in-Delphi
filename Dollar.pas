unit Dollar;

interface

uses SysUtils, StrUtils;

type
  TDollar = class(TObject)

  private
  //   amount: Integer;
  public
    amount: Integer;
    constructor Create(amount: Integer);
    function Times(multiplier: Integer): TDollar;

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
end.
