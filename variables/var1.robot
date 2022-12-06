*** Variables ***
${url} =    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser} =    chrome
${username} =    xpath =    //*[@name='username']
${user_text} =    Admin
${password} =    xpath =    //*[@name='password']
${pass_text} =    admin123
${login} =    xpath =    //*[@class='oxd-button oxd-button--medium oxd-button--main orangehrm-login-button']
${time_link} =    xpath =    //*[@href='/web/index.php/time/viewTimeModule']
${rec_link} =    xpath =    //*[@href='/web/index.php/recruitment/viewRecruitmentModule']
${test} =    Network Administrator
${job_dropdown} =    xpath =    //*[@class='oxd-form-row']//div/div[2]//div[2]/i