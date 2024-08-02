
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Stack({ alignContent: Alignment.Bottom }) {

      // 主体
      Stack({ alignContent: Alignment.Top }) {
        // 头部
        Row() {
          Column() {
            Text('北京')
              .fontColor(Color.White)
              .fontSize(18)
            Text('晴 28°C')
              .fontColor(Color.White)
              .fontSize(12)
            Image($r('app.media.ic_public_arrow_down_0'))
              .width(12)
              .position({
                x: 40,
                y: 0
              })
          }

          Row() {
            Image($r('app.media.ic_public_search'))
              .width(20)
              .fillColor('#666')
              .margin({ left: 5, right: 5 })
            Text('北京交通一卡通')
              .layoutWeight(1)
            Text('搜索')
              .fontColor('#5b73de')
              .width(55)
              .textAlign(TextAlign.Center)
              .border({
                width: { left: 1 },
                color: '#ccc'
              })
          }
          .height(32)
          .layoutWeight(1)
          .backgroundColor('#fff')
          .borderRadius(5)
          .margin({ left: 25, right: 12 })

          Image($r('app.media.ic_public_add_norm'))
            .width(20)
            .fillColor('#fff')
        }
        .padding({
          left: 10,
          right: 10
        })
        .width('100%')
        .height(60)
        .backgroundColor('#5b73de')
        .zIndex(1)

        // 主体页面区
        Scroll() {
          Column() {
            // 第一部分
            Row() {
              Column() {
                Image($r('app.media.ic_public_add_norm'))
                  .width(35)
                  .fillColor('#fff')
                  .margin({ bottom: 3 })
                Text('理财')
                  .fontSize(15)
                  .fontColor('#fff')
              }
              .layoutWeight(1)

              Column() {
                Image($r('app.media.ic_public_add_norm'))
                  .width(35)
                  .fillColor('#fff')
                  .margin({ bottom: 3 })
                Text('理财')
                  .fontSize(15)
                  .fontColor('#fff')
              }
              .layoutWeight(1)

              Column() {
                Image($r('app.media.ic_public_add_norm'))
                  .width(35)
                  .fillColor('#fff')
                  .margin({ bottom: 3 })
                Text('理财')
                  .fontSize(15)
                  .fontColor('#fff')
              }
              .layoutWeight(1)

              Column() {
                Image($r('app.media.ic_public_add_norm'))
                  .width(35)
                  .fillColor('#fff')
                  .margin({ bottom: 3 })
                Text('理财')
                  .fontSize(15)
                  .fontColor('#fff')
              }
              .layoutWeight(1)
            }
            .width('100%')
            .backgroundColor('#5b73de')
            .padding({ top:5, bottom: 15 })

            Column(){
              Row() {
                Column() {
                  Image($r('app.media.ic_public_add_norm'))
                    .width(35)
                    .fillColor('#666')
                    .margin({ bottom: 3 })
                  Text('理财')
                    .fontSize(15)
                    .fontColor('#666')
                }
                .layoutWeight(1)

                Column() {
                  Image($r('app.media.ic_public_add_norm'))
                    .width(35)
                    .fillColor('#666')
                    .margin({ bottom: 3 })
                  Text('理财')
                    .fontSize(15)
                    .fontColor('#666')
                }
                .layoutWeight(1)

                Column() {
                  Image($r('app.media.ic_public_add_norm'))
                    .width(35)
                    .fillColor('#666')
                    .margin({ bottom: 3 })
                  Text('理财')
                    .fontSize(15)
                    .fontColor('#666')
                }
                .layoutWeight(1)

                Column() {
                  Image($r('app.media.ic_public_add_norm'))
                    .width(35)
                    .fillColor('#666')
                    .margin({ bottom: 3 })
                  Text('理财')
                    .fontSize(15)
                    .fontColor('#666')
                }
                .layoutWeight(1)

                Column() {
                  Image($r('app.media.ic_public_add_norm'))
                    .width(35)
                    .fillColor('#666')
                    .margin({ bottom: 3 })
                  Text('理财')
                    .fontSize(15)
                    .fontColor('#666')
                }
                .layoutWeight(1)
              }
              .width('100%')
              .padding({ top:5, bottom: 15 })

              Row() {
                Column() {
                  Image($r('app.media.ic_public_add_norm'))
                    .width(35)
                    .fillColor('#666')
                    .margin({ bottom: 3 })
                  Text('理财')
                    .fontSize(15)
                    .fontColor('#666')
                }
                .layoutWeight(1)

                Column() {
                  Image($r('app.media.ic_public_add_norm'))
                    .width(35)
                    .fillColor('#666')
                    .margin({ bottom: 3 })
                  Text('理财')
                    .fontSize(15)
                    .fontColor('#666')
                }
                .layoutWeight(1)

                Column() {
                  Image($r('app.media.ic_public_add_norm'))
                    .width(35)
                    .fillColor('#666')
                    .margin({ bottom: 3 })
                  Text('理财')
                    .fontSize(15)
                    .fontColor('#666')
                }
                .layoutWeight(1)

                Column() {
                  Image($r('app.media.ic_public_add_norm'))
                    .width(35)
                    .fillColor('#666')
                    .margin({ bottom: 3 })
                  Text('理财')
                    .fontSize(15)
                    .fontColor('#666')
                }
                .layoutWeight(1)

                Column() {
                  Image($r('app.media.ic_public_add_norm'))
                    .width(35)
                    .fillColor('#666')
                    .margin({ bottom: 3 })
                  Text('理财')
                    .fontSize(15)
                    .fontColor('#666')
                }
                .layoutWeight(1)
              }
              .width('100%')
              .padding({ top:5, bottom: 15 })

              Row() {
                Column() {
                  Image($r('app.media.ic_public_add_norm'))
                    .width(35)
                    .fillColor('#666')
                    .margin({ bottom: 3 })
                  Text('理财')
                    .fontSize(15)
                    .fontColor('#666')
                }
                .layoutWeight(1)

                Column() {
                  Image($r('app.media.ic_public_add_norm'))
                    .width(35)
                    .fillColor('#666')
                    .margin({ bottom: 3 })
                  Text('理财')
                    .fontSize(15)
                    .fontColor('#666')
                }
                .layoutWeight(1)

                Column() {
                  Image($r('app.media.ic_public_add_norm'))
                    .width(35)
                    .fillColor('#666')
                    .margin({ bottom: 3 })
                  Text('理财')
                    .fontSize(15)
                    .fontColor('#666')
                }
                .layoutWeight(1)

                Column() {
                  Image($r('app.media.ic_public_add_norm'))
                    .width(35)
                    .fillColor('#666')
                    .margin({ bottom: 3 })
                  Text('理财')
                    .fontSize(15)
                    .fontColor('#666')
                }
                .layoutWeight(1)

                Column() {
                  Image($r('app.media.ic_public_add_norm'))
                    .width(35)
                    .fillColor('#666')
                    .margin({ bottom: 3 })
                  Text('理财')
                    .fontSize(15)
                    .fontColor('#666')
                }
                .layoutWeight(1)
              }
              .width('100%')
              .padding({ top:5, bottom: 15 })
            }
            .width('100%')
            .height(1000)
            .backgroundColor('#f6f6f6')
            .borderRadius({
              topLeft: 20,
              topRight: 20
            })

            // 第二部分
            Flex({
              wrap: FlexWrap.Wrap
            }) {
              Column() {
                Image($r('app.media.ic_public_add_norm'))
                  .width(35)
                  .fillColor('#fff')
                  .margin({ bottom: 3 })
                Text('理财')
                  .fontSize(15)
                  .fontColor('#fff')
              }
              .margin({left: 10, right: 10})

              Column() {
                Image($r('app.media.ic_public_add_norm'))
                  .width(35)
                  .fillColor('#fff')
                  .margin({ bottom: 3 })
                Text('理财')
                  .fontSize(15)
                  .fontColor('#fff')
              }
              .margin({left: 10, right: 10})

              Column() {
                Image($r('app.media.ic_public_add_norm'))
                  .width(35)
                  .fillColor('#fff')
                  .margin({ bottom: 3 })
                Text('理财')
                  .fontSize(15)
                  .fontColor('#fff')
              }
              .margin({left: 10, right: 10})

              Column() {
                Image($r('app.media.ic_public_add_norm'))
                  .width(35)
                  .fillColor('#fff')
                  .margin({ bottom: 3 })
                Text('理财')
                  .fontSize(15)
                  .fontColor('#fff')
              }.margin({left: 10, right: 10})

              Column() {
                Image($r('app.media.ic_public_add_norm'))
                  .width(35)
                  .fillColor('#fff')
                  .margin({ bottom: 3 })
                Text('理财')
                  .fontSize(15)
                  .fontColor('#fff')
              }.margin({left: 10, right: 10})


              Column() {
                Image($r('app.media.ic_public_add_norm'))
                  .width(35)
                  .fillColor('#fff')
                  .margin({ bottom: 3 })
                Text('理财')
                  .fontSize(15)
                  .fontColor('#fff')
              }
              Column() {
                Image($r('app.media.ic_public_add_norm'))
                  .width(35)
                  .fillColor('#fff')
                  .margin({ bottom: 3 })
                Text('理财')
                  .fontSize(15)
                  .fontColor('#fff')
              }
              Column() {
                Image($r('app.media.ic_public_add_norm'))
                  .width(35)
                  .fillColor('#fff')
                  .margin({ bottom: 3 })
                Text('理财')
                  .fontSize(15)
                  .fontColor('#fff')
              }
              Column() {
                Image($r('app.media.ic_public_add_norm'))
                  .width(35)
                  .fillColor('#fff')
                  .margin({ bottom: 3 })
                Text('理财')
                  .fontSize(15)
                  .fontColor('#fff')
              }
              Column() {
                Image($r('app.media.ic_public_add_norm'))
                  .width(35)
                  .fillColor('#fff')
                  .margin({ bottom: 3 })
                Text('理财')
                  .fontSize(15)
                  .fontColor('#fff')
              }

              Column() {
                Image($r('app.media.ic_public_add_norm'))
                  .width(35)
                  .fillColor('#fff')
                  .margin({ bottom: 3 })
                Text('理财')
                  .fontSize(15)
                  .fontColor('#fff')
              }
              Column() {
                Image($r('app.media.ic_public_add_norm'))
                  .width(35)
                  .fillColor('#fff')
                  .margin({ bottom: 3 })
                Text('理财')
                  .fontSize(15)
                  .fontColor('#fff')
              }
              Column() {
                Image($r('app.media.ic_public_add_norm'))
                  .width(35)
                  .fillColor('#fff')
                  .margin({ bottom: 3 })
                Text('理财')
                  .fontSize(15)
                  .fontColor('#fff')
              }
              Column() {
                Image($r('app.media.ic_public_add_norm'))
                  .width(35)
                  .fillColor('#fff')
                  .margin({ bottom: 3 })
                Text('理财')
                  .fontSize(15)
                  .fontColor('#fff')
              }
              Column() {
                Image($r('app.media.ic_public_add_norm'))
                  .width(35)
                  .fillColor('#fff')
                  .margin({ bottom: 3 })
                Text('理财')
                  .fontSize(15)
                  .fontColor('#fff')
              }
            }

          }
          .width('100%')
          .padding({
            top: 60,
            bottom: 60
          })
        }

      }
      .width('100%')
      .height('100%')

      // 底部
      Row() {
        Column() {
          Image($r('app.media.app_icon'))
            .width(32)
        }
        .layoutWeight(1)

        Column() {
          Image($r('app.media.app_icon'))
            .width(32)
            .margin({ bottom: 3 })
          Text('理财')
            .fontSize(12)
        }
        .layoutWeight(1)

        Column() {
          Image($r('app.media.app_icon'))
            .width(32)
            .margin({ bottom: 3 })
          Text('理财')
            .fontSize(12)
        }
        .layoutWeight(1)

        Column() {
          Image($r('app.media.app_icon'))
            .width(32)
            .margin({ bottom: 3 })
          Text('理财')
            .fontSize(12)
        }
        .layoutWeight(1)
      }
      .width('100%')
      .height(60)
      .backgroundColor(Color.White)
    }
    .width("100%")
    .height("100%")
    .backgroundColor('#5b73de')
  }
}