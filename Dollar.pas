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
    procedure Times(multiplier: Integer);

  end;

implementation

constructor TDollar.Create(amount: Integer);
begin
  Self.amount := amount;
end;

procedure TDollar.Times(multiplier: Integer);
begin
  amount := amount*multiplier;
end;
end.
