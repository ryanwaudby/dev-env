require('leetcode').setup({
    lang = 'c',
    
    cn = {
        enabled = false,
        translator = true,
        translate_problems = true,
    },
    
    storage = {
        home = vim.fn.stdpath('data') .. '/leetcode',
        cache = vim.fn.stdpath('cache') .. '/leetcode',
    },
    
    plugins = {
        non_standalone = false,
    },
    
    logging = true,
    
    injector = {
        ['python3'] = {
            before = true,
        },
        ['cpp'] = {
            before = true,
        },
        ['java'] = {
            before = true,
        },
    },
    
    cache = {
        update_interval = 60 * 60 * 24 * 7,
    },
    
    console = {
        open_on_runcode = true,
        dir = 'row',
        size = {
            width = '90%',
            height = '75%',
        },
        result = {
            size = '60%',
        },
        testcase = {
            virt_text = true,
            size = '40%',
        },
    },
    
    description = {
        position = 'left',
        width = '40%',
        show_stats = true,
    },
    
    hooks = {
        ['enter'] = {},
        ['question_enter'] = {},
        ['leave'] = {},
    },
    
    keys = {
        toggle = { 'q' },
        confirm = { '<CR>' },
        
        reset_testcases = 'r',
        use_testcase = 'U',
        focus_testcases = 'H',
        focus_result = 'L',
        
        console_toggle = '<leader>lc',
        
        change_lang = '<leader>ll',
        change_question = '<leader>lq',
        console_reset = '<leader>lr',
        
        topic_tags = '<leader>lt',
        company_tags = '<leader>lT',
        daily = '<leader>ld',
        
        submit = '<leader>ls',
        run = '<leader>lr',
        
        info = '<leader>li',
        tabs = '<leader>lt',
        yank = '<leader>ly',
    },
})
