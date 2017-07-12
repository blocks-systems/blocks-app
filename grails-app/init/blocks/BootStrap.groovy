package blocks

import blocks.Owner
import blocks.auth.Permission
import blocks.auth.Role
import blocks.auth.User

class BootStrap {

    def springSecurityService

    def init = { servletContext ->
        def owner  = Owner.findOrSaveWhere(code: 'blocks', name: 'Blocks')
        def superUserPermission = Permission.findOrSaveWhere(authority: 'ROLE_SUPER_USER', name: 'Super user rights')
        def adminPermission = Permission.findOrSaveWhere(authority: 'ROLE_ADMIN', name: 'Admin rights')
        def userPermission = Permission.findOrSaveWhere(authority: 'ROLE_USER', name: 'User rights')

        def superUsers = Role.findWhere(name: 'superUsers')
        if (!superUsers) {
            superUsers = new Role(name: 'superUsers', roles : [superUserPermission])
            superUsers.save(flush : true)
        }
        def admins = Role.findWhere(name: 'Admins')
        if (!admins) {
            admins = new Role(name: 'Admins', roles : [adminPermission])
            admins.save(flush : true)
        }
        def users = Role.findWhere(name: 'Users')
        if (!users) {
            users = new Role(name: 'Users', roles : [userPermission])
            users.save(flush : true)
        }

        def testAdmin = User.findWhere(username: 'root')
        if (testAdmin == null) {
            testAdmin = new User(username: 'root', email: 'root@blocks.com', passwordExpire: Date.parse("yyyy-MM-dd", "2099-12-31"), accountExpire: Date.parse("yyyy-MM-dd", "2099-12-31"), password: 'root', groups : [superUsers], roles: [userPermission])
            testAdmin.save(flush : true)
        } else {
            testAdmin.password = springSecurityService.encodePassword('root')
            testAdmin.save(flush: true)
        }
    }
    def destroy = {
    }
}
