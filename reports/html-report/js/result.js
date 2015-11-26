var gaugeExecutionResult = {"suiteResult":{"specResults":[{"protoSpec":{"specHeading":"Pixel co-ordinates Specification","items":[{"itemType":2,"comment":{"text":"\n"}},{"itemType":2,"comment":{"text":"Pixel co-ordinates are a pair of integers:"}},{"itemType":2,"comment":{"text":"a column number between 1 and 250,"}},{"itemType":2,"comment":{"text":"and a row number between 1 and 250."}},{"itemType":2,"comment":{"text":"\n"}},{"itemType":4,"scenario":{"scenarioHeading":"Create a an image with maximum size","failed":false,"scenarioItems":[{"itemType":2,"comment":{"text":"\n"}},{"itemType":1,"step":{"actualText":"create a \"250\" by \"250\" image","parsedText":"create a {} by {} image","fragments":[{"fragmentType":1,"text":"create a "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"250","name":""}},{"fragmentType":1,"text":" by "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"250","name":""}},{"fragmentType":1,"text":" image"}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}},{"itemType":1,"step":{"actualText":"create and validate pixels","parsedText":"create and validate pixels {}","fragments":[{"fragmentType":1,"text":"create and validate pixels "},{"fragmentType":2,"parameter":{"parameterType":5,"name":"","table":{"headers":{"cells":["x","y","valid?"]},"rows":[{"cells":["250","250","true"]},{"cells":["250","1","true"]},{"cells":["1","250","true"]},{"cells":["1","251","false"]},{"cells":["251","1","false"]},{"cells":["0","1","false"]},{"cells":["1","0","false"]}]}}}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":1},"skipped":false}}},{"itemType":2,"comment":{"text":"\n"}}],"executionTime":1,"skipped":false}},{"itemType":4,"scenario":{"scenarioHeading":"check pixels are valid with in image bounds","failed":false,"scenarioItems":[{"itemType":2,"comment":{"text":"\n"}},{"itemType":1,"step":{"actualText":"create a \"200\" by \"100\" image","parsedText":"create a {} by {} image","fragments":[{"fragmentType":1,"text":"create a "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"200","name":""}},{"fragmentType":1,"text":" by "},{"fragmentType":2,"parameter":{"parameterType":1,"value":"100","name":""}},{"fragmentType":1,"text":" image"}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}},{"itemType":1,"step":{"actualText":"create and validate pixels","parsedText":"create and validate pixels {}","fragments":[{"fragmentType":1,"text":"create and validate pixels "},{"fragmentType":2,"parameter":{"parameterType":5,"name":"","table":{"headers":{"cells":["x","y","valid?"]},"rows":[{"cells":["250","250","false"]},{"cells":["250","1","false"]},{"cells":["1","250","false"]},{"cells":["1","251","false"]},{"cells":["251","1","false"]},{"cells":["0","1","false"]},{"cells":["1","0","false"]},{"cells":["200","100","true"]},{"cells":["100","200","false"]}]}}}],"stepExecutionResult":{"executionResult":{"failed":false,"executionTime":0},"skipped":false}}}],"executionTime":0,"skipped":false}}],"isTableDriven":false,"fileName":"/Users/coocoder/desktop/carwow/specs/image.spec"},"scenarioCount":2,"scenarioFailedCount":0,"failed":false,"executionTime":1,"skipped":false,"scenarioSkippedCount":0}],"failed":false,"specsFailedCount":0,"executionTime":15,"successRate":100,"environment":"default","tags":"","projectName":"carwow","timestamp":"Nov 26, 2015 at 4:17pm","specsSkippedCount":0}};
 var itemTypesMap = {"1":"Step","2":"Comment","3":"Concept","4":"Scenario","5":"TableDrivenScenario","6":"Table","7":"Tags"};
 var parameterTypesMap = {"1":"Static","2":"Dynamic","3":"Special_String","4":"Special_Table","5":"Table"};
 var fragmentTypesMap = {"1":"Text","2":"Parameter"};