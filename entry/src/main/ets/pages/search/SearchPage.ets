import Navigate from '../../components/common/Navigate'
import { router } from '@kit.ArkUI'
import IndexApi from '../../api/home'
import SearchTop from './tip/SearchTop'

interface RouterParams {
  findTip: string
}

@Entry
@Component
struct SearchPage {
  @State routerParams: RouterParams = {
    findTip: ''
  }
  @State searchValue: string = ''
  @State tipList: string[] = []
  @State recentSearchList: string[] = []

  async aboutToAppear(): Promise<void> {
    const params = router.getParams() as RouterParams
    if (params) {
      this.routerParams = params
    }

    this.tipList = await IndexApi.getTipList()
    // 获取本地最新搜索记录
    // this.recentSearchList =
  }

  build() {
    Column() {
      // top导航/搜索模块
      Navigate() {
        Search({
          value: this.searchValue,
          placeholder: this.routerParams?.findTip || '请输入'
        })
          .backgroundColor('#fff')
          .layoutWeight(1)
          .margin({
            left: 15,
            right: 15
          })
          .onChange((value: string) => {
            this.searchValue = value
          })

        Text('搜索')
          .fontWeight(600)
          .fontColor(Color.Black)
          .onClick(() => {
            // console.log('this.routerParams', this.searchValue, JSON.stringify(this.routerParams))
            console.log('this.routerParams', this.searchValue)
            const value: string = this.searchValue || this.routerParams.findTip
            this.recentSearchList.push(value)
          })
      }

      Scroll() {
        Column() {
          // 最近搜索
          if (this.recentSearchList.length > 0) Column() {
            Row() {
              Text('最近搜索')
                .fontWeight(500)
              Blank()
              Image($r('app.media.delete'))
                .width(22)
            }
            .width('100%')


            Flex({ wrap: FlexWrap.Wrap }) {
              ForEach(this.recentSearchList, (item: string) => {
                Button(item)
                  .backgroundColor('#ffe3e3e3')
                  .controlSize(ControlSize.SMALL)
                  .fontColor($r('app.color.gray_font'))
              })
            }.width('100%')
            .margin({
              top: 10
            })
          }
          .width('100%')
          .padding({ left: 15, right: 15, top: 15 })

          // 猜你想搜
          Column() {
            Row() {
              Text('猜你想搜')
                .fontWeight(500)
            }
            .width('100%')

            Flex({ wrap: FlexWrap.Wrap }) {
              ForEach(this.tipList, (item: string) => {
                Button(item)
                  .backgroundColor('#ffe3e3e3')
                  .controlSize(ControlSize.SMALL)
                  .fontColor($r('app.color.gray_font'))
                  .margin({ right: 10, top: 10 })
              })
            }
            .width('100%')
          }
          .width('100%')
          .padding({ left: 15, right: 15, top: 15 })

          // 商城头条
          SearchTop()
        }
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.main_bg'))
  }
}