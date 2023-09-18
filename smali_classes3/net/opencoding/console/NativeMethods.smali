.class public Lnet/opencoding/console/NativeMethods;
.super Ljava/lang/Object;
.source "NativeMethods.java"


# static fields
.field private static _unityPlayerActivityField:Ljava/lang/reflect/Field;

.field private static _unityPlayerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyToClipboard(Ljava/lang/String;)V
    .locals 1

    .line 19
    new-instance v0, Lnet/opencoding/console/NativeMethods$1;

    invoke-direct {v0, p0}, Lnet/opencoding/console/NativeMethods$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/opencoding/console/NativeMethods;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 4

    const-string v0, "OpencodingConsole"

    .line 70
    sget-object v1, Lnet/opencoding/console/NativeMethods;->_unityPlayerActivityField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 71
    invoke-static {}, Lnet/opencoding/console/NativeMethods;->setup()V

    .line 75
    :cond_0
    :try_start_0
    sget-object v1, Lnet/opencoding/console/NativeMethods;->_unityPlayerActivityField:Ljava/lang/reflect/Field;

    sget-object v2, Lnet/opencoding/console/NativeMethods;->_unityPlayerClass:Ljava/lang/Class;

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    const-string v2, "Something has gone terribly wrong. The Unity Activity does not exist. This could be due to a low memory situation"

    .line 78
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error getting currentActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static runSafelyOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-static {p0, v0}, Lnet/opencoding/console/NativeMethods;->runSafelyOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method private static runSafelyOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-static {}, Lnet/opencoding/console/NativeMethods;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lnet/opencoding/console/NativeMethods$2;

    invoke-direct {v0, p0}, Lnet/opencoding/console/NativeMethods$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static setup()V
    .locals 4

    const-string v0, "OpencodingConsole"

    .line 50
    :try_start_0
    sget-object v1, Lnet/opencoding/console/NativeMethods;->_unityPlayerClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "com.unity3d.player.UnityPlayer"

    .line 52
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lnet/opencoding/console/NativeMethods;->_unityPlayerClass:Ljava/lang/Class;

    .line 53
    :cond_0
    sget-object v1, Lnet/opencoding/console/NativeMethods;->_unityPlayerActivityField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_1

    .line 54
    sget-object v1, Lnet/opencoding/console/NativeMethods;->_unityPlayerClass:Ljava/lang/Class;

    const-string v2, "currentActivity"

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lnet/opencoding/console/NativeMethods;->_unityPlayerActivityField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An unkown exception occurred locating getActivity(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not find currentActivity field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not find UnityPlayer class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
