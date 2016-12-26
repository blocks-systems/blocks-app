package tools.blocks

class IndexController {

    def index = {

        log.debug("Index method on IndexController called")
        render view:"/index"
    }
}
