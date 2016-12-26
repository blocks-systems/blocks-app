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