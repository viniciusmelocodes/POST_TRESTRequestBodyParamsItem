object Form1: TForm1
  Left = 650
  Top = 329
  Caption = 'Form1'
  ClientHeight = 108
  ClientWidth = 334
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 328
    Height = 102
    Align = alClient
    Caption = 'Requisi'#231#227'o POST'
    TabOrder = 0
    OnClick = btn1Click
    ExplicitLeft = 232
    ExplicitTop = 88
    ExplicitWidth = 177
    ExplicitHeight = 73
  end
  object rstclnt1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'https://api.e-com.plus/v1/_authenticate.json'
    ContentType = 'application/json'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 24
    Top = 32
  end
  object rstrqst1: TRESTRequest
    Client = rstclnt1
    Method = rmPOST
    Params = <
      item
        Kind = pkHTTPHEADER
        name = 'Content-Type'
        Value = 'application/json; charset=utf-8'
      end
      item
        Kind = pkHTTPHEADER
        name = 'X-Store-ID'
        Value = '1182'
      end
      item
        Kind = pkREQUESTBODY
        name = 'body'
        Options = [poDoNotEncode]
        Value = 
          '{'#13#10'    "_id": "5f9c2472b2161709fa46a492",'#13#10'    "api_key": "c7cdf' +
          '0d113050966a7c1f13dc1efbdb0abdb0e107e2761bd80601cadfd6317d2cefdd' +
          'd7dd455f3290d0593bb7219ec79f00b9cfc76a16a9c19136b55472e752e"'#13#10'}'
        ContentType = ctAPPLICATION_JSON
      end>
    Response = rstrspns1
    SynchronizedEvents = False
    Left = 96
    Top = 32
  end
  object rstrspns1: TRESTResponse
    ContentType = 'application/json'
    Left = 168
    Top = 32
  end
end
