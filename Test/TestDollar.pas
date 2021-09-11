unit TestDollar;
{

  Delphi DUnit テスト ケース
  ----------------------
  このユニットには、テスト ケース ウィザードで生成されたスケルトン テスト ケース クラスが含まれています。
  生成されたコードを正しくセットアップできるように修正し、テスト対象ユニットのメソッドを 
  呼び出します。

}

interface

uses
  TestFramework, StrUtils, Dollar, SysUtils;

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
  end;

implementation

procedure TestTDollar.SetUp;
begin
  FDollar := TDollar.Create(5);
end;

procedure TestTDollar.TearDown;
begin
  FDollar.Free;
  FDollar := nil;
end;

procedure TestTDollar.TestMutliplication;

begin
  FDollar.Times(2);

  CheckEquals(10, FDollar.amount, 'test');
end;

initialization
  // テスト ケースをテスト ランナーに登録する
  RegisterTest(TestTDollar.Suite);
end.

