
interface commodityType {
  id: number
  imgUrl: string,
  tip: string,
  price: number,
  isSlowPrice: boolean
}

@Component
export struct HomeWelfare {

  @State commodityList: commodityType[] = [
    {id: 1, imgUrl: 'classify020', tip: '用券价', price: 439, isSlowPrice: true},
    {id: 2, imgUrl: 'classify019', tip: '用券价', price: 439, isSlowPrice: true},
    {id: 3, imgUrl: 'classify018', tip: '限购1件', price: 1, isSlowPrice: false},
    {id: 4, imgUrl: 'classify017', tip: '限购1件', price: 1, isSlowPrice: false},
  ]
  build() {
    Column() {
      Column() {
      // 标题
        Row() {
          Column({ space: 6 }) {
            Text('新人有礼 福利专区')
              .fontSize(18)
              .fontWeight(700)
            Text('用券专区 | 一元专区 | 新人特惠')
              .fontSize(10)
              .fontColor('#ff858585')
          }
          .alignItems(HorizontalAlign.Start)

          Blank()
          Row() {
            Text('领10元劵')
              .fontSize(12)
              .fontWeight(600)
            Image($r('app.media.ic_public_arrow_right'))
              .width(16)
          }
        }
        .width('100%')
        // 商品
        Row() {
          ForEach(this.commodityList, (item: commodityType) => {
            Column() {
              Image($r(`app.media.${item.imgUrl}`))
                .width(50)
              Text(item.tip)
                .fontSize(10)
                .borderRadius(10)
                .fontColor('#666')
                .backgroundColor('#eee')
                .padding({
                  left: 8,
                  right: 8,
                  top: 3,
                  bottom: 3
                })
                .margin({
                  top: 8,
                  bottom: 6
                })
              Text() {
                Span(`￥${item.price}`)
                  .fontWeight(600)
                  .fontSize(14)
                if(item.isSlowPrice) Span('起')
                  .fontWeight(600)
                  .fontSize(10)
              }
            }
            .layoutWeight(1)
          })
        }
        .margin({
          top: 20
        })
      }
      .width('100%')
      .backgroundColor('#fff')
      .borderRadius(15)
      .padding(15)
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

export default HomeWelfare

