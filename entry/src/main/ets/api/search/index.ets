interface QuerySearchRankingType {
  mpOpenURL: string;
  openURL: string;
  photoURL: string;
  title: string;
  wapOpenURL: string;
  webOpenURL: string;
}

class IndexApi {
  static querySearchRanking(): Promise<QuerySearchRankingType[]> {

    return Promise.resolve([
      {
        "mpOpenURL": "https://mp.vmall.com/mp.html?pagename=RnActivity/index&isShowLayout=false&pn=eventsmp",
        "openURL": "vmall://com.vmall.client/home/activity?isShowLayout=false&pn=events",
        "photoURL": "https://fss-cdn.vmall.com/bd_searchsyscloud_admin/searchmanagement/20241021195255站内渠道 热搜榜-280x280.jpg",
        "title": "原生鸿蒙之夜 19点正式开启",
        "wapOpenURL": "https://m.vmall.com/portal/activity/index.html?isShowLayout=false&pn=events",
        "webOpenURL": ""
      },
      {
        "mpOpenURL": "https://mp.vmall.com/mp.html?pagename=RnActivity/index&isShowLayout=false&pn=huaweizoneMP",
        "openURL": "vmall://com.vmall.client/home/activity?isShowLayout=false&pn=huaweizone",
        "photoURL": "https://fss-cdn.vmall.com/bd_searchsyscloud_admin/searchmanagement/2024101317401810.13双11.jpg",
        "title": "华为双11 智慧享好礼",
        "wapOpenURL": "https://m.vmall.com/portal/activity/index.html?isShowLayout=false&pn=huaweizone",
        "webOpenURL": ""
      },
      {
        "mpOpenURL": "https://mp.vmall.com/mp.html?pagename=packageGoodsDetail/pages/goodsDetail?prdId=10086275328840",
        "openURL": "vmall://com.vmall.client/product/detail?prdId=10086275328840",
        "photoURL": "https://fss-cdn.vmall.com/bd_searchsyscloud_admin/searchmanagement/20240930172844站内渠道热搜榜-280x280.jpg",
        "title": "WATCH GT 5 新品上市",
        "wapOpenURL": "https://m.vmall.com/product/comdetail/index.html?prdId=10086275328840",
        "webOpenURL": ""
      },
      {
        "mpOpenURL": "https://mp.vmall.com/mp.html?pagename=packageGoodsDetail/pages/goodsDetail?prdId=10086109448846",
        "openURL": "vmall://com.vmall.client/product/detail?prdId=10086109448846",
        "photoURL": "https://fss-cdn.vmall.com/bd_searchsyscloud_admin/searchmanagement/20241016111811耳夹热搜榜280.jpg",
        "title": "FreeClip 耳夹耳机 优惠150元",
        "wapOpenURL": "https://m.vmall.com/product/comdetail/index.html?prdId=10086109448846",
        "webOpenURL": ""
      },
      {
        "mpOpenURL": "https://mp.vmall.com/mp.html?pagename=packageGoodsDetail/pages/goodsDetail?prdId=10086139444943",
        "openURL": "vmall://com.vmall.client/product/detail?prdId=10086139444943",
        "photoURL": "https://fss-cdn.vmall.com/bd_searchsyscloud_admin/searchmanagement/20241018142520站内渠道 热搜榜-280x280.jpg",
        "title": "MatePad Pro 12.2 创作至美",
        "wapOpenURL": "https://m.vmall.com/product/comdetail/index.html?prdId=10086139444943",
        "webOpenURL": "https://www.vmall.com/product/comdetail/index.html?prdId=10086139444943"
      },
      {
        "mpOpenURL": "https://mp.vmall.com/mp.html?pagename=RnActivity/index&isShowLayout=false&pageId=101125864",
        "openURL": "vmall://com.vmall.client/home/activity?isShowLayout=false&pageId=101125864",
        "photoURL": "https://fss-cdn.vmall.com/bd_searchsyscloud_admin/searchmanagement/20241016150057站内渠道 热搜榜-280x280.jpg",
        "title": "华为智选 好物至高直降2000元",
        "wapOpenURL": "https://m.vmall.com/portal/activity/index.html?isShowLayout=false&pageId=101125864",
        "webOpenURL": ""
      },
      {
        "mpOpenURL": "https://mp.vmall.com/mp.html?pagename=RnActivity/index&isShowLayout=false&pageId=401135100",
        "openURL": "vmall://com.vmall.client/home/activity?isShowLayout=false&pageId=401135100",
        "photoURL": "https://fss-cdn.vmall.com/bd_searchsyscloud_admin/searchmanagement/20241021181727站内渠道 热搜榜-280x280.jpg",
        "title": "每满300减50 爆款秒杀不只5折",
        "wapOpenURL": "https://m.vmall.com/portal/activity/index.html?isShowLayout=false&pageId=401135100",
        "webOpenURL": ""
      },
      {
        "mpOpenURL": "https://mp.vmall.com/mp.html?pagename=/packageGoodsDetail/pages/goodsDetail?prdId=10086343274417",
        "openURL": "vmall://com.vmall.client/product/detail?prdId=10086343274417",
        "photoURL": "https://fss-cdn.vmall.com/bd_searchsyscloud_admin/searchmanagement/20241016162659站内渠道 热搜榜-280x280.jpg",
        "title": "华为智慧屏 4 SE 至高优惠800元",
        "wapOpenURL": "https://m.vmall.com/product/comdetail/index.html?prdId=10086343274417",
        "webOpenURL": ""
      },
      {
        "mpOpenURL": "https://mp.vmall.com/mp.html?pagename=packageRnShop/index&carrierCode=VMALL_SHMSEM",
        "openURL": "https://m.vmall.com/sc/shop/index.html?carrierCode=VMALL_SHMSEM",
        "photoURL": "https://fss-cdn.vmall.com/bd_searchsyscloud_admin/searchmanagement/20241008091428摩塞尔.jpg",
        "title": "阿根廷牛肉重磅回归",
        "wapOpenURL": "https://m.vmall.com/sc/shop/index.html?carrierCode=VMALL_SHMSEM",
        "webOpenURL": ""
      },
      {
        "mpOpenURL": "https://mp.vmall.com/mp.html?pagename=RnActivity/index&isShowLayout=false&pn=hmzxmp",
        "openURL": "vmall://com.vmall.client/product/cardetail?prdId=10086197711933&sbomCode=50080100181266",
        "photoURL": "https://fss-cdn.vmall.com/bd_searchsyscloud_admin/searchmanagement/20240924110401站内渠道 热搜榜-280x280.png",
        "title": "智界 R7 鸿蒙智行首款轿跑SUV",
        "wapOpenURL": "https://m.vmall.com/product/cardetail/index.html?prdId=10086197711933&sbomCode=50080100181266",
        "webOpenURL": ""
      }
    ] as QuerySearchRankingType[])
  }
}

export default IndexApi