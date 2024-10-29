import { categoryList, CategoryType } from '../../../viewModal/classifyData'

@Component
struct ClassifyList {
  @State currentCategory: number = 0

  build() {
    Row() {
      Row() {
        // 左侧菜单
        List() {
          ForEach(categoryList, (item: CategoryType, index: number) => {
            ListItem() {
              Text(item.categoryName)
                .fontSize(14)
                .fontColor(this.currentCategory === index ? '#ca141d' : '#666')
                .padding({ left: 16 })
                .border({
                  width: { left: 2 },
                  color: this.currentCategory === index ? '#ca141d' : Color.Transparent
                })
            }
            .margin({
              top: 15,
              bottom: 15
            })
            .onClick(() => {
              this.currentCategory = index
            })
          })
        }
        .width(100)
        .height('100%')
        .scrollBar(BarState.Off)

        List() {
          ForEach(categoryList[this.currentCategory].subCategoryList, (item: CategoryType) => {
            ListItem() {
              Column() {
                Text(item.categoryName)
                  .fontSize(14)
                  .fontWeight(700)

                Flex({
                  wrap: FlexWrap.Wrap
                }) {
                  Column() {
                    Image($r('app.media.classify01'))
                      .width(60)
                    Text('Mate 60 Pro')
                      .fontSize(12)
                      .margin(6)
                  }
                  .width('33%')

                  Column() {
                    Image($r('app.media.classify02'))
                      .width(60)
                    Text('Mate 60 Pro')
                      .fontSize(12)
                      .margin(6)
                  }
                  .width('33%')

                  Column() {
                    Image($r('app.media.classify03'))
                      .width(60)
                    Text('Mate 60 Pro')
                      .fontSize(12)
                      .margin(6)
                  }
                  .width('33%')
                }
              }
              .backgroundColor('#fff')
              .borderRadius(15)
              .margin({ top: 12 })
              .padding(15)
              .alignItems(HorizontalAlign.Start)
            }
          })
        }
        .height('100%')
        .layoutWeight(1)
        .padding({ right: 15 })
      }
    }
    .height('100%')
    .width('100%')
  }
}

export default ClassifyList