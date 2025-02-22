local layout = {
	[0] = {
		boxes = {
			{
				{3971, 1135},
				{3843, 1046},
				{3887, 804},
				{3759, 726},
				{3577, 723},
				{3472, 783},
				{3405, 769},
				{3364, 721},
				{3316, 742},
				{3281, 772},
				{3218, 757},
				{3167, 767},
				{3118, 802},
				{3109, 915},
				{3159, 1016},
				{3162, 1125},
				{3214, 1183},
				{3210, 1253},
				{3338, 1452},
				{3350, 1513},
				{3409, 1564},
				{3410, 1695},
				{3439, 1775},
				{3385, 1834},
				{3437, 1956},
				{3596, 1877},
				{3955, 1600},
				{4019, 1354},
			},
		},
		startpoints = {
			{3434, 1000},
		},
		nameLong = "North",
		nameShort = "N",
	},
	[1] = {
		boxes = {
			{
				{1911, 7922},
				{2203, 8009},
				{2264, 7973},
				{2208, 7854},
				{2249, 7632},
				{2342, 7557},
				{2111, 6924},
				{2028, 6916},
				{1917, 6838},
				{1636, 6948},
				{1616, 7164},
				{1388, 7206},
				{1387, 7550},
				{1493, 7650},
				{1655, 7852},
				{1817, 7833},
			},
		},
		startpoints = {
			{1669, 7328},
		},
		nameLong = "South-West",
		nameShort = "SW",
	},
	[2] = {
		boxes = {
			{
				{7974, 5346},
				{8048, 5570},
				{8229, 5583},
				{8438, 5896},
				{8597, 5918},
				{8645, 5878},
				{8596, 5599},
				{8640, 5433},
				{8595, 5218},
				{8640, 5041},
				{8564, 4800},
				{8372, 4807},
				{8246, 4731},
				{7963, 4755},
				{7897, 4841},
				{7745, 4902},
				{7688, 4990},
				{7675, 5192},
				{7766, 5223},
				{7860, 5304},
			},
		},
		startpoints = {
			{8282, 5424},
		},
		nameLong = "East",
		nameShort = "E",
	},
	[3] = {
		boxes = {
			{
				{4309, 3990},
				{4121, 4006},
				{3997, 4081},
				{3793, 4211},
				{3767, 4473},
				{3825, 4516},
				{4077, 4413},
				{4119, 4301},
				{4245, 4239},
				{4319, 4095},
				{4376, 4062},
				{4373, 4005},
			},
			{
				{5320, 4511},
				{5350, 4395},
				{5309, 4249},
				{5211, 4152},
				{5078, 4092},
				{5028, 4097},
				{4994, 4134},
				{4995, 4215},
				{5115, 4428},
				{5223, 4474},
				{5290, 4527},
			},
			{
				{4038, 5273},
				{4070, 5404},
				{4134, 5472},
				{4247, 5496},
				{4378, 5520},
				{4610, 5520},
				{4755, 5464},
				{4758, 5434},
				{4667, 5428},
				{4597, 5322},
				{4530, 5306},
				{4404, 5306},
				{4326, 5254},
				{4093, 5259},
			},
			{
				{4649, 4457},
				{4638, 4489},
				{4534, 4542},
				{4420, 4592},
				{4321, 4634},
				{4263, 4673},
				{4246, 4770},
				{4269, 4852},
				{4366, 4944},
				{4523, 5038},
				{4717, 5027},
				{4848, 4984},
				{4872, 4907},
				{4875, 4837},
				{4844, 4714},
				{4744, 4585},
				{4737, 4517},
				{4669, 4453},
			},
		},
		startpoints = {
			{4600, 4776},
		},
		nameLong = "Center",
		nameShort = "C",
	},
}

if Spring.Utilities.GetTeamCount() ~= 4 then
	layout[3] = nil
end

return layout, { 3, 4 }