const menu = {
    list() {
        return [
    {
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"公司管理",
                        "menuJump":"列表",
                        "tableName":"gongsi"
                    }
                ],
                "menu":"公司管理"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"用户管理",
			            "menuJump":"列表",
			            "tableName":"yonghu"
			        }
			    ],
			    "menu":"用户管理"
			}
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"职位招聘管理",
                        "menuJump":"列表",
                        "tableName":"zhaopin"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "修改",
                            "删除"
                        ],
                        "menu":"职位留言管理",
                        "menuJump":"列表",
                        "tableName":"zhaopinLiuyan"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"职位收藏管理",
                        "menuJump":"列表",
                        "tableName":"zhaopinCollection"
                    }
                ],
                "menu":"职位招聘管理"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "报表",
			                "删除"
			            ],
			            "menu":"面试申请管理",
			            "menuJump":"列表",
			            "tableName":"mianshishenqing"
			        }
			    ],
			    "menu":"面试申请管理"
			}
						,{
			     "child":[
			         {
			             "buttons":[
			                 "查看",
			                 "新增",
			                 "修改",
			                 "删除"
			             ],
			             "menu":"工作评价管理",
			             "menuJump":"列表",
			             "tableName":"gongzuopingjia"
			         }
			     ],
			     "menu":"工作评价管理"
			 }
			 ,{
			     "child":[
			         {
			             "buttons":[
			                 "查看",
			                 "删除"
			             ],
			             "menu":"就业晋升信息管理",
			             "menuJump":"列表",
			             "tableName":"jinsheng"
			         }
			     ],
			     "menu":"就业晋升信息管理"
			 }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"公告信息管理",
			            "menuJump":"列表",
			            "tableName":"news"
			        }
			    ],
			    "menu":"公告信息管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "删除",
			                "修改"
			            ],
			            "menu":"公司类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryGongsi"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "删除",
			                "修改"
			            ],
			            "menu":"公告信息类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryNews"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "删除",
			                "修改"
			            ],
			            "menu":"招聘岗位管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryZhaopin"
			        }
			    ],
			    "menu":"基础数据管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"论坛管理",
			            "menuJump":"列表",
			            "tableName":"forum"
			        }
			    ],
			    "menu":"论坛管理"
			}
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"轮播图管理",
                        "menuJump":"列表",
                        "tableName":"config"
                    }
                ],
                "menu":"轮播图信息"
            }
            /*,{
			    "child":[
			        {
			            "buttons":[
			                "查看"
			            ],
			            "menu":"数据备份",
			            "menuJump":"列表",
			            "tableName":"beifen"
			        },
					{
					    "buttons":[
					        "查看"
					    ],
					    "menu":"数据还原",
					    "menuJump":"列表",
					    "tableName":"huanyuan"
					}
			    ],
			    "menu":"数据库管理"
			}*/
        ],
        "frontMenu":[],
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
	                    "buttons":[
	                        "查看",
	                        "新增",
	                        "修改",
	                        "删除"
	                    ],
	                    "menu":"职位招聘管理",
	                    "menuJump":"列表",
	                    "tableName":"zhaopin"
	                }
	                ,
	                {
	                    "buttons":[
	                        "查看",
	                        "修改"
	                    ],
	                    "menu":"职位留言管理",
	                    "menuJump":"列表",
	                    "tableName":"zhaopinLiuyan"
	                }
	                ,
	                {
	                    "buttons":[
	                        "查看"
	                    ],
	                    "menu":"职位收藏管理",
	                    "menuJump":"列表",
	                    "tableName":"zhaopinCollection"
	                }
	            ],
	            "menu":"职位招聘管理"
	        }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "审核"
			            ],
			            "menu":"面试申请管理",
			            "menuJump":"列表",
			            "tableName":"mianshishenqing"
			        }
			    ],
			    "menu":"面试申请管理"
			}
			,{
			     "child":[
			         {
			             "buttons":[
			                 "查看",
			                 "删除"
			             ],
			             "menu":"工作评价管理",
			             "menuJump":"列表",
			             "tableName":"gongzuopingjia"
			         }
			     ],
			     "menu":"工作评价管理"
			 }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看"
			            ],
			            "menu":"公告信息管理",
			            "menuJump":"列表",
			            "tableName":"news"
			        }
			    ],
			    "menu":"公告信息管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "删除"
			            ],
			            "menu":"论坛管理",
			            "menuJump":"列表",
			            "tableName":"forum"
			        }
			    ],
			    "menu":"论坛管理"
			}
	    ],
	    "frontMenu":[],
	    "hasBackLogin":"是",
	    "hasBackRegister":"否",
	    "hasFrontLogin":"否",
	    "hasFrontRegister":"否",
	    "roleName":"公司",
	    "tableName":"gongsi"
	}
]
    }
}
export default menu;
