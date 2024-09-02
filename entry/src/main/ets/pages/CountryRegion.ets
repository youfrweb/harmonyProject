import { CountryData, orderByLetter } from '../viewModal/orderByLetterData';
import { router } from '@kit.ArkUI';

@Entry
@Component
struct CountryRegion {
  @State message: string = 'Hello World';
  @State currentTab: number = 0
  private scrollerForList: Scroller = new Scroller()

  @Builder
  itemHead(text: string) {
    Text(text.toUpperCase())
      .fontSize(20)
      .width("100%")
      .fontColor(Color.Gray)
  }

  build() {
    Column() {
      // 导航
      Row(){
        Image($r('app.media.ic_public_back'))
          .width(26)
          .margin({left: 20})
          .onClick(() => {
            router.back()
          })
        Text('国家/地区')
          .fontSize(22)
          .width('100%')
          .margin(20)
      }

      Row() {
        Image($r('app.media.ic_public_search'))
          .width(22)
          .fillColor('#5c5c5d')
        TextInput({
          placeholder: '搜索'
        })
          .backgroundColor(Color.Transparent)
      }
      .backgroundColor('#fff3f0f0')
      .borderRadius(20)
      .padding({
        left: 10,
        right: 10
      })
      .margin(15)

      Text('已支持短信验证码登录的国家/地区')
        .width('100%')
        .fontColor('#666')
        .padding({left: 15})

      // Row(){
      //   Text('已开通')
      //   Text('已选')
      //     .padding({right: 15})
      // }
      // .width('100%')
      // .justifyContent(FlexAlign.SpaceBetween)
      // // .padding({left: 15, right: 15})
      // .padding(15)
      // .border({
      //   width: {bottom: 1},
      //   color: '#ccc'
      // })

      // 列表
      List({ space: 20, initialIndex: 0, scroller: this.scrollerForList }) {
        ForEach(Object.keys(orderByLetter), (item: string) => {
          ListItemGroup({ header: this.itemHead(item) }) {
            ForEach(Object(orderByLetter)[item], (order: CountryData) => {
              ListItem() {
                Text(order.label)
                  .width("100%")
                  .height(50)
                  .fontSize(18)
                  .fontColor('#666')
                  .backgroundColor(0xFFFFFF)
              }
              .onClick(() => {
                router.back({
                  url: 'pages/Login',
                  params: {
                    label: order.label
                  }
                })
              })
            })
          }
          .divider({ strokeWidth: 1, color: '#ccc' }) // 每行之间的分界线
          .padding({ left: 15, right: 15 })
        })
      }
      .layoutWeight(1)
      .onScrollIndex((start: number, end: number, center: number) => {
        this.currentTab = start
      })
      .margin({top: 10})

      // 浮动导航
      Column(){
        ForEach(Object.keys(orderByLetter), (item: string, index: number) => {
          Text(item.toUpperCase())
            .fontSize(14)
            .height(26)
            .fontColor(this.currentTab === index ? '#007dff' : '#666')
            .onClick(() => {
              this.scrollerForList.scrollToIndex(index)
            })
        })
      }
      .width(10)
      .position({
        right: 10,
        top: 120
      })
    }
  }
}
