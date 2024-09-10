from flask import redirect, session
from functools import wraps



def login_required(f):

    @wraps(f)
    def decorated_function(*args, **kwargs):
        print("In helper"+ str(session.get("user_id")))
        if session.get("user_id") is None:
            return redirect("/login")
        return f(*args, **kwargs)
    return decorated_function


def admin_access_required(f):

    @wraps(f)
    def decorated_function(*args, **kwargs):
        if session.get("Admin") is None:
            return redirect("/billGen")
        return f(*args, **kwargs)
    return decorated_function