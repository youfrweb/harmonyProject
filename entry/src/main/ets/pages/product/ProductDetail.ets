import Navigate from '../../components/common/Navigate';
import { ImageSwiperPreview, imageSwiperType } from '../../components/image/ImageSwiperPreview';
import PageBottomNavBox from './PageBottomNavBox';
import { router } from '@kit.ArkUI';
import PageTopNavBox from './PageTopNavBox';

@Extend(Column)
function ColumnExtend() {
  .border({ radius: 16 })
  .backgroundColor(Color.White)
  .padding(12)
  .margin({ left: 8, right: 8 })
  .justifyContent(FlexAlign.Start)
}

@Entry
@Component
struct ProductDetail {
  private scroller: Scroller = new Scroller()
  @State message: string = 'Hello World';
  @State scrollYOffset: number = 0
  private imageSwiper: imageSwiperType[] = [
    {
      ImageUrl: 'https://res.vmallres.com/pimages/FssCdnProxy/vmall_product_uom/pmsSalesFile/428_428_8DC16DC80D84DEF28A4C20DD776FD865.jpg'
    },
    {
      ImageUrl: 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202410/displayProduct/26010105106/group/800_800_FEC2F72D43D2341E2C1D7C79A694FC19.jpg'
    },
    {
      ImageUrl: 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202410/displayProduct/26010105106/group/800_800_15DA67F06C1C2ACA72B44ADDD3B5FDB5.jpg'
    },
    {
      ImageUrl: 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202410/gbom/6942103138041/800_800_0F9C25112FD5046B6FCCDA2C45CD63AAmp.png'
    },
    {
      ImageUrl: 'https://res.vmallres.com/pimages/uomcdn/CN/pms/202410/displayProduct/26010105106/group/800_800_F8DE2AF77321E3416808E7971A0ED26B.jpg'
    }
  ]

  scrollToIndex(index: number) {
    this.scroller.scrollToIndex(index)
  }

