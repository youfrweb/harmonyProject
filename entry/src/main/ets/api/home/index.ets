import { AxiosResponse } from '@ohos/axios'
import httpRequest from '../httpRequest'

class IndexApi {
  static getList(): Promise<AxiosResponse> {
    return httpRequest({
      url: '/posts',
      method: 'get'
    })
  }

  static getTipList(): Promise<string[]> {
    // return httpRequest({
    //   url: '/get/tip/list',
    //   method: 'get'
    // })
    return Promise.resolve([
      '华为Mate XT 非凡大师',
      '耳机',
      '笔记本电脑',
      'MatePad Pro 13.2',
      '手表',
      '原生鸿蒙之夜',
      '手机',
      '眼镜'
    ])
  }
}

export default IndexApi