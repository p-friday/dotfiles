print("vscode init")

local vscode = require("vscode-neovim")

vim.keymap.set("n", "<C-j>", function()
	vscode.action("workbench.action.togglePanel")
end)
vim.keymap.set("n", "<leader>z", function()
	vscode.action("workbench.action.toggleCenteredLayout")
end)

vim.keymap.set("n", "<C-b>", function()
	vscode.action("workbench.action.toggleSidebarVisibility")
end)

vim.keymap.set("n", "<leader>df", function()
	vscode.call("workbench.view.explorer")
end)

vim.keymap.set("n", "gr", function()
	vscode.action("editor.action.goToReferences")
end)
vim.keymap.set("n", "<leader>D", function()
	vscode.action("editor.action.goToTypeDefinition")
end)

vim.keymap.set("n", "<leader>q", function()
	vscode.action("workbench.actions.view.problems")
end)
vim.keymap.set("n", "]d", function()
	vscode.action("editor.action.marker.next")
end)
vim.keymap.set("n", "[d", function()
	vscode.action("editor.action.marker.prev")
end)

vim.keymap.set("n", "<leader>a", function()
	vscode.action("vscode-harpoon.addEditor")
end)
