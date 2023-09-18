.class public final enum Lnet/aihelp/core/util/crash/AIHelpCrashHandler;
.super Ljava/lang/Enum;
.source "AIHelpCrashHandler.java"

# interfaces
.implements Lnet/aihelp/core/util/crash/OnExceptionCaughtListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/core/util/crash/AIHelpCrashHandler;",
        ">;",
        "Lnet/aihelp/core/util/crash/OnExceptionCaughtListener;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/core/util/crash/AIHelpCrashHandler;

.field private static final AIHELP_PACKAGE_NAME:Ljava/lang/CharSequence;

.field public static final enum INSTANCE:Lnet/aihelp/core/util/crash/AIHelpCrashHandler;

.field private static sInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lnet/aihelp/core/util/crash/AIHelpCrashHandler;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/core/util/crash/AIHelpCrashHandler;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/core/util/crash/AIHelpCrashHandler;->INSTANCE:Lnet/aihelp/core/util/crash/AIHelpCrashHandler;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/aihelp/core/util/crash/AIHelpCrashHandler;

    aput-object v0, v1, v2

    .line 14
    sput-object v1, Lnet/aihelp/core/util/crash/AIHelpCrashHandler;->$VALUES:[Lnet/aihelp/core/util/crash/AIHelpCrashHandler;

    const-string v0, "net.aihelp"

    .line 18
    sput-object v0, Lnet/aihelp/core/util/crash/AIHelpCrashHandler;->AIHELP_PACKAGE_NAME:Ljava/lang/CharSequence;

    .line 19
    sput-boolean v2, Lnet/aihelp/core/util/crash/AIHelpCrashHandler;->sInstalled:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Throwable;)Z
    .locals 0

    .line 14
    invoke-static {p0}, Lnet/aihelp/core/util/crash/AIHelpCrashHandler;->isCrashedByAIHelp(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method private static isCrashedByAIHelp(Ljava/lang/Throwable;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 58
    :cond_0
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 59
    sget-object v0, Lnet/aihelp/core/util/crash/AIHelpCrashHandler;->AIHELP_PACKAGE_NAME:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private throwChoreographerException(Ljava/lang/Throwable;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 67
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 68
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_3

    .line 69
    array-length v3, p1

    sub-int/2addr v3, v1

    const/16 v4, 0x14

    if-le v3, v4, :cond_1

    return v0

    .line 72
    :cond_1
    aget-object v3, p1, v1

    .line 73
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.view.Choreographer"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Choreographer.java"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 75
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "doFrame"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/core/util/crash/AIHelpCrashHandler;
    .locals 1

    .line 14
    const-class v0, Lnet/aihelp/core/util/crash/AIHelpCrashHandler;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/core/util/crash/AIHelpCrashHandler;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/core/util/crash/AIHelpCrashHandler;
    .locals 1

    .line 14
    sget-object v0, Lnet/aihelp/core/util/crash/AIHelpCrashHandler;->$VALUES:[Lnet/aihelp/core/util/crash/AIHelpCrashHandler;

    invoke-virtual {v0}, [Lnet/aihelp/core/util/crash/AIHelpCrashHandler;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/core/util/crash/AIHelpCrashHandler;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    .line 22
    sget-boolean v0, Lnet/aihelp/core/util/crash/AIHelpCrashHandler;->sInstalled:Z

    if-eqz v0, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 24
    new-instance v1, Lnet/aihelp/core/util/crash/AIHelpCrashHandler$1;

    invoke-direct {v1, p0, p1, v0}, Lnet/aihelp/core/util/crash/AIHelpCrashHandler$1;-><init>(Lnet/aihelp/core/util/crash/AIHelpCrashHandler;Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 p1, 0x1

    .line 35
    sput-boolean p1, Lnet/aihelp/core/util/crash/AIHelpCrashHandler;->sInstalled:Z

    return-void
.end method

.method public onExceptionCaught(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 0

    .line 40
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lnet/aihelp/core/util/logger/AIHelpLogger;->fatal(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p2

    if-ne p1, p2, :cond_1

    .line 44
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    invoke-direct {p0, p1}, Lnet/aihelp/core/util/crash/AIHelpCrashHandler;->throwChoreographerException(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lnet/aihelp/core/util/logger/AIHelpLogger;->fatal(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
