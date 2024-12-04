import { router } from "@kit.ArkUI"

interface MenuItemType {
  icon: string,
  text: string
}

@CustomDialog
struct CustomDialogExample {
  controller?: CustomDialogController
  cancel: () => void = () => {
  }
  confirm: () => void = () => {
  }
  menus: MenuItemType[] = [
    { icon: 'ic_public_home_filled', text: '首页' },
    { icon: 'ic_public_view_grid', text: '分页' },
    { icon: 'ic_public_timer', text: '发现' },
    { icon: 'ic_public_appstore', text: '购物车' },
    { icon: 'ic_public_contacts', text: '我的' },
  ]

  build() {
    Column() {
      Row() {
        Text('功能直达')
          .fontSize('16.00fp')
          .height(100)
          .fontColor(Color.White)

        Text('\ue604')
          .fontFamily('sysFont')
          .fontSize(24)
          .fontColor(Color.White)
          .onClick(() => {
            if (this.controller != undefined) {
              this.controller.close()
            }
          })
      }
      .width('100%')
      .height(50)
      .justifyContent(FlexAlign.SpaceBetween)

      GridRow({
        columns: 4,
        gutter: 10,
        breakpoints: {
          value: ["400vp", "600vp", "800vp"],
          reference: BreakpointsReference.WindowSize
        },
        direction: GridRowDirection.Row
      }) {
        ForEach(this.menus, (item: MenuItemType, index: number) => {
          GridCol({
            span: {
              xs: 1,
              sm: 2,
              md: 3,
              lg: 4
            },
            offset: 0,
            order: 0
          }) {
            Column({ space: 8 }) {
              Image($r(`app.media.${item.icon}`))
                .width(25)
                .fillColor(Color.White)
              Text(item.text)
                .fontColor(Color.White)
                .fontSize(12)
            }
          }
          .padding({ top: 15, bottom: 15 })
          .backgroundColor('#ff292929')
          .borderRadius(10)
          .onClick(() => {
            if (this.controller != undefined) {
              this.controller.close()
            }

            router.pushUrl({
              url: 'pages/Index',
              params: { index }
            })
          })
        })
      }.width("100%")
    }
    .padding({ left: 16, right: 16, bottom: 20 })
  }
}

@Component
export default struct PageTopNavBox {
  scrollToIndex?: (index: number) => void
  @Prop scrollYOffset: number
  @State menus: MenuItemType[] = [
    { icon: 'ic_public_home_filled', text: '商品' },
    { icon: 'ic_public_view_grid', text: '评价' },
    { icon: 'ic_public_timer', text: '参数' },
    { icon: 'ic_public_appstore', text: '详情' },
  ]
  @State currentIndex: number = 0
  dialogController: CustomDialogController = new CustomDialogController({
    builder: CustomDialogExample(),
    alignment: DialogAlignment.Top,
    width: '100%',
    cornerRadius: {
      topLeft: 0,
      topRight: 0
    },
    borderWidth: 0,
    backgroundColor: '#ff5a5757',
    openAnimation: {
      duration: 0
    },
    closeAnimation: {
      duration: 0
    }
  })

  build() {
    Column() {
      // 根据滚动高度展示不同的导航
      if (this.scrollYOffset < 50) {
        Row() {
          Image($r('app.media.ic_public_back'))
            .width(36)
            .padding(8)
            .opacity(0.7)
            .fillColor(Color.White)
            .backgroundColor('#666')
            .borderRadius(20)
            .onClick(() => {
              router.back()
            })

          Text('\ue61e')
            .fontFamily('sysFont')
            .backgroundColor('#666')
            .padding(8)
            .fontSize(20)
            .opacity(0.7)
            .borderRadius(20)
            .fontColor(Color.White)
            .onClick(() => {
              this.dialogController.open()
            })
        }
        .width('100%')
        .padding({ left: 15, right: 15, top: 10 })
        .justifyContent(FlexAlign.SpaceBetween)
      } else {
        Column() {
          Row({ space: 20 }) {
            Image($r('app.media.ic_public_back'))
              .width(32)
              .fillColor($r('app.color.gray_font'))
              .onClick(() => {
                router.back()
              })

            Row({ space: 5 }) {
              Image($r('app.media.ic_public_search'))
                .width(16)
                .fillColor('#5c5c5d')
              Text('请输入')
                .fontSize(16)
                .fontColor('#5c5c5d')
                .onClick(() => {
                  router.pushUrl({
                    url: 'pages/search/SearchPage'
                  })
                })
            }
            .backgroundColor('#fff')
            .borderRadius(20)
            .layoutWeight(1)
            .padding(10)

            Text('\ue61e')
              .fontFamily('sysFont')
              .fontSize(24)
              .fontColor($r('app.color.gray_font'))
              .onClick(() => {
                this.dialogController.open()
              })
          }
          .width('100%')
          .padding({ left: 15, right: 15, top: 10 })

          Tabs({ index: this.currentIndex }) {
            ForEach(this.menus, (item: MenuItemType, index: number) => {
              TabContent() {
              }.tabBar(SubTabBarStyle.of(item.text)
                .indicator({
                  color: $r('app.color.main_color'), //下划线颜色
                })
                .labelStyle({
                  font: {
                    size: 14
                  },
                  unselectedColor: $r('app.color.gray_font'),
                  selectedColor: $r('app.color.main_color'),
                })
              )

              // .onChange(() => {
              // console.log('333', this.scrollToIndex)
              // if (this.scrollToIndex !== undefined) {
              //   this.scrollToIndex();
              // }
              // this.scrollToIndex && this.scrollToIndex()
              // })
            })
          }
          .barBackgroundColor($r('app.color.main_bg'))
          .height(50)
          .padding({ left: 50, right: 50 })
          .onChange((index: number) => {
            this.scrollToIndex && this.scrollToIndex(index)
          })
        }
        .width('100%')
        .backgroundColor($r('app.color.main_bg'))
      }
    }
    .position({ left: 0, top: 0 })
  }
}