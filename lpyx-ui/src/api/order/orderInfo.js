import request from '@/utils/request'

const baseURL = '/admin/order/orderInfo'

// 订单统计
export const GetOrderStatisticsData = searchObj => {
  return request({
    url: `${baseURL}/getOrderStatisticsData`,
    method: 'get',
    params: searchObj,
  })
}
