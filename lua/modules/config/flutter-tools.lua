return function()
	local present, ftools = pcall(require, "flutter-tools")
	if not present then
		return
	end

	ftools.setup({
		lsp = {
			settings = {
				analysisExcludedFolders = {
					"/home/oscargl/.pub-cache",
					"/development/flutter",
				},
			},
		},
	})
end
