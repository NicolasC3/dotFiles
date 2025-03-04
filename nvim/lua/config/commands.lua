vim.api.nvim_create_user_command("Notes", "vi /home/nc/Nextcloud/Notes/scrap.md", {})
vim.cmd("abb notes Notes")
