import request from '@/utils/request'

const baseURL = '/admin/product/productSpec'

// 分页列表
export const GetProductSpecPageList = (page, limit) => {
  return request({
    url: `${baseURL}/findByPage/${page}/${limit}`,
    method: 'get',
  })
}

// 查询所有的产品规格数据
export const FindAllProductSpec = () => {
  return request({
    url: `${baseURL}/findAll`,
    method: 'get',
  })
}

// 保存信息
export const SaveProductSpec = productSpec => {
  return request({
    url: `${baseURL}/save`,
    method: 'post',
    data: productSpec,
  })
}

// 修改信息
export const UpdateProductSpecById = productSpec => {
  return request({
    url: `${baseURL}/updateById`,
    method: 'put',
    data: productSpec,
  })
}

// 根据id删除数据
export const DeleteProductSpecById = id => {
  return request({
    url: `${baseURL}/deleteById/${id}`,
    method: 'delete',
  })
}
