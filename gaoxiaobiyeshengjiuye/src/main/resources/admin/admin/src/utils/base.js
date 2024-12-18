const base = {
    get() {
        return {
            url : "http://localhost:8080/gaoxiaobiyeshengjiuye/",
            name: "gaoxiaobiyeshengjiuye",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/gaoxiaobiyeshengjiuye/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "高校毕业生就业信息"
        } 
    }
}
export default base
