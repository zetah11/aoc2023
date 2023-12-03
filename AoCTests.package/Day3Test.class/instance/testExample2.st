testing
testExample2
	| d |
	d := Day3 withInput: '467..114..\...*......\..35..633.\......#...\617*......\.....+.58.\..592.....\......755.\...$.*....\.664.598..' withCRs.
	self assert: (d gears sum) equals: 467835.