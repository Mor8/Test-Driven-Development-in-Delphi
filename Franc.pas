unit Franc;

interface

uses SysUtils, StrUtils;

type
  TFranc = class(TObject)

  private
    amount: Integer;
  public
    constructor Create(amount: Integer);
    function Times(multiplier: Integer): TFranc;
    function Equals(AObject: TObject): boolean;
  end;

implementation

constructor TFranc.Create(amount: Integer);
begin
  Self.amount := amount;
end;

function TFranc.Times(multiplier: Integer): TFranc;
var
  FFranc: TFranc;
begin
  FFranc := TFranc.Create(amount * multiplier);
  Result := FFranc;
end;

function TFranc.Equals(AObject: TObject): boolean;
var
  FFranc: TFranc;

begin
  FFranc := TFranc(AObject);
  Result := amount = FFranc.amount;
end;
end.
