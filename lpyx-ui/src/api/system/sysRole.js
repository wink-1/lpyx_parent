import request from '@/utils/request'

const baseURL = '/admin/system/sysRole'

// 查询指定角色所对应的菜单id
export const GetSysRoleMenuIds = roleId => {
  return request({
    url: '/admin/system/sysRoleMenu/findSysRoleMenuByRoleId/' + roleId,
    method: 'get',
  })
}

// 根据角色分配菜单请求方法
export const DoAssignMenuIdToSysRole = assignMenuDto => {
  return request({
    url: '/admin/system/sysRoleMenu/doAssign',
    method: 'post',
    data: assignMenuDto,
  })
}

// 角色列表接口
export const GetSysRoleListByPage = (current, limit, queryDto) => {
  return request({
    url: `${baseURL}/findByPage/${current}/${limit}`, //路径
    method: 'post',
    //接口@RequestBody 前端data：名称，以json格式传输
    //接口没有注释，前端params：名称
    data: queryDto, //其他参数
  })
}

// 查询所有的角色数据
export const GetAllRoleList = userId => {
  return request({
    url: `/admin/system/sysRole/findAllRoles/${userId}`,
    method: 'get',
  })
}

// 添加角色请求方法
export const SaveSysRole = sysRole => {
  return request({
    url: `${baseURL}/saveSysRole`,
    method: 'post',
    data: sysRole,
  })
}

// 修改角色请求方法
export const UpdateSysRole = sysRole => {
  return request({
    url: `${baseURL}/updateSysRole`,
    method: 'put',
    data: sysRole,
  })
}

// 删除角色请求方法
export const DeleteSysRoleById = roleId => {
  return request({
    url: `${baseURL}/removeById/${roleId}`,
    method: 'delete',
  })
}
