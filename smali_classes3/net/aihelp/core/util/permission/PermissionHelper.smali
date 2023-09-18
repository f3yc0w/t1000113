.class public Lnet/aihelp/core/util/permission/PermissionHelper;
.super Ljava/lang/Object;
.source "PermissionHelper.java"

# interfaces
.implements Lnet/aihelp/core/util/permission/IPermissionCallback;


# instance fields
.field private object:Ljava/lang/Object;

.field private permission:Ljava/lang/String;

.field private requestCode:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lnet/aihelp/core/util/permission/PermissionHelper;->object:Ljava/lang/Object;

    .line 34
    iput-object p2, p0, Lnet/aihelp/core/util/permission/PermissionHelper;->permission:Ljava/lang/String;

    .line 35
    iput p3, p0, Lnet/aihelp/core/util/permission/PermissionHelper;->requestCode:I

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    .line 70
    iget-object v0, p0, Lnet/aihelp/core/util/permission/PermissionHelper;->object:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 71
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 73
    :cond_0
    instance-of v1, v0, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 74
    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;Ljava/lang/String;I)Lnet/aihelp/core/util/permission/PermissionHelper;
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 42
    new-instance v0, Lnet/aihelp/core/util/permission/PermissionHelper;

    invoke-direct {v0, p0, p1, p2}, Lnet/aihelp/core/util/permission/PermissionHelper;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    return-object v0

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mObject == null || permission == null || requestCode == 0!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static hasPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 139
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x1000

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 140
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 141
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 142
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v0
.end method

.method public static hasReadPermission(Landroid/content/Context;)Z
    .locals 2

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 155
    invoke-static {p0, v0}, Lnet/aihelp/core/util/permission/PermissionHelper;->hasPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isPermissionGranted()Z
    .locals 3

    .line 63
    invoke-direct {p0}, Lnet/aihelp/core/util/permission/PermissionHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lnet/aihelp/core/util/permission/PermissionHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lnet/aihelp/core/util/permission/PermissionHelper;->permission:Ljava/lang/String;

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private shouldShowRequestPermissionRationale()Z
    .locals 2

    .line 124
    iget-object v0, p0, Lnet/aihelp/core/util/permission/PermissionHelper;->object:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 126
    iget-object v0, p0, Lnet/aihelp/core/util/permission/PermissionHelper;->object:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lnet/aihelp/core/util/permission/PermissionHelper;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 128
    :cond_0
    instance-of v1, v0, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 129
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 130
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    iget-object v1, p0, Lnet/aihelp/core/util/permission/PermissionHelper;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private showSettingsPage()V
    .locals 6

    const-string v0, "android.intent.category.DEFAULT"

    .line 161
    invoke-direct {p0}, Lnet/aihelp/core/util/permission/PermissionHelper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 164
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 168
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method checkPermissionState()Lnet/aihelp/core/util/permission/Permission$State;
    .locals 3

    .line 94
    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    invoke-direct {p0}, Lnet/aihelp/core/util/permission/PermissionHelper;->isPermissionGranted()Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget-object v1, p0, Lnet/aihelp/core/util/permission/PermissionHelper;->permission:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/aihelp/core/util/permission/PermissionHelper;->hasPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    sget-object v0, Lnet/aihelp/core/util/permission/Permission$State;->ASKABLE:Lnet/aihelp/core/util/permission/Permission$State;

    .line 102
    invoke-direct {p0}, Lnet/aihelp/core/util/permission/PermissionHelper;->shouldShowRequestPermissionRationale()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    sget-object v0, Lnet/aihelp/core/util/permission/Permission$State;->RATIONAL:Lnet/aihelp/core/util/permission/Permission$State;

    goto :goto_1

    .line 106
    :cond_1
    sget-object v0, Lnet/aihelp/core/util/permission/Permission$State;->UNAVAILABLE:Lnet/aihelp/core/util/permission/Permission$State;

    goto :goto_1

    .line 97
    :cond_2
    :goto_0
    sget-object v0, Lnet/aihelp/core/util/permission/Permission$State;->AVAILABLE:Lnet/aihelp/core/util/permission/Permission$State;

    :cond_3
    :goto_1
    return-object v0
.end method

.method invokePermissionCallback(Lnet/aihelp/core/util/permission/Permission$Result;)V
    .locals 8

    .line 46
    iget-object v0, p0, Lnet/aihelp/core/util/permission/PermissionHelper;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 47
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 48
    const-class v5, Lnet/aihelp/core/util/permission/Permission;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lnet/aihelp/core/util/permission/Permission;

    if-eqz v5, :cond_0

    .line 50
    iget v6, p0, Lnet/aihelp/core/util/permission/PermissionHelper;->requestCode:I

    invoke-interface {v5}, Lnet/aihelp/core/util/permission/Permission;->requestCode()I

    move-result v5

    if-ne v6, v5, :cond_0

    const/4 v5, 0x1

    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 53
    :try_start_0
    iget-object v6, p0, Lnet/aihelp/core/util/permission/PermissionHelper;->object:Ljava/lang/Object;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v2

    aput-object p0, v7, v5

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 55
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPermissionDenied()V
    .locals 0

    return-void
.end method

.method public onPermissionIgnored()V
    .locals 0

    .line 189
    invoke-direct {p0}, Lnet/aihelp/core/util/permission/PermissionHelper;->showSettingsPage()V

    return-void
.end method

.method public onPermissionRational()V
    .locals 0

    .line 184
    invoke-virtual {p0}, Lnet/aihelp/core/util/permission/PermissionHelper;->requestPermission()V

    return-void
.end method

.method onRequestPermissionsResult(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 82
    sget-object p1, Lnet/aihelp/core/util/permission/Permission$Result;->GRANTED:Lnet/aihelp/core/util/permission/Permission$Result;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/permission/PermissionHelper;->invokePermissionCallback(Lnet/aihelp/core/util/permission/Permission$Result;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0}, Lnet/aihelp/core/util/permission/PermissionHelper;->shouldShowRequestPermissionRationale()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 85
    sget-object p1, Lnet/aihelp/core/util/permission/Permission$Result;->DENIED:Lnet/aihelp/core/util/permission/Permission$Result;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/permission/PermissionHelper;->invokePermissionCallback(Lnet/aihelp/core/util/permission/Permission$Result;)V

    goto :goto_0

    .line 87
    :cond_1
    sget-object p1, Lnet/aihelp/core/util/permission/Permission$Result;->GO_SETTING:Lnet/aihelp/core/util/permission/Permission$Result;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/permission/PermissionHelper;->invokePermissionCallback(Lnet/aihelp/core/util/permission/Permission$Result;)V

    :goto_0
    return-void
.end method

.method requestPermission()V
    .locals 4

    .line 113
    iget-object v0, p0, Lnet/aihelp/core/util/permission/PermissionHelper;->object:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 114
    check-cast v0, Landroid/app/Activity;

    new-array v1, v3, [Ljava/lang/String;

    iget-object v3, p0, Lnet/aihelp/core/util/permission/PermissionHelper;->permission:Ljava/lang/String;

    aput-object v3, v1, v2

    iget v2, p0, Lnet/aihelp/core/util/permission/PermissionHelper;->requestCode:I

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 115
    :cond_0
    instance-of v1, v0, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 116
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 117
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_1

    new-array v1, v3, [Ljava/lang/String;

    .line 118
    iget-object v3, p0, Lnet/aihelp/core/util/permission/PermissionHelper;->permission:Ljava/lang/String;

    aput-object v3, v1, v2

    iget v2, p0, Lnet/aihelp/core/util/permission/PermissionHelper;->requestCode:I

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method
