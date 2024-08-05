import GoodPick from './components/common/GoodPick'

@Component
struct ShoppingCart {
  build() {
    Column() {
      Text('购物车')
        .width('100%')
        .fontSize(20)
        .fontWeight(600)
      Scroll() {
        Column(){
          Column() {
            Image($r('app.media.convemptyCart'))
              .width(100)
            Text('购物车空荡荡')
              .fontColor('#666')
              .padding({
                top: 20,
                bottom: 10
              })
            Text('为辛苦的自己去挑选几件商品吧')
              .fontColor('#666')
              .fontSize(13)
            Button('去购物')
              .padding({
                left: 40,
                right: 40
              })
              .backgroundColor('#cf0a2c')
              .margin({
                top: 20
              })
          }
          .margin({
            top: 40
          })

          GoodPick()
        }
      }
      .scrollBar(BarState.Off)
    }
    .height('100%')
    .width('100%')
    .padding(15)
    .backgroundColor('#f1f3f5')
  }
}

export default ShoppingCart