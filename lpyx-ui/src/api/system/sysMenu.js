import request from '@/utils/request'

const baseURL = '/admin/system/sysMenu'

// 菜单列表接口
export const FindNodes = () => {
  return request({
    url: `${baseURL}/findNodes`,
    method: 'get',
  })
}

// 保存信息
export const SaveMenu = sysMenu => {
  return request({
    url: `${baseURL}/saveSysMenu`,
    method: 'post',
    data: sysMenu,
  })
}

// 修改信息
export const UpdateSysMenuById = sysMenu => {
  return request({
    url: `${baseURL}/updateSysMenu`,
    method: 'put',
    data: sysMenu,
  })
}

// 根据id删除数据
export const RemoveSysMenuById = id => {
  return request({
    url: `${baseURL}/removeById/${id}`,
    method: 'delete',
  })
}
