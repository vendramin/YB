BRACES[26] := rec( total := -1, implemented := 2, size := 26, brace := [] );BRACES[26].brace[1] := rec ( size := 26, perms := [ [  (),  (),  
], [  (1, 14)(2, 15)(3, 16)(4, 17)(5, 18)(6, 19)(7, 20)(8, 21)(9, 22)(10, 23)(11, 24)(12, 25)(13, 26),  (1, 14)(2, 15)(3, 16)(4, 17)(5, 18)(6,
19)(7, 20)(8, 21)(9, 22)(10, 23)(11, 24)(12, 25)(13, 26),  ], [  (1, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2)(14, 26, 25, 24, 23, 22, 21, 20, 
19, 18, 17, 16, 15),  (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13)(14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26),  ], [  (1, 2, 3, 4, 5, 
6, 7, 8, 9, 10, 11, 12, 13)(14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26),  (1, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2)(14, 26, 25, 24, 
23, 22, 21, 20, 19, 18, 17, 16, 15),  ], [  (1, 26, 12, 24, 10, 22, 8, 20, 6, 18, 4, 16, 2, 14, 13, 25, 11, 23, 9, 21, 7, 19, 5, 17, 3, 15),  
(1, 15, 3, 17, 5, 19, 7, 21, 9, 23, 11, 25, 13, 14, 2, 16, 4, 18, 6, 20, 8, 22, 10, 24, 12, 26),  ], [  (1, 15, 3, 17, 5, 19, 7, 21, 9, 23, 
11, 25, 13, 14, 2, 16, 4, 18, 6, 20, 8, 22, 10, 24, 12, 26),  (1, 26, 12, 24, 10, 22, 8, 20, 6, 18, 4, 16, 2, 14, 13, 25, 11, 23, 9, 21, 7, 
19, 5, 17, 3, 15),  ], [  (1, 12, 10, 8, 6, 4, 2, 13, 11, 9, 7, 5, 3)(14, 25, 23, 21, 19, 17, 15, 26, 24, 22, 20, 18, 16),  (1, 3, 5, 7, 9, 
11, 13, 2, 4, 6, 8, 10, 12)(14, 16, 18, 20, 22, 24, 26, 15, 17, 19, 21, 23, 25),  ], [  (1, 3, 5, 7, 9, 11, 13, 2, 4, 6, 8, 10, 12)(14, 16, 
18, 20, 22, 24, 26, 15, 17, 19, 21, 23, 25),  (1, 12, 10, 8, 6, 4, 2, 13, 11, 9, 7, 5, 3)(14, 25, 23, 21, 19, 17, 15, 26, 24, 22, 20, 18, 16),
], [  (1, 25, 10, 21, 6, 17, 2, 26, 11, 22, 7, 18, 3, 14, 12, 23, 8, 19, 4, 15, 13, 24, 9, 20, 5, 16),  (1, 16, 5, 20, 9, 24, 13, 15, 4, 19, 
8, 23, 12, 14, 3, 18, 7, 22, 11, 26, 2, 17, 6, 21, 10, 25),  ], [  (1, 16, 5, 20, 9, 24, 13, 15, 4, 19, 8, 23, 12, 14, 3, 18, 7, 22, 11, 26, 
2, 17, 6, 21, 10, 25),  (1, 25, 10, 21, 6, 17, 2, 26, 11, 22, 7, 18, 3, 14, 12, 23, 8, 19, 4, 15, 13, 24, 9, 20, 5, 16),  ], [  (1, 11, 8, 5, 
2, 12, 9, 6, 3, 13, 10, 7, 4)(14, 24, 21, 18, 15, 25, 22, 19, 16, 26, 23, 20, 17),  (1, 4, 7, 10, 13, 3, 6, 9, 12, 2, 5, 8, 11)(14, 17, 20, 
23, 26, 16, 19, 22, 25, 15, 18, 21, 24),  ], [  (1, 4, 7, 10, 13, 3, 6, 9, 12, 2, 5, 8, 11)(14, 17, 20, 23, 26, 16, 19, 22, 25, 15, 18, 21, 
24),  (1, 11, 8, 5, 2, 12, 9, 6, 3, 13, 10, 7, 4)(14, 24, 21, 18, 15, 25, 22, 19, 16, 26, 23, 20, 17),  ], [  (1, 24, 8, 18, 2, 25, 9, 19, 3, 
26, 10, 20, 4, 14, 11, 21, 5, 15, 12, 22, 6, 16, 13, 23, 7, 17),  (1, 17, 7, 23, 13, 16, 6, 22, 12, 15, 5, 21, 11, 14, 4, 20, 10, 26, 3, 19, 
9, 25, 2, 18, 8, 24),  ], [  (1, 17, 7, 23, 13, 16, 6, 22, 12, 15, 5, 21, 11, 14, 4, 20, 10, 26, 3, 19, 9, 25, 2, 18, 8, 24),  (1, 24, 8, 18, 
2, 25, 9, 19, 3, 26, 10, 20, 4, 14, 11, 21, 5, 15, 12, 22, 6, 16, 13, 23, 7, 17),  ], [  (1, 10, 6, 2, 11, 7, 3, 12, 8, 4, 13, 9, 5)(14, 23, 
19, 15, 24, 20, 16, 25, 21, 17, 26, 22, 18),  (1, 5, 9, 13, 4, 8, 12, 3, 7, 11, 2, 6, 10)(14, 18, 22, 26, 17, 21, 25, 16, 20, 24, 15, 19, 23),
], [  (1, 5, 9, 13, 4, 8, 12, 3, 7, 11, 2, 6, 10)(14, 18, 22, 26, 17, 21, 25, 16, 20, 24, 15, 19, 23),  (1, 10, 6, 2, 11, 7, 3, 12, 8, 4, 13, 
9, 5)(14, 23, 19, 15, 24, 20, 16, 25, 21, 17, 26, 22, 18),  ], [  (1, 23, 6, 15, 11, 20, 3, 25, 8, 17, 13, 22, 5, 14, 10, 19, 2, 24, 7, 16, 
12, 21, 4, 26, 9, 18),  (1, 18, 9, 26, 4, 21, 12, 16, 7, 24, 2, 19, 10, 14, 5, 22, 13, 17, 8, 25, 3, 20, 11, 15, 6, 23),  ], [  (1, 18, 9, 26,
4, 21, 12, 16, 7, 24, 2, 19, 10, 14, 5, 22, 13, 17, 8, 25, 3, 20, 11, 15, 6, 23),  (1, 23, 6, 15, 11, 20, 3, 25, 8, 17, 13, 22, 5, 14, 10, 19,
2, 24, 7, 16, 12, 21, 4, 26, 9, 18),  ], [  (1, 9, 4, 12, 7, 2, 10, 5, 13, 8, 3, 11, 6)(14, 22, 17, 25, 20, 15, 23, 18, 26, 21, 16, 24, 19),  
(1, 6, 11, 3, 8, 13, 5, 10, 2, 7, 12, 4, 9)(14, 19, 24, 16, 21, 26, 18, 23, 15, 20, 25, 17, 22),  ], [  (1, 6, 11, 3, 8, 13, 5, 10, 2, 7, 12, 
4, 9)(14, 19, 24, 16, 21, 26, 18, 23, 15, 20, 25, 17, 22),  (1, 9, 4, 12, 7, 2, 10, 5, 13, 8, 3, 11, 6)(14, 22, 17, 25, 20, 15, 23, 18, 26, 
21, 16, 24, 19),  ], [  (1, 22, 4, 25, 7, 15, 10, 18, 13, 21, 3, 24, 6, 14, 9, 17, 12, 20, 2, 23, 5, 26, 8, 16, 11, 19),  (1, 19, 11, 16, 8, 
26, 5, 23, 2, 20, 12, 17, 9, 14, 6, 24, 3, 21, 13, 18, 10, 15, 7, 25, 4, 22),  ], [  (1, 19, 11, 16, 8, 26, 5, 23, 2, 20, 12, 17, 9, 14, 6, 
24, 3, 21, 13, 18, 10, 15, 7, 25, 4, 22),  (1, 22, 4, 25, 7, 15, 10, 18, 13, 21, 3, 24, 6, 14, 9, 17, 12, 20, 2, 23, 5, 26, 8, 16, 11, 19),  
], [  (1, 8, 2, 9, 3, 10, 4, 11, 5, 12, 6, 13, 7)(14, 21, 15, 22, 16, 23, 17, 24, 18, 25, 19, 26, 20),  (1, 7, 13, 6, 12, 5, 11, 4, 10, 3, 9, 
2, 8)(14, 20, 26, 19, 25, 18, 24, 17, 23, 16, 22, 15, 21),  ], [  (1, 7, 13, 6, 12, 5, 11, 4, 10, 3, 9, 2, 8)(14, 20, 26, 19, 25, 18, 24, 17, 
23, 16, 22, 15, 21),  (1, 8, 2, 9, 3, 10, 4, 11, 5, 12, 6, 13, 7)(14, 21, 15, 22, 16, 23, 17, 24, 18, 25, 19, 26, 20),  ], [  (1, 21, 2, 22, 
3, 23, 4, 24, 5, 25, 6, 26, 7, 14, 8, 15, 9, 16, 10, 17, 11, 18, 12, 19, 13, 20),  (1, 20, 13, 19, 12, 18, 11, 17, 10, 16, 9, 15, 8, 14, 7, 
26, 6, 25, 5, 24, 4, 23, 3, 22, 2, 21),  ], [  (1, 20, 13, 19, 12, 18, 11, 17, 10, 16, 9, 15, 8, 14, 7, 26, 6, 25, 5, 24, 4, 23, 3, 22, 2, 
21),  (1, 21, 2, 22, 3, 23, 4, 24, 5, 25, 6, 26, 7, 14, 8, 15, 9, 16, 10, 17, 11, 18, 12, 19, 13, 20),  ], ]
);

