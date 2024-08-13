import GoodPick from './components/common/GoodPick'
import { router } from '@kit.ArkUI'
import CommonCss from '../style/commonCss'

@Component
struct UserCenter {
  build() {
    Column(){
      Row({space: 12}){
        Image($r('app.media.ic_public_settings'))
          .width(25)
        Image($r('app.media.ic_public_comments'))
          .width(25)
      }
      .width('100%')
      .justifyContent(FlexAlign.End)
      .margin({right: 20, top: 15})

      // 用户基础信息
      Row(){
        Image($r('app.media.ic_header_logo'))
        // Image('/assets/image/car.png') // 也可以放在这里
          .width(50)
          .borderRadius(25)
          .margin({left: 20,right: 10})
        Text('登录/注册')
          .fontWeight(600)
          .onClick(() => {
            router.pushUrl({
              url: 'pages/Login'
            })
          })
      }
      .width('100%')
      .justifyContent(FlexAlign.Start)
      .alignItems(VerticalAlign.Top)

      Row(){
        Column(){
          Text('--')
            .fontColor('#666')
          Row(){
            Text('积分')
              .fontSize(12)
              .fontColor('#666')
            Image($r('app.media.ic_public_arrow_right'))
              .width(10)
              .fillColor('#666')
          }
        }

        Column(){
          Text('--')
            .fontColor('#666')
          Row(){
            Text('积分')
              .fontSize(12)
              .fontColor('#666')
            Image($r('app.media.ic_public_arrow_right'))
              .width(10)
              .fillColor('#666')
          }
        }

        Column(){
          Text('--')
            .fontColor('#666')
          Row(){
            Text('积分')
              .fontSize(12)
              .fontColor('#666')
            Image($r('app.media.ic_public_arrow_right'))
              .width(10)
              .fillColor('#666')
          }
        }
      }
      .width('100%')
      .padding({left: 25, right: 25})
      .margin({top: 10})
      .justifyContent(FlexAlign.SpaceAround)

      // 我的订单
      Column() {
        Column(){

        Row() {
          Text('我的订单')
            .fontSize(18)
            .fontWeight(700)
          Blank()
          Row() {
            Text('全部订单')
              .fontSize(14)
              .fontColor('#ff9b9a9a')
            Image($r('app.media.ic_public_arrow_right'))
              .width(18)
              .fillColor('#ff9b9a9a')
          }
        }
        .width('100%')
        .margin({bottom: 15})

        Row() {
          Column() {
            Image($r('app.media.ic_public_settings'))
              .width(30)
            Text('待付款')
              .fontSize(12)
              .margin(6)
          }
          .layoutWeight(1)
          Column() {
            Image($r('app.media.ic_public_settings'))
              .width(30)
            Text('待付款')
              .fontSize(12)
              .margin(6)
          }
          .layoutWeight(1)
          Column() {
            Image($r('app.media.ic_public_comments'))
              .width(30)
            Text('待付款')
              .fontSize(12)
              .margin(6)
          }
          .layoutWeight(1)
          Column() {
            Image($r('app.media.ic_public_comments'))
              .width(30)
            Text('待付款')
              .fontSize(12)
              .margin(6)
          }
          .layoutWeight(1)
          Column() {
            Image($r('app.media.ic_public_comments'))
              .width(30)
            Text('待付款')
              .fontSize(12)
              .margin(6)
          }
          .layoutWeight(1)
        }
        .width('100%')
        }
        .margin({left: 15, right:15})
        .backgroundColor('#fff')
        .borderRadius(15)
        .padding(15)

      }
      .width('100%')
      .margin({top: 20})
      .alignItems(HorizontalAlign.Start)

      // 我的服务
      Column() {
        Column(){

          Row() {
            Text('我的服务')
              .fontSize(18)
              .fontWeight(700)
            Blank()
            Row() {
              Text('在线咨询')
                .fontSize(14)
                .fontColor('#ff9b9a9a')
              Image($r('app.media.ic_public_arrow_right'))
                .width(18)
                .fillColor('#ff9b9a9a')
            }
          }
          .width('100%')
          .margin({bottom: 15})

          Row() {
            Column() {
              Image($r('app.media.ic_public_settings'))
                .width(30)
              Text('待付款')
                .fontSize(12)
                .margin(6)
            }
            .layoutWeight(1)
            Column() {
              Image($r('app.media.ic_public_settings'))
                .width(30)
              Text('待付款')
                .fontSize(12)
                .margin(6)
            }
            .layoutWeight(1)
            Column() {
              Image($r('app.media.ic_public_comments'))
                .width(30)
              Text('待付款')
                .fontSize(12)
                .margin(6)
            }
            .layoutWeight(1)
            Column() {
              Image($r('app.media.ic_public_comments'))
                .width(30)
              Text('待付款')
                .fontSize(12)
                .margin(6)
            }
            .layoutWeight(1)
            Column() {
              Image($r('app.media.ic_public_comments'))
                .width(30)
              Text('待付款')
                .fontSize(12)
                .margin(6)
            }
            .layoutWeight(1)
          }
          .width('100%')
        }
        .margin({left: 15, right:15})
        .backgroundColor('#fff')
        .borderRadius(15)
        .padding(15)

      }
      .width('100%')
      .margin({top: 20})
      .alignItems(HorizontalAlign.Start)

      // 精选好物
      GoodPick()
        .margin({left: 15, right: 15})
    }
    .backgroundColor(CommonCss.BG_COLOR)
  }
}
export default UserCenter