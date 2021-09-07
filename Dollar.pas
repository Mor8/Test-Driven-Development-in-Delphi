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
end;

procedure TDollar.Times(multiplier: Integer);
begin

end;
end.
