var gaugeExecutionResult = {"suiteResult":{"specResults":[{"protoSpec":{"specHeading":"Image Specification","items":[{"itemType":2,"comment":{"text":"\n"}},{"itemType":2,"comment":{"text":"An image can be a maximum of 250 pixels in width"}},{"itemType":2,"comment":{"text":"An image can be a maximum  of 250 pixels in height"}},{"itemType":2,"comment":{"text":"An image can not have width less than 1 pixels"}},{"itemType":2,"comment":{"text":"An image can not have Height less than 1 pixels"}},{"itemType":2,"comment":{"text":"\n"}},{"itemType":2,"comment":{"text":"\n"}},{"itemType":4,"scenario":{"scenarioHeading":"Create Images","failed":false,"scenarioItems":[{"itemType":2,"comment":{"text":"\n"}},{"itemType":1,"step":{"actualText":"initialize valid images","parsedText":"initialize valid images {}","fragments":[{"fragmentType":1,"text":"initialize valid images "},{"fragmentType":2,"parameter":{"parameterType":5,"name":"","table":{"headers":{"cells":["w","h","pixel count","Exception"]},"rows":[{"cells":["3","3","9","none"]},{"cells":["250","250","62500","none"]}]}}}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":74},"skipped":false}}},{"itemType":2,"comment":{"text":"\n"}},{"itemType":1,"step":{"actualText":"initialize invalid images","parsedText":"initialize invalid images {}","fragments":[{"fragmentType":1,"text":"initialize invalid images "},{"fragmentType":2,"parameter":{"parameterType":5,"name":"","table":{"headers":{"cells":["w","h","Exception message"]},"rows":[{"cells":["251","250","A width of 251 is greater than the maximum width of 250"]},{"cells":["250","251","A height of 251 is greater than the maximum height of 250"]},{"cells":["0","250","A width of 0 is less than the minimum width of 1"]},{"cells":["250","0","A height of 0 is less than the minimum height of 1"]}]}}}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}},{"itemType":2,"comment":{"text":"\n"}}],"executionTime":74,"skipped":false}},{"itemType":4,"scenario":{"scenarioHeading":"check image bounds","failed":false,"scenarioItems":[{"itemType":2,"comment":{"text":"\n"}},{"itemType":1,"step":{"actualText":"create a \"3\" by \"3\" image","parsedText":"create a {} by {} image","fragments":[{"fragmentType":1,"text":"create a "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"3","name":""}},{"fragmentType":1,"text":" by "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"3","name":""}},{"fragmentType":1,"text":" image"}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}},{"itemType":1,"step":{"actualText":"set invalid pixel colors","parsedText":"set invalid pixel colors {}","fragments":[{"fragmentType":1,"text":"set invalid pixel colors "},{"fragmentType":2,"parameter":{"parameterType":5,"name":"","table":{"headers":{"cells":["x","y","Exception message"]},"rows":[{"cells":["4","3","4 is outside the width of the image"]},{"cells":["3","4","4 is outside the height of the image"]},{"cells":["0","3","0 is outside the width of the image"]},{"cells":["3","0","0 is outside the height of the image"]}]}}}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}},{"itemType":2,"comment":{"text":"\n"}}],"executionTime":0,"skipped":false}},{"itemType":4,"scenario":{"scenarioHeading":"Set Color of Pixel","failed":false,"scenarioItems":[{"itemType":2,"comment":{"text":"\n"}},{"itemType":2,"comment":{"text":"the x value must be greater than 1 and less than the Image width."}},{"itemType":2,"comment":{"text":"the y value must be greater than 1 and less than the Image Height."}},{"itemType":2,"comment":{"text":"\n"}},{"itemType":1,"step":{"actualText":"create a \"3\" by \"3\" image","parsedText":"create a {} by {} image","fragments":[{"fragmentType":1,"text":"create a "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"3","name":""}},{"fragmentType":1,"text":" by "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"3","name":""}},{"fragmentType":1,"text":" image"}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}},{"itemType":1,"step":{"actualText":"set pixel colors","parsedText":"set pixel colors {}","fragments":[{"fragmentType":1,"text":"set pixel colors "},{"fragmentType":2,"parameter":{"parameterType":5,"name":"","table":{"headers":{"cells":["x","y","color"]},"rows":[{"cells":["3","3","A"]},{"cells":["2","2","A"]},{"cells":["1","1","A"]}]}}}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}},{"itemType":2,"comment":{"text":"\n"}},{"itemType":2,"comment":{"text":"\n"}}],"executionTime":0,"skipped":false}},{"itemType":4,"scenario":{"scenarioHeading":"Set column color","failed":false,"scenarioItems":[{"itemType":2,"comment":{"text":"\n"}},{"itemType":1,"step":{"actualText":"create a \"10\" by \"10\" image","parsedText":"create a {} by {} image","fragments":[{"fragmentType":1,"text":"create a "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"10","name":""}},{"fragmentType":1,"text":" by "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"10","name":""}},{"fragmentType":1,"text":" image"}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}},{"itemType":1,"step":{"actualText":"set pixel vertical colors","parsedText":"set pixel vertical colors {}","fragments":[{"fragmentType":1,"text":"set pixel vertical colors "},{"fragmentType":2,"parameter":{"parameterType":5,"name":"","table":{"headers":{"cells":["x","y1","y2","color"]},"rows":[{"cells":["2","3","4","W"]}]}}}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}},{"itemType":2,"comment":{"text":"\n"}},{"itemType":2,"comment":{"text":"\n"}}],"executionTime":0,"skipped":false}},{"itemType":4,"scenario":{"scenarioHeading":"Set row color","failed":false,"scenarioItems":[{"itemType":2,"comment":{"text":"\n"}},{"itemType":1,"step":{"actualText":"create a \"10\" by \"10\" image","parsedText":"create a {} by {} image","fragments":[{"fragmentType":1,"text":"create a "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"10","name":""}},{"fragmentType":1,"text":" by "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"10","name":""}},{"fragmentType":1,"text":" image"}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}},{"itemType":1,"step":{"actualText":"set pixel horizontal colors","parsedText":"set pixel horizontal colors {}","fragments":[{"fragmentType":1,"text":"set pixel horizontal colors "},{"fragmentType":2,"parameter":{"parameterType":5,"name":"","table":{"headers":{"cells":["x1","x2","y","color"]},"rows":[{"cells":["3","4","2","Z"]}]}}}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}},{"itemType":2,"comment":{"text":"\n"}}],"executionTime":0,"skipped":false}},{"itemType":4,"scenario":{"scenarioHeading":"Clear image","failed":false,"scenarioItems":[{"itemType":1,"step":{"actualText":"create a \"10\" by \"10\" image","parsedText":"create a {} by {} image","fragments":[{"fragmentType":1,"text":"create a "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"10","name":""}},{"fragmentType":1,"text":" by "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"10","name":""}},{"fragmentType":1,"text":" image"}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}},{"itemType":1,"step":{"actualText":"set pixel horizontal colors","parsedText":"set pixel horizontal colors {}","fragments":[{"fragmentType":1,"text":"set pixel horizontal colors "},{"fragmentType":2,"parameter":{"parameterType":5,"name":"","table":{"headers":{"cells":["x1","x2","y","color"]},"rows":[{"cells":["3","4","2","Z"]}]}}}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}},{"itemType":1,"step":{"actualText":"set pixel vertical colors","parsedText":"set pixel vertical colors {}","fragments":[{"fragmentType":1,"text":"set pixel vertical colors "},{"fragmentType":2,"parameter":{"parameterType":5,"name":"","table":{"headers":{"cells":["x","y1","y2","color"]},"rows":[{"cells":["2","3","4","W"]}]}}}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}},{"itemType":1,"step":{"actualText":"clear image","parsedText":"clear image","fragments":[{"fragmentType":1,"text":"clear image"}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":1},"skipped":false}}},{"itemType":2,"comment":{"text":"\n"}},{"itemType":2,"comment":{"text":"F 3 3 J"}},{"itemType":2,"comment":{"text":"\n"}}],"executionTime":1,"skipped":false}},{"itemType":4,"scenario":{"scenarioHeading":"Fill Region","failed":false,"scenarioItems":[{"itemType":1,"step":{"actualText":"create a \"10\" by \"10\" image","parsedText":"create a {} by {} image","fragments":[{"fragmentType":1,"text":"create a "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"10","name":""}},{"fragmentType":1,"text":" by "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"10","name":""}},{"fragmentType":1,"text":" image"}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}},{"itemType":1,"step":{"actualText":"define regions","parsedText":"define regions {}","fragments":[{"fragmentType":1,"text":"define regions "},{"fragmentType":2,"parameter":{"parameterType":5,"name":"","table":{"headers":{"cells":["x","y","color","region size"]},"rows":[{"cells":["3","3","J","1"]}]}}}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}}],"executionTime":0,"skipped":false}}],"isTableDriven":false,"fileName":"/Users/coocoder/desktop/carwow/specs/image.spec"},"scenarioCount":7,"scenarioFailedCount":0,"failed":false,"executionTime":75,"skipped":false,"scenarioSkippedCount":0}],"failed":false,"specsFailedCount":0,"executionTime":112,"successRate":100,"environment":"default","tags":"","projectName":"carwow","timestamp":"Nov 30, 2015 at 7:14pm","specsSkippedCount":0}};
 var itemTypesMap = {"1":"Step","2":"Comment","3":"Concept","4":"Scenario","5":"TableDrivenScenario","6":"Table","7":"Tags"};
 var parameterTypesMap = {"1":"Static","2":"Dynamic","3":"Special_String","4":"Special_Table","5":"Table"};
 var fragmentTypesMap = {"1":"Text","2":"Parameter"};