const base = {
    get() {
                return {
            url : "http://localhost:8080/ssm99ipc/",
            name: "ssm99ipc",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm99ipc/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "旅游网站"
        } 
    }
}
export default base
