<template>
  <div class="search-div">
    <!-- 搜索表单 -->
    <el-form label-width="80px" size="small">
      <el-form-item label="角色名称">
        <el-input
          v-model="queryDto.roleName"
          style="width: 100%"
          placeholder="角色名称"
        ></el-input>
      </el-form-item>
      <el-row style="display:flex">
        <el-button type="primary" size="small" @click="searchSysRole">
          搜索
        </el-button>
        <el-button size="small" @click="resetData">重置</el-button>
      </el-row>
    </el-form>

    <!-- 添加按钮 -->
    <div class="tools-div">
      <el-button type="success" size="small" @click="addSysRole">
        添 加
      </el-button>
    </div>

    <!-- 添加角色表单对话框 -->
    <el-dialog v-model="dialogVisible" title="添加或修改角色" width="30%">
      <el-form label-width="120px">
        <el-form-item label="角色名称">
          <el-input v-model="sysRole.roleName" placeholder="请输入角色名称" />
        </el-form-item>
        <el-form-item label="角色Code">
          <el-input v-model="sysRole.roleCode" placeholder="请输入角色Code" />
        </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="submit">提交</el-button>
          <el-button @click="dialogVisible = false">取消</el-button>
        </el-form-item>
      </el-form>
    </el-dialog>

    <!--- 角色表格数据 -->
    <el-table :data="list" style="width: 100%">
      <el-table-column prop="roleName" label="角色名称" width="180" />
      <el-table-column prop="roleCode" label="角色code" width="180" />
      <el-table-column prop="createTime" label="创建时间" />
      <el-table-column label="操作" align="center" width="280" #default="scope">
        <el-button type="primary" size="small" @click="editSysRole(scope.row)">
          修改
        </el-button>
        <el-button type="danger" size="small" @click="deleteSysRole(scope.row)">
          删除
        </el-button>
        <el-button
          type="warning"
          size="small"
          @click="showAssignMenu(scope.row)"
        >
          分配菜单
        </el-button>
      </el-table-column>
    </el-table>

    <!-- 分配菜单的对话框 -->
    <el-dialog v-model="dialogMenuVisible" title="分配菜单" width="40%">
      <el-form label-width="80px">
        <el-tree
          :data="sysMenuTreeList"
          ref="tree"
          show-checkbox
          default-expand-all
          :check-on-click-node="true"
          node-key="id"
          :props="defaultProps"
        />
        <el-form-item>
          <el-button type="primary" @click="doAssign">提交</el-button>
          <el-button @click="dialogMenuVisible = false">取消</el-button>
        </el-form-item>
      </el-form>
    </el-dialog>

    <!--分页条-->
    <el-pagination
      v-model:current-page="pageParams.page"
      v-model:page-size="pageParams.limit"
      :page-sizes="[10, 20, 50, 100]"
      @size-change="fetchData"
      @current-change="fetchData"
      layout="total, sizes, prev, pager, next"
      :total="total"
    />
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue'
import {
  GetSysRoleListByPage,
  SaveSysRole,
  UpdateSysRole,
  DeleteSysRoleById,
  DoAssignMenuIdToSysRole,
  GetSysRoleMenuIds,
} from '@/api/system/sysRole'
import { ElMessage, ElMessageBox } from 'element-plus'

const defaultProps = {
  children: 'children',
  label: 'title',
}
const dialogMenuVisible = ref(false)
const sysMenuTreeList = ref([])

// 树对象变量
const tree = ref()

// 默认选中的菜单数据集合
let roleId = ref()
function listToTree(list, parentId = 0) {
  return list
    .filter(item => item.parentId === parentId)
    .map(item => ({
      ...item,
      children: listToTree(list, item.id),
    }))
}

const showAssignMenu = async row => {
  dialogMenuVisible.value = true
  roleId = row.id
  const { data } = await GetSysRoleMenuIds(row.id) // 请求后端地址获取所有的菜单数据，以及当前角色所对应的菜单数据
  sysMenuTreeList.value = listToTree(data.sysMenuList) // 这里做转换
  tree.value.setCheckedKeys(data.roleMenuIds) // 进行数据回显
}

const doAssign = async () => {
  const checkedNodes = tree.value.getCheckedNodes() // 获取选中的节点
  const checkedNodesIds = checkedNodes.map(node => {
    // 获取选中的节点的id
    return {
      id: node.id,
      isHalf: 0,
    }
  })

  // 获取半选中的节点数据，当一个节点的子节点被部分选中时，该节点会呈现出半选中的状态
  const halfCheckedNodes = tree.value.getHalfCheckedNodes()
  const halfCheckedNodesIds = halfCheckedNodes.map(node => {
    // 获取半选中节点的id
    return {
      id: node.id,
      isHalf: 1,
    }
  })

  // 将选中的节点id和半选中的节点的id进行合并
  const menuIds = [...checkedNodesIds, ...halfCheckedNodesIds]
  console.log(menuIds)

  // 构建请求数据
  const assignMenuDto = {
    roleId: roleId,
    menuIdList: menuIds,
  }

  // 发送请求
  await DoAssignMenuIdToSysRole(assignMenuDto)
  ElMessage.success('操作成功')
  dialogMenuVisible.value = false
}

//控制弹窗显隐
const dialogVisible = ref(false)

const sysRole = ref({
  id: '',
  roleName: '',
  roleCode: '',
})

const addSysRole = () => {
  sysRole.value = {}
  dialogVisible.value = true
}

const editSysRole = row => {
  sysRole.value = { ...row } //浅拷贝 ...表示对象拓展运算符
  dialogVisible.value = true
}

const submit = async () => {
  try {
    let res
    if (!sysRole.value.id) {
      res = await SaveSysRole(sysRole.value)
    } else {
      res = await UpdateSysRole(sysRole.value)
    }
    if (res.code === 200) {
      dialogVisible.value = false
      ElMessage.success('操作成功')
      fetchData()
    } else {
      ElMessage.error('操作失败，请重试')
    }
  } catch (error) {
    ElMessage.error('网络异常，操作失败')
  }
}

// 删除数据
const deleteSysRole = row => {
  ElMessageBox.confirm('此操作将永久删除该记录, 是否继续?', 'Warning', {
    confirmButtonText: '确定',
    cancelButtonText: '取消',
    type: 'warning',
  }).then(async () => {
    const { code } = await DeleteSysRoleById(row.id)
    if (code === 200) {
      ElMessage.success('删除成功')
      pageParams.value.page = 1
      fetchData()
    }
  })
}

// 定义数据模型
let list = ref([]) //角色列表

let total = ref(0) //总记录数

const pageParamForm = {
  page: 1, //当前页码
  limit: 10, //每页记录数
}
const pageParams = ref(pageParamForm)

const queryDto = ref({ roleName: '' }) //查询条件

// 写钩子函数
onMounted(() => {
  fetchData()
})

// 操作方法：列表方法和搜索方法
const fetchData = async () => {
  const { data, code, message } = await GetSysRoleListByPage(
    pageParams.value.page,
    pageParams.value.limit,
    queryDto.value
  )
  list.value = data.list
  total.value = data.total
}

const searchSysRole = () => {
  fetchData()
}

const resetData = () => {
  queryDto.value = {}
  fetchData()
}
</script>

<style scoped>
.search-div {
  margin-bottom: 10px;
  padding: 10px;
  border: 1px solid #ebeef5;
  border-radius: 3px;
  background-color: #fff;
}

.tools-div {
  margin: 10px 0;
  padding: 10px;
  border: 1px solid #ebeef5;
  border-radius: 3px;
  background-color: #fff;
}
</style>
