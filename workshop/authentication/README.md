# Authentication API

<!-- #todo:0 What else should we add to the auth section? -->

http://iiif.io/api/auth/1.0/

The Authentication API helps to orchestrate a workflow so that untrusted applications can go through required authentication steps. The untrusted IIIF client does not handle login or accepting user credentials itself, but just manages the workflow appropriately.

The API supports the following approaches:

**Login:**
The user will be required to log in using a separate window with a UI provided by an external authentication system.

**Click through:**
The user will be required to click a button within the client using content provided in the service description.

**Kiosk:**
The user will not be required to interact with an authentication system, the client is expected to use the access cookie service automatically.

**External:**
The user is expected to have already acquired the appropriate cookie, and the access cookie service will not be used at all.

## Questions

- Will you need to restrict access to any IIIF resources?
- Will you have to provide degraded access to any resources?
- Which of the above approaches might apply to your situation?

<!-- #todo:0 there's probably a better word than "approaches" for these different workflow patterns -->

## Demonstration

Auth Demonstrator https://iiifauth.digtest.co.uk/
