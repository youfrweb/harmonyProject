@Component
export default struct PageBottomNavBox {
  build() {
    Row() {
      Column({ space: 4 }) {
        Text('\ue607')
          .fontFamily('sysFont')
          .fontSize(26)
          .fontColor(Color.Black)
        Text('首页')
          .fontSize(12)
      }
      .justifyContent(FlexAlign.Center)

      Column({ space: 4 }) {
        Text('\uec2e')
          .fontFamily('sysFont')
          .fontSize(24)
          .fontColor(Color.Black)
        Text('客服')
          .fontSize(12)
      }
      .justifyContent(FlexAlign.Center)
      .padding({ left: 15, right: 15 })

      Column({ space: 4 }) {
        Text('\ue67e')
          .fontFamily('sysFont')
          .fontSize(26)
          .fontColor(Color.Black)
        Text('购物车')
          .fontSize(12)
      }
      .justifyContent(FlexAlign.Center)

      Row() {
        Text('加入购物车')
          .fontColor(Color.White)
          .backgroundColor('#ff924c')
          .padding(10)
          .border({
            radius: { topLeft: 30, bottomLeft: 30 }
          })
        Text('立即购买')
          .fontColor(Color.White)
          .backgroundColor('#db211e')
          .padding(10)
          .border({
            radius: { topRight: 30, bottomRight: 30 }
          })
      }
      .margin({ left: 10 })
    }
    .width('100%')
    .height(60)
    .backgroundColor($r('app.color.main_bg'))
    .border({
      width: { top: 1 },
      color: '#ffd9d5d5'
    })
    .justifyContent(FlexAlign.Center)
  }
}