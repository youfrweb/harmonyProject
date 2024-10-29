@Component
export struct HomeTab {
  build() {
    Column() {
      Row({ space: 16 }) {
        Column() {
          Text('华为')
            .fontColor('#000')
            .fontSize(14)
          Row() {
          }
          .width(15)
          .height(2)
          .backgroundColor('#000')
          .margin({
            top: 8
          })
        }

        Text('鸿蒙智行')
          .fontColor('#656565')
          .fontSize(14)
        Text('华为智选')
          .fontColor('#656565')
          .fontSize(14)
        Text('生态周边')
          .fontColor('#656565')
          .fontSize(14)
      }
      .alignItems(VerticalAlign.Top)
    }
    .width('100%')
    .margin({
      top: 18,
      bottom: 12
    })
  }
}

export default HomeTab

