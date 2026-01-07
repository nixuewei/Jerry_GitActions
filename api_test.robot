*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Verify JSONPlaceholder API
    [Documentation]    这是一个演示用的 API 调用
    Create Session    api    https://jsonplaceholder.typicode.com
    ${resp}=         GET On Session    api    /posts/1
    Status Should Be  200    ${resp}
    Log To Console    \nAPI Response Title: ${resp.json()['title']}
