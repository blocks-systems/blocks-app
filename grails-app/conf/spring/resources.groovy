// Place your Spring DSL code here
beans = {
    userDetailsService(blocks.auth.BlocksDetailsService)
    blocksAuthSuccessListener(blocks.auth.listeners.BlocksAuthSuccessListener)
    blocksFailureSuccessListener(blocks.auth.listeners.BlocksFailureSuccessListener)
}