BRACES[26].brace[2] := rec ( size := 26, perms := [ [  (),  (),  ], [  (1, 14)(2, 15)(3, 16)(4, 17)(5, 18)(6, 19)(7, 20)(8, 21)(9, 22)(10, 
23)(11, 24)(12, 25)(13, 26),  (1, 14)(2, 26)(3, 25)(4, 24)(5, 23)(6, 22)(7, 21)(8, 20)(9, 19)(10, 18)(11, 17)(12, 16)(13, 15),  ], [  (1, 13, 
12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2)(14, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15),  (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13)(14, 15, 
16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26),  ], [  (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13)(14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
25, 26),  (1, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2)(14, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15),  ], [  (1, 15, 3, 17, 5, 19, 7, 21,
9, 23, 11, 25, 13, 14, 2, 16, 4, 18, 6, 20, 8, 22, 10, 24, 12, 26),  (1, 15)(2, 14)(3, 26)(4, 25)(5, 24)(6, 23)(7, 22)(8, 21)(9, 20)(10, 
19)(11, 18)(12, 17)(13, 16),  ], [  (1, 26, 12, 24, 10, 22, 8, 20, 6, 18, 4, 16, 2, 14, 13, 25, 11, 23, 9, 21, 7, 19, 5, 17, 3, 15),  (1, 
26)(2, 25)(3, 24)(4, 23)(5, 22)(6, 21)(7, 20)(8, 19)(9, 18)(10, 17)(11, 16)(12, 15)(13, 14),  ], [  (1, 12, 10, 8, 6, 4, 2, 13, 11, 9, 7, 5, 
3)(14, 25, 23, 21, 19, 17, 15, 26, 24, 22, 20, 18, 16),  (1, 3, 5, 7, 9, 11, 13, 2, 4, 6, 8, 10, 12)(14, 16, 18, 20, 22, 24, 26, 15, 17, 19, 
21, 23, 25),  ], [  (1, 3, 5, 7, 9, 11, 13, 2, 4, 6, 8, 10, 12)(14, 16, 18, 20, 22, 24, 26, 15, 17, 19, 21, 23, 25),  (1, 12, 10, 8, 6, 4, 2, 
13, 11, 9, 7, 5, 3)(14, 25, 23, 21, 19, 17, 15, 26, 24, 22, 20, 18, 16),  ], [  (1, 16, 5, 20, 9, 24, 13, 15, 4, 19, 8, 23, 12, 14, 3, 18, 7, 
22, 11, 26, 2, 17, 6, 21, 10, 25),  (1, 16)(2, 15)(3, 14)(4, 26)(5, 25)(6, 24)(7, 23)(8, 22)(9, 21)(10, 20)(11, 19)(12, 18)(13, 17),  ], [  
(1, 25, 10, 21, 6, 17, 2, 26, 11, 22, 7, 18, 3, 14, 12, 23, 8, 19, 4, 15, 13, 24, 9, 20, 5, 16),  (1, 25)(2, 24)(3, 23)(4, 22)(5, 21)(6, 
20)(7, 19)(8, 18)(9, 17)(10, 16)(11, 15)(12, 14)(13, 26),  ], [  (1, 11, 8, 5, 2, 12, 9, 6, 3, 13, 10, 7, 4)(14, 24, 21, 18, 15, 25, 22, 19, 
16, 26, 23, 20, 17),  (1, 4, 7, 10, 13, 3, 6, 9, 12, 2, 5, 8, 11)(14, 17, 20, 23, 26, 16, 19, 22, 25, 15, 18, 21, 24),  ], [  (1, 4, 7, 10, 
13, 3, 6, 9, 12, 2, 5, 8, 11)(14, 17, 20, 23, 26, 16, 19, 22, 25, 15, 18, 21, 24),  (1, 11, 8, 5, 2, 12, 9, 6, 3, 13, 10, 7, 4)(14, 24, 21, 
18, 15, 25, 22, 19, 16, 26, 23, 20, 17),  ], [  (1, 17, 7, 23, 13, 16, 6, 22, 12, 15, 5, 21, 11, 14, 4, 20, 10, 26, 3, 19, 9, 25, 2, 18, 8, 
24),  (1, 17)(2, 16)(3, 15)(4, 14)(5, 26)(6, 25)(7, 24)(8, 23)(9, 22)(10, 21)(11, 20)(12, 19)(13, 18),  ], [  (1, 24, 8, 18, 2, 25, 9, 19, 3, 
26, 10, 20, 4, 14, 11, 21, 5, 15, 12, 22, 6, 16, 13, 23, 7, 17),  (1, 24)(2, 23)(3, 22)(4, 21)(5, 20)(6, 19)(7, 18)(8, 17)(9, 16)(10, 15)(11, 
14)(12, 26)(13, 25),  ], [  (1, 10, 6, 2, 11, 7, 3, 12, 8, 4, 13, 9, 5)(14, 23, 19, 15, 24, 20, 16, 25, 21, 17, 26, 22, 18),  (1, 5, 9, 13, 4,
8, 12, 3, 7, 11, 2, 6, 10)(14, 18, 22, 26, 17, 21, 25, 16, 20, 24, 15, 19, 23),  ], [  (1, 5, 9, 13, 4, 8, 12, 3, 7, 11, 2, 6, 10)(14, 18, 22,
26, 17, 21, 25, 16, 20, 24, 15, 19, 23),  (1, 10, 6, 2, 11, 7, 3, 12, 8, 4, 13, 9, 5)(14, 23, 19, 15, 24, 20, 16, 25, 21, 17, 26, 22, 18),  ],
[  (1, 18, 9, 26, 4, 21, 12, 16, 7, 24, 2, 19, 10, 14, 5, 22, 13, 17, 8, 25, 3, 20, 11, 15, 6, 23),  (1, 18)(2, 17)(3, 16)(4, 15)(5, 14)(6, 
26)(7, 25)(8, 24)(9, 23)(10, 22)(11, 21)(12, 20)(13, 19),  ], [  (1, 23, 6, 15, 11, 20, 3, 25, 8, 17, 13, 22, 5, 14, 10, 19, 2, 24, 7, 16, 12,
21, 4, 26, 9, 18),  (1, 23)(2, 22)(3, 21)(4, 20)(5, 19)(6, 18)(7, 17)(8, 16)(9, 15)(10, 14)(11, 26)(12, 25)(13, 24),  ], [  (1, 9, 4, 12, 7, 
2, 10, 5, 13, 8, 3, 11, 6)(14, 22, 17, 25, 20, 15, 23, 18, 26, 21, 16, 24, 19),  (1, 6, 11, 3, 8, 13, 5, 10, 2, 7, 12, 4, 9)(14, 19, 24, 16, 
21, 26, 18, 23, 15, 20, 25, 17, 22),  ], [  (1, 6, 11, 3, 8, 13, 5, 10, 2, 7, 12, 4, 9)(14, 19, 24, 16, 21, 26, 18, 23, 15, 20, 25, 17, 22),  
(1, 9, 4, 12, 7, 2, 10, 5, 13, 8, 3, 11, 6)(14, 22, 17, 25, 20, 15, 23, 18, 26, 21, 16, 24, 19),  ], [  (1, 19, 11, 16, 8, 26, 5, 23, 2, 20, 
12, 17, 9, 14, 6, 24, 3, 21, 13, 18, 10, 15, 7, 25, 4, 22),  (1, 19)(2, 18)(3, 17)(4, 16)(5, 15)(6, 14)(7, 26)(8, 25)(9, 24)(10, 23)(11, 
22)(12, 21)(13, 20),  ], [  (1, 22, 4, 25, 7, 15, 10, 18, 13, 21, 3, 24, 6, 14, 9, 17, 12, 20, 2, 23, 5, 26, 8, 16, 11, 19),  (1, 22)(2, 
21)(3, 20)(4, 19)(5, 18)(6, 17)(7, 16)(8, 15)(9, 14)(10, 26)(11, 25)(12, 24)(13, 23),  ], [  (1, 8, 2, 9, 3, 10, 4, 11, 5, 12, 6, 13, 7)(14, 
21, 15, 22, 16, 23, 17, 24, 18, 25, 19, 26, 20),  (1, 7, 13, 6, 12, 5, 11, 4, 10, 3, 9, 2, 8)(14, 20, 26, 19, 25, 18, 24, 17, 23, 16, 22, 15, 
21),  ], [  (1, 7, 13, 6, 12, 5, 11, 4, 10, 3, 9, 2, 8)(14, 20, 26, 19, 25, 18, 24, 17, 23, 16, 22, 15, 21),  (1, 8, 2, 9, 3, 10, 4, 11, 5, 
12, 6, 13, 7)(14, 21, 15, 22, 16, 23, 17, 24, 18, 25, 19, 26, 20),  ], [  (1, 20, 13, 19, 12, 18, 11, 17, 10, 16, 9, 15, 8, 14, 7, 26, 6, 25, 
5, 24, 4, 23, 3, 22, 2, 21),  (1, 20)(2, 19)(3, 18)(4, 17)(5, 16)(6, 15)(7, 14)(8, 26)(9, 25)(10, 24)(11, 23)(12, 22)(13, 21),  ], [  (1, 21, 
2, 22, 3, 23, 4, 24, 5, 25, 6, 26, 7, 14, 8, 15, 9, 16, 10, 17, 11, 18, 12, 19, 13, 20),  (1, 21)(2, 20)(3, 19)(4, 18)(5, 17)(6, 16)(7, 15)(8,
14)(9, 26)(10, 25)(11, 24)(12, 23)(13, 22),  ], ]
);


