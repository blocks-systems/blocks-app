grails.plugin.springsecurity.controllerAnnotations.staticRules = [
        [pattern: '/',   access: ['isAuthenticated()']],
        [pattern: '/**',   access: ['isAuthenticated()']],
        [pattern: '/**/monitoring',   access: ['ROLE_SUPER_USER']],
        [pattern: '/assets/**',   access: ['permitAll']],
        [pattern: '/**/js/**',   access: ['permitAll']],
        [pattern: '/**/css/**',   access: ['permitAll']],
        [pattern: '/**/images/**',   access: ['permitAll']],
        [pattern: '/**/img/**',   access: ['permitAll']],
        [pattern: '/**/favicon.ico',   access: ['permitAll']]
]

grails.plugin.springsecurity.roleHierarchy = '''
   ROLE_SUPER_USER > ROLE_ADMIN
   ROLE_ADMIN > ROLE_USER
'''

grails {
    plugin {
        auditLog {
            auditDomainClassName = 'blocks.BlocksAuditLogEvent'
            verbose = true // verbosely log all changed values to db
            logIds = true  // log db-ids of associated objects.
            largeValueColumnTypes = true // use large column db types for oldValue/newValue.
            TRUNCATE_LENGTH = 1000
            cacheDisabled = true
            logFullClassName = true
            replacementPatterns = ["":""]
            actorClosure = { request, session ->
                // SpringSecurity Core 1.1.2
                if (request.applicationContext.springSecurityService.principal instanceof java.lang.String){
                    return request.applicationContext.springSecurityService.principal
                }
                def username = request.applicationContext.springSecurityService.principal?.username
                if (SpringSecurityUtils.isSwitched()){
                    username = SpringSecurityUtils.switchedUserOriginalUsername+" AS "+username
                }
                return username
            }
        }
    }
}