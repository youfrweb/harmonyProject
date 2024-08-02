@Component
export struct DemoCom {
  // @BuilderParam slot1: () => void = this.defaultBuilder
  @BuilderParam tBuilder: () => void = this.tDefaultBuilder
  @BuilderParam sBuilder: () => void = this.sDefaultBuilder

  @Builder
  tDefaultBuilder() {
    Text('默认')
  }

  @Builder
  sDefaultBuilder() {
    Text('默认')
  }

  build() {
    Column() {
      // this.slot1()
      // Text('子组件')

      this.tBuilder()
      this.sBuilder()
      Text('子组件-多个slot')
    }
  }
}

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  @Builder tBuilder () {
    Text('tBuilder')
  }
  @Builder
  sBuilder() {
    Text('sBuilder')
  }

  build() {
    Column() {
      // 单个
      // DemoCom() {
      //   // Text('父组件传过来的')
      // }
      TextInput({
        placeholder:'请输入'
      })

      // 多个
      DemoCom({
        tBuilder: this.tBuilder,
        sBuilder: this.sBuilder
      })
    }
  }
}