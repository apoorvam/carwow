var gaugeExecutionResult = {"suiteResult":{"specResults":[{"protoSpec":{"specHeading":"Fill Specification","items":[{"itemType":2,"comment":{"text":"\n"}},{"itemType":2,"comment":{"text":"F X Y C - Fill the region R with the colour C. R is defined as: Pixel (X,Y) belongs to R."}},{"itemType":2,"comment":{"text":"\n"}},{"itemType":1,"step":{"actualText":"create a \"3\" by \"3\" image","parsedText":"create a {} by {} image","fragments":[{"fragmentType":1,"text":"create a "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"3","name":""}},{"fragmentType":1,"text":" by "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"3","name":""}},{"fragmentType":1,"text":" image"}],"stepExecutionResult":{"skipped":false}}},{"itemType":2,"comment":{"text":"\n"}},{"itemType":4,"scenario":{"scenarioHeading":"Fill center with top in region","failed":false,"contexts":[{"itemType":1,"step":{"actualText":"create a \"3\" by \"3\" image","parsedText":"create a {} by {} image","fragments":[{"fragmentType":1,"text":"create a "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"3","name":""}},{"fragmentType":1,"text":" by "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"3","name":""}},{"fragmentType":1,"text":" image"}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}}],"scenarioItems":[{"itemType":1,"step":{"actualText":"set x \"1\" y \"2\" to \"A\"","parsedText":"set x {} y {} to {}","fragments":[{"fragmentType":1,"text":"set x "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"1","name":""}},{"fragmentType":1,"text":" y "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"2","name":""}},{"fragmentType":1,"text":" to "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"A","name":""}}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}},{"itemType":1,"step":{"actualText":"set x \"2\" y \"1\" to \"A\"","parsedText":"set x {} y {} to {}","fragments":[{"fragmentType":1,"text":"set x "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"2","name":""}},{"fragmentType":1,"text":" y "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"1","name":""}},{"fragmentType":1,"text":" to "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"A","name":""}}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}},{"itemType":1,"step":{"actualText":"set x \"2\" y \"3\" to \"A\"","parsedText":"set x {} y {} to {}","fragments":[{"fragmentType":1,"text":"set x "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"2","name":""}},{"fragmentType":1,"text":" y "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"3","name":""}},{"fragmentType":1,"text":" to "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"A","name":""}}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}},{"itemType":1,"step":{"actualText":"set x \"3\" y \"2\" to \"A\"","parsedText":"set x {} y {} to {}","fragments":[{"fragmentType":1,"text":"set x "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"3","name":""}},{"fragmentType":1,"text":" y "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"2","name":""}},{"fragmentType":1,"text":" to "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"A","name":""}}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}},{"itemType":1,"step":{"actualText":"fill x \"2\" y \"2\" to \"A\"","parsedText":"fill x {} y {} to {}","fragments":[{"fragmentType":1,"text":"fill x "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"2","name":""}},{"fragmentType":1,"text":" y "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"2","name":""}},{"fragmentType":1,"text":" to "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"A","name":""}}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}},{"itemType":1,"step":{"actualText":"render image","parsedText":"render image","fragments":[{"fragmentType":1,"text":"render image"}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}},{"itemType":1,"step":{"actualText":"check region","parsedText":"check region {}","fragments":[{"fragmentType":1,"text":"check region "},{"fragmentType":2,"parameter":{"parameterType":5,"name":"","table":{"headers":{"cells":["x","y","color"]},"rows":[{"cells":["2","2","A"]},{"cells":["2","1","A"]},{"cells":["2","3","A"]},{"cells":["1","2","A"]},{"cells":["3","2","A"]}]}}}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}}],"executionTime":0,"skipped":false}}],"isTableDriven":false,"fileName":"/Users/cococoder/Desktop/carwow/specs/fill.spec"},"scenarioCount":1,"scenarioFailedCount":0,"failed":false,"executionTime":0,"skipped":false,"scenarioSkippedCount":0}],"failed":false,"specsFailedCount":0,"executionTime":18,"successRate":100,"environment":"default","tags":"","projectName":"carwow","timestamp":"Dec 18, 2015 at 2:38am","specsSkippedCount":0}};
 var itemTypesMap = {"1":"Step","2":"Comment","3":"Concept","4":"Scenario","5":"TableDrivenScenario","6":"Table","7":"Tags"};
 var parameterTypesMap = {"1":"Static","2":"Dynamic","3":"Special_String","4":"Special_Table","5":"Table"};
 var fragmentTypesMap = {"1":"Text","2":"Parameter"};