  build() {
    Column() {
      Column() {
        // 主体
        List({ space: 10, scroller: this.scroller }) {
          // Column({ space: 10}) {
          ListItem() {
            // 商品轮播图
            ImageSwiperPreview({
              imageSwiper: this.imageSwiper
            })
          }

          ListItem() {
            // 价格
            Column() {
              Row() {
                Text('预估到手')
                  .fontColor($r('app.color.main_color'))
                  .fontSize(12)
                  .fontWeight(600)
                Text('¥')
                  .fontColor($r('app.color.main_color'))
                  .fontSize(14)
                  .fontWeight(600)
                  .padding({ left: 5, right: 2 })
                Text('2299')
                  .fontColor($r('app.color.main_color'))
                  .fontSize(24)
                  .fontWeight(900)
              }
              .width('100%')

              Row() {
                Text('144Hz高刷全面屏，华为笔记，专业PC级WPS')
                  .margin({ top: 5 })
                  .fontSize(12)
                  .width('100%')
                Text('\ue665')
                  .fontFamily('sysFont')
                  .fontSize(12)
                  .fontColor($r('app.color.gray_font'))
              }
              .width('100%')
              .padding({ right: 10 })

              Row({ space: 5 }) {
                Text('直降800元')
                  .fontSize(10)
                  .fontColor($r('app.color.main_color'))
                  .padding({
                    top: 3,
                    bottom: 3,
                    left: 6,
                    right: 6
                  })
                  .border({
                    width: 1,
                    color: '#f3b6bd',
                    radius: 5
                  })
                  .linearGradient({
                    colors: [['#fcf1ec', 1], ['#fee7e5', 1]]
                  })

                Text('直降800元')
                  .fontSize(10)
                  .fontColor($r('app.color.main_color'))
                  .padding({
                    top: 3,
                    bottom: 3,
                    left: 6,
                    right: 6
                  })
                  .border({
                    width: 1,
                    color: '#f3b6bd',
                    radius: 5
                  })
                  .linearGradient({
                    colors: [['#fcf1ec', 1], ['#fee7e5', 1]]
                  })
              }
              .width('100%')
              .padding({ right: 10 })
              .margin({ top: 10 })
            }
            .ColumnExtend()
          }

          ListItem() {
            // 标题
            Column() {
              Text('HUAWEI MatePad 11.5S 灵动款 WiFi 8GB+256GB 湖光青')
                .fontColor(Color.Black)
                .fontSize(15)
                .fontWeight(600)
                .width('100%')
                .wordBreak(WordBreak.BREAK_ALL)
              Text('144Hz高刷全面屏，华为笔记，专业PC级WPS')
                .margin({ top: 10 })
                .fontSize(12)
                .width('100%')
            }
            .ColumnExtend()
          }

          ListItem() {
            // 排行榜
            Column() {
              Row() {
                Text() {
                  Span('排行榜 手机热卖榜 第')
                  Span('3')
                  Span('名')
                }
                .fontColor(Color.Black)
                .fontSize(14)
                .fontWeight(500)
                .width('100%')
                .wordBreak(WordBreak.BREAK_ALL)
                .width('100%')

                Text('\ue665')
                  .fontFamily('sysFont')
                  .fontSize(12)
                  .fontColor($r('app.color.gray_font'))
              }
              .padding({
                left: 10,
                right: 10,
                top: 6,
                bottom: 6
              })
            }
            .ColumnExtend()
          }

          ListItem() {
            // 各种模块自己加
            Column({ space: 50 }) {
              Text('各种自己的模块')
                .fontColor(Color.Black)
                .fontSize(14)
                .fontWeight(500)
                .width('100%')
              Text('各种自己的模块')
                .fontColor(Color.Black)
                .fontSize(14)
                .fontWeight(500)
                .width('100%')
              Text('各种自己的模块')
                .fontColor(Color.Black)
                .fontSize(14)
                .fontWeight(500)
                .width('100%')
              Text('各种自己的模块')
                .fontColor(Color.Black)
                .fontSize(14)
                .fontWeight(500)
                .width('100%')
              Text('各种自己的模块')
                .fontColor(Color.Black)
                .fontSize(14)
                .fontWeight(500)
                .width('100%')
              Text('各种自己的模块')
                .fontColor(Color.Black)
                .fontSize(14)
                .fontWeight(500)
                .width('100%')
              Text('各种自己的模块')
                .fontColor(Color.Black)
                .fontSize(14)
                .fontWeight(500)
                .width('100%')
              Text('各种自己的模块')
                .fontColor(Color.Black)
                .fontSize(14)
                .fontWeight(500)
                .width('100%')
            }
            .ColumnExtend()
          }

          // }
        }
        .onWillScroll(() => {
          this.scrollYOffset = this.scroller.currentOffset().yOffset
        })


        // Scroll(this.scroller) {
        //   Column({ space: 10 }) {
        //     // 商品轮播图
        //     ImageSwiperPreview({
        //       imageSwiper: this.imageSwiper
        //     })
        //
        //     // 价格
        //     Column() {
        //       Row() {
        //         Text('预估到手')
        //           .fontColor($r('app.color.main_color'))
        //           .fontSize(12)
        //           .fontWeight(600)
        //         Text('¥')
        //           .fontColor($r('app.color.main_color'))
        //           .fontSize(14)
        //           .fontWeight(600)
        //           .padding({ left: 5, right: 2 })
        //         Text('2299')
        //           .fontColor($r('app.color.main_color'))
        //           .fontSize(24)
        //           .fontWeight(900)
        //       }
        //       .width('100%')
        //
        //       Row() {
        //         Text('144Hz高刷全面屏，华为笔记，专业PC级WPS')
        //           .margin({ top: 5 })
        //           .fontSize(12)
        //           .width('100%')
        //         Text('\ue665')
        //           .fontFamily('sysFont')
        //           .fontSize(12)
        //           .fontColor($r('app.color.gray_font'))
        //       }
        //       .width('100%')
        //       .padding({ right: 10 })
        //
        //       Row({ space: 5 }) {
        //         Text('直降800元')
        //           .fontSize(10)
        //           .fontColor($r('app.color.main_color'))
        //           .padding({
        //             top: 3,
        //             bottom: 3,
        //             left: 6,
        //             right: 6
        //           })
        //           .border({
        //             width: 1,
        //             color: '#f3b6bd',
        //             radius: 5
        //           })
        //           .linearGradient({
        //             colors: [['#fcf1ec', 1], ['#fee7e5', 1]]
        //           })
        //
        //         Text('直降800元')
        //           .fontSize(10)
        //           .fontColor($r('app.color.main_color'))
        //           .padding({
        //             top: 3,
        //             bottom: 3,
        //             left: 6,
        //             right: 6
        //           })
        //           .border({
        //             width: 1,
        //             color: '#f3b6bd',
        //             radius: 5
        //           })
        //           .linearGradient({
        //             colors: [['#fcf1ec', 1], ['#fee7e5', 1]]
        //           })
        //       }
        //       .width('100%')
        //       .padding({ right: 10 })
        //       .margin({ top: 10 })
        //     }
        //     .ColumnExtend()
        //     .id('list1')
        //     .onAppear(() => {
        //
        //     })
        //     .onAreaChange((oldValue: Area, newValue: Area) => {
        //       console.info(`Ace: on area change, oldValue is ${JSON.stringify(oldValue)} value is ${JSON.stringify(newValue)}`)
        //       // this.xValue = JSON.stringify(newValue.globalPosition.x)
        //       // this.yValue = JSON.stringify(newValue.globalPosition.y)
        //     })
        //
        //     // 标题
        //     Column() {
        //       Text('HUAWEI MatePad 11.5S 灵动款 WiFi 8GB+256GB 湖光青')
        //         .fontColor(Color.Black)
        //         .fontSize(15)
        //         .fontWeight(600)
        //         .width('100%')
        //         .wordBreak(WordBreak.BREAK_ALL)
        //       Text('144Hz高刷全面屏，华为笔记，专业PC级WPS')
        //         .margin({ top: 10 })
        //         .fontSize(12)
        //         .width('100%')
        //     }
        //     .ColumnExtend()
        //     .id('list2')
        //
        //     // 排行榜
        //     Column() {
        //       Row() {
        //         Text() {
        //           Span('排行榜 手机热卖榜 第')
        //           Span('3')
        //           Span('名')
        //         }
        //         .fontColor(Color.Black)
        //         .fontSize(14)
        //         .fontWeight(500)
        //         .width('100%')
        //         .wordBreak(WordBreak.BREAK_ALL)
        //         .width('100%')
        //
        //         Text('\ue665')
        //           .fontFamily('sysFont')
        //           .fontSize(12)
        //           .fontColor($r('app.color.gray_font'))
        //       }
        //       .padding({
        //         left: 10,
        //         right: 10,
        //         top: 6,
        //         bottom: 6
        //       })
        //     }
        //     .ColumnExtend()
        //
        //     // 各种模块自己加
        //     Column({ space: 50 }) {
        //       Text('各种自己的模块')
        //         .fontColor(Color.Black)
        //         .fontSize(14)
        //         .fontWeight(500)
        //         .width('100%')
        //       Text('各种自己的模块')
        //         .fontColor(Color.Black)
        //         .fontSize(14)
        //         .fontWeight(500)
        //         .width('100%')
        //       Text('各种自己的模块')
        //         .fontColor(Color.Black)
        //         .fontSize(14)
        //         .fontWeight(500)
        //         .width('100%')
        //       Text('各种自己的模块')
        //         .fontColor(Color.Black)
        //         .fontSize(14)
        //         .fontWeight(500)
        //         .width('100%')
        //       Text('各种自己的模块')
        //         .fontColor(Color.Black)
        //         .fontSize(14)
        //         .fontWeight(500)
        //         .width('100%')
        //       Text('各种自己的模块')
        //         .fontColor(Color.Black)
        //         .fontSize(14)
        //         .fontWeight(500)
        //         .width('100%')
        //       Text('各种自己的模块')
        //         .fontColor(Color.Black)
        //         .fontSize(14)
        //         .fontWeight(500)
        //         .width('100%')
        //       Text('各种自己的模块')
        //         .fontColor(Color.Black)
        //         .fontSize(14)
        //         .fontWeight(500)
        //         .width('100%')
        //     }
        //     .ColumnExtend()
        //
        //   }
        // }
        // .onWillScroll(() => {
        //   this.scrollYOffset = this.scroller.currentOffset().yOffset
        // })

        // top导航
        PageTopNavBox({
          scrollYOffset: this.scrollYOffset,
          scrollToIndex: (index: number) => {
            this.scrollToIndex(index)
          }
        })
      }
      .layoutWeight(1)

      // 底部操作
      PageBottomNavBox()
      // .onClick(() => {
      //   this.scrollToIndex()
      // })
    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.main_bg'))
  }
}

