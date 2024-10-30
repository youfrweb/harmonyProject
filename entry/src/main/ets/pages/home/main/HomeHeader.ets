import { router } from '@kit.ArkUI'
import IndexApi from '../../../api/home';
import { SEARCH_TIP } from '../../../utils/constant';

@Component
struct HomeHeader {
  @State tipList: string[] = []
  @State findTipsCount: number = 0
  private timer: number = -1

  // 组件创建后
  async aboutToAppear(): Promise<void> {
    // 请求输入框的提示文案列表
    await this.getTipList()
    // 开启定时器用于切换提示文案
    this.findTipsCountChange()
  }

  async getTipList(): Promise<void> {
    this.tipList = await IndexApi.getTipList()
  }

  findTipsCountChange(): void {
    clearInterval(this.timer)
    this.timer = setInterval(() => {
      if (this.findTipsCount >= this.tipList.length - 1) {
        this.findTipsCount = 0
      } else {
        this.findTipsCount++
      }
    }, 3000)
  }

  // 组件销毁
  aboutToDisappear(): void {
    clearInterval(this.timer)
  }

  build() {
    Row({ space: 10 }) {
      Image($r('app.media.logo_red'))
        .width(80)
      // 搜索框
      Row() {
        Image($r('app.media.ic_public_search'))
          .width(22)
          .fillColor('#5c5c5d')
        Text(this.tipList[this.findTipsCount])
          .backgroundColor(Color.Transparent)
          .fontColor($r('app.color.gray_font'))
          .textOverflow({
            overflow: TextOverflow.Ellipsis
          })
          .maxLines(1)
          .layoutWeight(1)
      }
      .backgroundColor('#e5e7e9')
      .borderRadius(25)
      .layoutWeight(1)
      .padding(10)
      .onClick(() => {
        AppStorage.setOrCreate(SEARCH_TIP, this.tipList[this.findTipsCount])
        router.pushUrl({
          url: 'pages/search/SearchPage'
        })
      })

      Image($r('app.media.ic_public_comments'))
        .width(28)
      Text('登录')
        .fontSize(16)
        .onClick(() => {
          router.pushUrl({
            url: 'pages/login/Login'
          })
        })
    }
    .width('100%')
    .height(58)
    .backgroundColor('#f1f3f5')
    .padding({
      left: 10,
      right: 10
    })
  }
}

export default HomeHeader