unit TestMoney;
{

  Delphi DUnit テスト ケース
  ----------------------
  このユニットには、テスト ケース ウィザードで生成されたスケルトン テスト ケース クラスが含まれています。
  生成されたコードを正しくセットアップできるように修正し、テスト対象ユニットのメソッドを 
  呼び出します。

}

interface

uses
  TestFramework, StrUtils, Dollar, SysUtils, DunitX.TestFramework;

type
  // クラスのテスト メソッド TDollar

  TestTDollar = class(TTestCase)
  strict private
    FDollar: TDollar;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestMutliplication;
    procedure TestEquality;
  end;

implementation

procedure TestTDollar.SetUp;
begin
  FDollar := TDollar.Create(5);
end;

procedure TestTDollar.TearDown;
begin
  FDollar.Free;
end;

procedure TestTDollar.TestMutliplication;
var
  product: TDollar;

begin
  Assert.IsTrue(TDollar.Create(10).Equals(FDollar.Times(2)));
  Assert.IsTrue(TDollar.Create(15).Equals(FDollar.Times(3)));

end;

procedure TestTDollar.TestEquality;
begin
  Assert.IsTrue(TDollar.Create(5).Equals(TDollar.Create(5)));
  Assert.IsFalse(TDollar.Create(5).Equals(TDollar.Create(6)))
end;

initialization
  // テスト ケースをテスト ランナーに登録する
  RegisterTest(TestTDollar.Suite);
end.

