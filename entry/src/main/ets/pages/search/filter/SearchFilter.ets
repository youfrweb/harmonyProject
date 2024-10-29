import Drawer from '../../../components/common/Drawer'

// 定义 CategoryItem 类
@Observed
class CategoryItem {
  id: string;
  name: string;
  checked?: boolean;

  constructor(id: string, name: string, checked?: boolean) {
    this.id = id;
    this.name = name;
    this.checked = checked;
  }
}

// 定义 FilterList 类
@Observed
class FilterList {
  categoryId: string;
  categoryName: string;
  categoryItem: CategoryItem[];

  constructor(categoryId: string, categoryName: string, categoryItem: CategoryItem[]) {
    this.categoryId = categoryId;
    this.categoryName = categoryName;
    this.categoryItem = categoryItem;
  }
}

@Component
struct SearchFilter {
  @State filterLists: FilterList[] = [
    new FilterList(
      '0',
      '服务优惠',
      [
        new CategoryItem('00', '仅看有货', true)
      ]
    ),
    new FilterList(
      '1',
      '分类（单选）',
      [
        new CategoryItem('10', '手机'),
        new CategoryItem('11', '手机保护壳')
      ]
    ),
    new FilterList(
      '2',
      '机身内存（ROM）',
      [
        new CategoryItem('20', '128GB'),
        new CategoryItem('21', '256GB'),
        new CategoryItem('23', '521GB'),
        new CategoryItem('24', '1TB')
      ]
    ),
    new FilterList(
      '3',
      '电池容量',
      [
        new CategoryItem('30', '5000mAh（典型值）'),
        new CategoryItem('31', '6000mAh（典型值）'),
        new CategoryItem('33', '4900mAh（典型值）'),
        new CategoryItem('34', '5050mAh（典型值）'),
        new CategoryItem('35', '4520mAh（典型值）')// 注意这里修正了重复的 id
      ]
    )
  ];
  @Link show: boolean

  @Styles
  TextInputStyles() {
    .width(105)
    .height(32)
    .margin({ bottom: 15 })
  }

  @Builder
  ContentBuilder() {
    Column() {
      Text('价格区间').fontWeight(600).fontColor($r('app.color.gray_font')).margin({ top: 20 })
      Row() {
        TextInput({ placeholder: '最低价' })
          .TextInputStyles()
          .caretColor($r('app.color.main_color'))
          .fontSize(15)
          .textAlign(TextAlign.Center)
        Text('-').padding({ left: 6, right: 6 })
        TextInput({ placeholder: '最高价' }).TextInputStyles().caretColor($r('app.color.main_color')).fontSize(15)
          .textAlign(TextAlign.Center)
      }
      .margin({ top: 10 })

      ForEach(this.filterLists, (item: FilterList, index: number) => {
        Text(item.categoryName).fontWeight(600).fontColor($r('app.color.gray_font')).margin({ top: 20 })
        Flex({ justifyContent: FlexAlign.SpaceBetween, wrap: FlexWrap.Wrap }) {
          ForEach(item.categoryItem, (child: CategoryItem, childIndex: number) => {
            Button(child.name)
              .TextInputStyles()
              .buttonStyle(ButtonStyleMode.NORMAL)
              .fontColor(child?.checked ? $r('app.color.main_color') : $r('app.color.gray_font'))
              .fontSize(15)
              .onClick(() => {
                let currentData = JSON.parse(JSON.stringify(this.filterLists[index])) as FilterList
                currentData.categoryItem[childIndex].checked = !currentData.categoryItem[childIndex]?.checked
                this.filterLists.splice(index, 1, currentData)
              })
          })
        }
        .margin({ top: 15 })
      })
    }
    .alignItems(HorizontalAlign.Start)
    .width('100%')
    .padding(20)
  }

  @Builder
  FooterBuilder() {
    Row() {
      Button('重置').buttonStyle(ButtonStyleMode.NORMAL).fontColor(Color.Black).margin({ right: 20 })
        .onClick(() => {
          this.show = false
        })
      Button('确定').backgroundColor($r('app.color.main_color'))
        .onClick(() => {
          this.show = false
        })
    }
    .width('100%')
    .justifyContent(FlexAlign.Center)
    .padding({ top: 10, bottom: 10 })
  }

  build() {
    Drawer({
      show: this.show,
      ContentBuilder: (): void => this.ContentBuilder(),
      FooterBuilder: (): void => this.FooterBuilder()
    })
  }
}

export default SearchFilter
