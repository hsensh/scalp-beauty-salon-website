def contexts(request):
    is_admin = False
    is_staff = False
    is_user = False
    if hasattr(request.user, 'admin'):
        is_admin = True
    elif hasattr(request.user, 'staff'):
        is_staff = True
    elif hasattr(request.user, 'user'):
        is_user = True
    
    context = {
        'is_admin': is_admin,
        'is_staff': is_staff,
        'is_user': is_user,
    }

    return context
    


