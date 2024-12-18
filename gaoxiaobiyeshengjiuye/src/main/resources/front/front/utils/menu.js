const menu = {
    list() {
        return [
    {
        "backMenu":[
        ],
        "frontMenu":[
        ],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"否",
        "hasFrontRegister":"否",
        "roleName":"管理员",
        "tableName":"users"
    },
    {
        "backMenu":[
			{
                "child":[
                    {
						"appFrontIcon":"cuIcon-form",
                        "buttons":[
                            "查看",
                        ],
                        "menu":"工作评价",
                        "menuJump":"列表",
                        "tableName":"gongzuopingjia"
                    }
                ],
                "menu":"工作评价"
            }
			,
			{
                "child":[
                    {
						"appFrontIcon":"cuIcon-form",
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"就业晋升信息",
                        "menuJump":"列表",
                        "tableName":"jinsheng"
                    }
                ],
                "menu":"就业晋升信息"
            }
			,
			{
                "child":[
                    {
						"appFrontIcon":"cuIcon-form",
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"面试申请",
                        "menuJump":"列表",
                        "tableName":"mianshishenqing"
                    }
                ],
                "menu":"面试申请"
            }
            ,
            {
                "child":[
                    {
						"appFrontIcon":"cuIcon-activity",
                        "buttons":[
                            "查看"
                        ],
                        "menu":"公告信息",
                        "menuJump":"列表",
                        "tableName":"news"
                    }
                ],
                "menu":"公告信息"
            }
			,
			{
                "child":[
                    {
						"appFrontIcon":"cuIcon-form",
                        "buttons":[
                            "查看",
                        ],
                        "menu":"职位招聘",
                        "menuJump":"列表",
                        "tableName":"zhaopin"
                    }
                ],
                "menu":"职位招聘"
            }
            ,
            {
                "child":[
                    {
						"appFrontIcon":"cuIcon-favor",
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"职位收藏",
                        "menuJump":"列表",
                        "tableName":"zhaopinCollection"
                    }
                ],
                "menu":"职位收藏"
            }
            ,
            {
                "child":[
                    {
						"appFrontIcon":"cuIcon-evaluate",
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"职位留言",
                        "menuJump":"列表",
                        "tableName":"zhaopinLiuyan"
                    }
                ],
                "menu":"职位留言"
            }
        ],
        "frontMenu":[
        ],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"是",
        "hasFrontRegister":"是",
        "roleName":"用户",
        "tableName":"yonghu"
    }
]

	}
}
export default menu;
