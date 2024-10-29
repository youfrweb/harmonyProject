import IndexApi from '../../../api/search'
import { querySearchRankingType } from '../../../api/search/type'

@Component
struct SearchTop {
  @State searchRanking: querySearchRankingType[] = []

  async aboutToAppear(): Promise<void> {
    this.searchRanking = await IndexApi.querySearchRanking()
  }

  build() {
    Column() {
      Image($r("app.media.hot_recommend_wap"))
        .width('100%')

      List({ space: 10 }) {
        ForEach(this.searchRanking, (item: querySearchRankingType, index: number) => {
          ListItem() {
            Row({ space: 10 }) {
              Text((index + 1).toString())
                .fontSize(13)
              Image(item.photoURL)
                .width(50)
                .height(50)
                .backgroundColor('#fff')
              Text(item.title)
                .fontSize(13)
            }
          }
        })
      }
    }
    .padding({ left: 15, right: 15 })
    .width('100%')

  }
}

export default SearchTop
