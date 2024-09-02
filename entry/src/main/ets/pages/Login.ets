import { router } from '@kit.ArkUI';

interface ParamsType {
  label: string
}

@Entry
@Component
struct Login {
  @State message: string = '登录帐号以使用云空间、应用市场及更多服务';
  @State isCodeLoginShow: boolean = true
  @State addressLabel: string = '中国 +86'
  title: string = '华为帐号'

  onPageShow(): void {
    if(router.getParams() !== undefined){
      this.addressLabel = (router.getParams() as ParamsType).label
    }
  }

  build() {
    Column() {
      Image($r('app.media.ic_header_logo'))
        .width(50)
        .margin({ top: 30 })
      Text(this.title)
        .fontSize(25)
        .fontWeight(900)
        .margin({ top: 20, bottom: 5 })
      Text(this.message)
        .fontSize(14)
        .fontColor('#666')
        .margin({ bottom: 50 })

      // 短信验证码登录
      if (this.isCodeLoginShow) Column() {
        Row() {
          Text('国家/地区')
            .fontColor('#666')
          Row() {
            Text(this.addressLabel)
              .fontColor('#666')
            Image($r('app.media.ic_public_arrow_right'))
              .width(20)
              .fillColor('#666')
          }
          .onClick(() => {
            router.pushUrl({
              url: 'pages/CountryRegion',
            })
          })
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({ left: 10, right: 10 })
        .margin({ bottom: 20 })

        TextInput({
          placeholder: '手机号'
        })
          .maxLength(20)
          .type(InputType.Number)
        Row({ space: 10 }) {
          TextInput({
            placeholder: '短信验证码'
          })
            .width('60%')
            .type(InputType.Number)
          Button('获取验证码')
            .buttonStyle(ButtonStyleMode.NORMAL)
            .onClick(() => { })
        }
        .margin({ top: 20, bottom: 30 })
        .width('100%')

        Button('登录')
          .width('100%')
          .onClick(() => {
          })
          .margin({ bottom: 15 })
        Text('密码登录')
          .fontColor('#007dff')
          .onClick(() => {
            this.isCodeLoginShow = false
          })
      }
      // 密码登录
      if (!this.isCodeLoginShow) Column() {
        TextInput({
          placeholder: '手机号'
        })
          .maxLength(20)
          .type(InputType.Number)
        TextInput({
          placeholder: '密码'
        })
          .type(InputType.Password)
          .margin({ top: 20, bottom: 30 })
        Row() {
          Text('短信验证码登录')
            .fontColor('#007dff')
            .onClick(() => {
              this.isCodeLoginShow = true
            })
          Row() {
            Text('忘记密码')
              .fontColor('#007dff')
          }
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({ left: 10, right: 10 })
        .margin({ bottom: 25 })

        Button('登录')
          .width('100%')
          .onClick(() => {
          })
          .margin({ bottom: 15 })
        Button('注册账号')
          .width('100%')
          .buttonStyle(ButtonStyleMode.NORMAL)
          .onClick(() => {
          })
          .margin({ bottom: 15 })
      }

      Blank()

      Text('其他方式登录')
        .fontColor('#666')
        .fontSize(14)
      Image($r('app.media.ic_public_comments'))
        .width(40)
        .border({
          width: 1,
          color: '#ccc'
        })
        .padding(10)
        .borderRadius(20)
        .margin({ top: 20, bottom: 20 })
      Row() {
        Text('遇到问题').fontColor('#007dff').fontSize(14)
        Divider()
          .vertical(true)
          .height(20)
          .width(2)
          .color('#666')
          .margin({ left: 20, right: 20 })
        Text('用户协议').fontColor('#007dff').fontSize(14)
        Divider()
          .vertical(true)
          .height(20)
          .width(2)
          .color('#666')
          .margin({ left: 20, right: 20 })
        Text('隐私声明').fontColor('#007dff').fontSize(14)
      }
    }
    .width("100%")
    .height('100%')
    .padding(20)
  }
}
