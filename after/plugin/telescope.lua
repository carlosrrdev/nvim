local builtin = require('telescope.builtin')

-- set fuzzy find to space+ff
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})

-- fuzzy find only files in git repo
vim.keymap.set("n", "<C-p>", builtin.git_files, {})

-- search for keyword in project dir using space+fs
vim.keymap.set("n", "<leader>fs", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

