#! /usr/bin/env node

const fs = require('fs');

const DISPLAY_URL_JSON = JSON.parse(process.env.DISPLAY_URL_JSON);
const DISPLAY_USER_JSON = JSON.parse(process.env.DISPLAY_USER_JSON);

let contents = fs.readFileSync('./scripts/sendEmailTemplate.apex', 'utf8');

contents = contents.replace('${DISPLAY_URL_JSON.result.url}', DISPLAY_URL_JSON.result.url);
contents = contents.replace('${DISPLAY_USER_JSON.result.orgId}', DISPLAY_USER_JSON.result.orgId);
contents = contents.replace('${DISPLAY_USER_JSON.result.username}', DISPLAY_USER_JSON.result.username);
contents = contents.replace('${DISPLAY_USER_JSON.result.instanceUrl}', DISPLAY_USER_JSON.result.instanceUrl);
contents = contents.replace('${DISPLAY_USER_JSON.result.loginUrl}', DISPLAY_USER_JSON.result.loginUrl);

fs.writeFileSync('./scripts/sendEmail.apex', contents);
