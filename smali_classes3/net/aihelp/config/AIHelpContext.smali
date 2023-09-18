.class public Lnet/aihelp/config/AIHelpContext;
.super Ljava/lang/Object;
.source "AIHelpContext.java"


# static fields
.field private static INSTANCE:Lnet/aihelp/config/AIHelpContext;

.field private static final lock:Ljava/lang/Object;

.field public static successfullyInit:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/aihelp/config/AIHelpContext;->lock:Ljava/lang/Object;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lnet/aihelp/config/AIHelpContext;->successfullyInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createContextWithLocale(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 3

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 53
    invoke-static {p1}, Lnet/aihelp/utils/LocaleUtil;->getCurrentLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 56
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 57
    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    .line 61
    :cond_0
    iput-object p1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 62
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1
    return-object p0
.end method

.method public static getInstance()Lnet/aihelp/config/AIHelpContext;
    .locals 2

    .line 31
    sget-object v0, Lnet/aihelp/config/AIHelpContext;->INSTANCE:Lnet/aihelp/config/AIHelpContext;

    if-nez v0, :cond_1

    .line 32
    sget-object v0, Lnet/aihelp/config/AIHelpContext;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lnet/aihelp/config/AIHelpContext;->INSTANCE:Lnet/aihelp/config/AIHelpContext;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lnet/aihelp/config/AIHelpContext;

    invoke-direct {v1}, Lnet/aihelp/config/AIHelpContext;-><init>()V

    sput-object v1, Lnet/aihelp/config/AIHelpContext;->INSTANCE:Lnet/aihelp/config/AIHelpContext;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 38
    :cond_1
    :goto_0
    sget-object v0, Lnet/aihelp/config/AIHelpContext;->INSTANCE:Lnet/aihelp/config/AIHelpContext;

    return-object v0
.end method

.method public static getLocaleUpdatedContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 3

    .line 70
    invoke-static {p1}, Lnet/aihelp/utils/LocaleUtil;->getCurrentLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 73
    iput-object p1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 74
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-object p0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 48
    iget-object v0, p0, Lnet/aihelp/config/AIHelpContext;->context:Landroid/content/Context;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 42
    sget-object v0, Lnet/aihelp/config/AIHelpContext;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_0
    iput-object p1, p0, Lnet/aihelp/config/AIHelpContext;->context:Landroid/content/Context;

    .line 44
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
