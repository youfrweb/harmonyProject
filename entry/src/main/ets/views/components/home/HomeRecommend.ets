@Component
export struct HomeRecommend {
  build() {
    Column() {

      Column() {
        Text('甄选推荐')
          .fontSize(18)
          .fontWeight(700)
        Swiper() {
          ForEach(Array.from({ length: 5 }), () => {
            Column() {
              Image($r('app.media.recommend01'))// .objectFit(ImageFit.Cover)
                .width('100%')
              Text('HUAWEI FreeBuds 6i')
                .fontSize(16)
                .fontWeight(600)
              Text('旗舰级降噪深度 | 智慧动态降噪 3.0 | 低音澎湃')
                .fontSize(12)
                .fontColor('#666')
                .margin({
                  top: 5
                })
              Row() {
                Text(`￥5499起`)
                  .fontSize(13)
                  .fontColor('#000')
                  .fontWeight(600)
                Blank()
                Text('立即购买')
                  .fontSize(13)
                  .fontColor('#000')
                  .fontWeight(600)
                  .backgroundColor('#eee')
                  .borderRadius(20)
                  .padding({
                    left: 20,
                    right: 20,
                    top: 8,
                    bottom: 8
                  })
              }
              .width('100%')
              .margin({
                top: 8
              })
              .padding({bottom: 20})
            }
            .alignItems(HorizontalAlign.Start)
          })

        }
        .autoPlay(true)
        .indicator(
          Indicator.dot()
            .selectedColor('#cf0a2c')
        )
      }
      .width('100%')
      .backgroundColor('#fff')
      .borderRadius(15)
      .padding({
        left: 15,
        right: 15,
        top: 15
      })
      .alignItems(HorizontalAlign.Start)
    }
    .width('100%')
    .padding({
      left: 12,
      right: 12
    })
    .margin({
      top: 8
    })
  }
}

export default HomeRecommend

