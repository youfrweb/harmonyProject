import Navigate from '../../components/common/Navigate'
import { Chip, ChipSize, Filter, FilterParams, FilterResult, FilterType, router } from '@kit.ArkUI'
import IndexApi from '../../api/home'
import SearchTop from './tip/SearchTop'
import Drawer from '../../components/common/Drawer'
import SearchFilter from './filter/SearchFilter'

interface RouterParams {
  searchTip: string
}

interface filterListType {
  title: string,
  key: string,
  type: string
}

@Entry
@Component
struct SearchPage {
  private filterList: filterListType[] = [
    { title: '综合', key: '1', type: 'common' },
    { title: '最新', key: '2', type: 'common' },
    { title: '评论数', key: '3', type: 'common' },
    { title: '价格', key: '4', type: 'upAndDown' },
    { title: '筛选', key: '5', type: 'common' },
  ]
  @State changeValue: string = ''
  @State bgColors: string[] = ['#f00', '#666', '#888']
  @State currentFilterCount: number = 0
  @State isUpAndDown: boolean = false
  @State drawerShow: boolean = false
  @State routerParams: RouterParams = {
    searchTip: '',
  }
  @State isBoxStyle: boolean = true

  async aboutToAppear(): Promise<void> {
    const params = router.getParams() as RouterParams
    if (params) {
      this.routerParams = params
    }
  }

  build() {
    Column() {
      // top导航/搜索模块
      Navigate() {
        Row() {
          Image($r('app.media.ic_public_search'))
            .width(22)
            .fillColor('#5c5c5d')

          Chip({
            label: {
              text: this.routerParams.searchTip,
              fontSize: 12,
              fontColor: Color.Black,
              activatedFontColor: $r('sys.color.ohos_id_color_text_primary_contrary'),
              fontFamily: "HarmonyOS Sans",
              labelMargin: { left: 5, right: 5 },
            },
            size: ChipSize.SMALL,
            allowClose: true,
            enabled: true,
            // activated: this.isActivated,
            backgroundColor: $r('sys.color.ohos_id_color_button_normal'),
            activatedBackgroundColor: $r('sys.color.ohos_id_color_emphasize'),
            // borderRadius: $r('sys.float.ohos_id_corner_radius_button'),
            onClose: () => {
              router.back()
            },
            onClicked: () => {
              router.back({
                url: 'pages/search/SearchPage',
                params: { searchTip: this.routerParams.searchTip }
              })
            }
          })
        }
        .backgroundColor('#fff')
        .borderRadius(25)
        .layoutWeight(1)
        .padding(8)
        .margin({
          left: 15,
          right: 15
        })

        Text(this.isBoxStyle ? '\ue678' : '\ue677')
          .fontFamily('sysFont')
          .fontSize(26)
          .onClick(() => {
            this.isBoxStyle = !this.isBoxStyle
          })
      }

      // 查询结果
      Column() {
        // 筛选
        Row() {
          ForEach(this.filterList, (item: filterListType, index: number) => {
            Row() {
              Text(item.title)
                .fontColor(this.currentFilterCount === index ? $r('app.color.main_color') : $r('app.color.gray_font'))
                .onClick(() => {
                  this.currentFilterCount = index
                  this.isUpAndDown = index === 3 ? !this.isUpAndDown : false
                  this.drawerShow = index === 4 ? true : false
                })
              if (item.key === '4') Column() {
                Image($r("app.media.arrow_up_filling"))
                  .width(10)
                  .fillColor(this.currentFilterCount === index && this.isUpAndDown ? $r('app.color.main_color') :
                  $r('app.color.gray_font'))
                Image($r("app.media.arrow_down_filling"))
                  .width(10)
                  .fillColor(this.currentFilterCount === index && !this.isUpAndDown ? $r('app.color.main_color') :
                  $r('app.color.gray_font'))
              }
            }
          })
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({
          left: 5,
          right: 5,
          top: 15,
          bottom: 20
        })

        // 商品列表
        List({ space: 10, initialIndex: 0 }) {
          ForEach(Array.from({ length: 20 }), (item: string, index: number) => {
            ListItem() {
              Flex({
                direction: this.isBoxStyle ? FlexDirection.Column : FlexDirection.Row,
                alignItems: ItemAlign.Center
              }) {
                Image($r('app.media.classify01'))
                  .width(150)

                Column() {
                  Text('Mate 60 Pro')
                    .fontSize(14)
                  Text('6.88mm轻薄可靠|鸿蒙AI趣玩鸿蒙AI趣玩鸿蒙AI趣玩鸿蒙AI趣玩鸿蒙AI趣玩|后置5000万悬停自拍')
                    .fontSize(12)
                    .fontColor('#666')
                    .margin({ top: 6, bottom: 6 })
                    .maxLines(1)
                  Blank()
                  Text('￥4599')
                    .fontSize(14)
                    .fontWeight(600)
                }
                .alignItems(HorizontalAlign.Start)
                .width(this.isBoxStyle ? '100%' : 200)
                .height(140)
                .padding({
                  left: 10,
                  right: 10,
                  top: 20,
                  bottom: 20
                })
              }
              .width('100%')
              .backgroundColor('#fff')
              // .padding(10)
              .borderRadius(12)
            }
          }, (item: string) => item)
        }
        .friction(0.6)
        // .lanes({ minLength: 100, maxLength: 100 })
        .lanes(this.isBoxStyle ? 2 : 1, 10)
        .alignListItem(ListItemAlign.Center)
        .scrollBar(BarState.Off)
      }
      .width('100%')
      .padding({ left: 10, top: 8, right: 10 })

      // 筛选
      if (this.drawerShow) {
        SearchFilter({ show: this.drawerShow })
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.main_bg'))
  }
}