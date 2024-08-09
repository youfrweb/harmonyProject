import { AxiosResponse } from '@ohos/axios'
import httpRequest from '../httpRequest'

// interface IndexApiType {
//   getList: () => Promise<AxiosResponse>
// }
//
// const indexApi:IndexApiType = {
//   getList: () => {
//    return httpRequest({
//       url: '/posts',
//       method: 'get'
//     })
//   },
// }
//
// export default indexApi

class IndexApi {
  static getList(): Promise<AxiosResponse> {
    console.log('1111', httpRequest({
      url: '/posts',
      method: 'get'
    }))
    return httpRequest({
      url: '/posts',
      method: 'get'
    })
  }
}
export default IndexApi