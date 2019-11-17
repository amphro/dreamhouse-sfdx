Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();

mail.setSubject('Welcome to your new scratch org');
mail.setToAddresses(new String[]{'ra3530238@gmail.com'});

String body = 'Here\'s your personal scratch org info.\n\n' +
'You can open your org at ${DISPLAY_URL_JSON.result.url}.\n\n' +
'Here are some other details of your org:\n' +
'  Org ID: ${DISPLAY_USER_JSON.result.orgId}\n' +
'  Username: ${DISPLAY_USER_JSON.result.username}\n' +
'  Instance URL: ${DISPLAY_USER_JSON.result.instanceUrl}\n' +
'  Login URL: ${DISPLAY_USER_JSON.result.loginUrl}\n';
mail.setPlainTextBody(body);
Messaging.sendEmail(new Messaging.Email[] { mail } , false);

