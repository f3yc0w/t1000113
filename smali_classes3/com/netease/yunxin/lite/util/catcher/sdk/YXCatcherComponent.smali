.class public Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;
.super Ljava/lang/Object;
.source "YXCatcherComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashCallback;,
        Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashHandler;,
        Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$LogCallback;,
        Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;
    }
.end annotation


# instance fields
.field private autoDeleteCrashLog:Z

.field private context:Landroid/content/Context;

.field private crashCallback:Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashCallback;

.field private crashHandler:Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashHandler;

.field private crashLogHeader:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private crashTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private logDir:Ljava/lang/String;

.field private sdkType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "sdkType",
            "crashTags",
            "crashCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashCallback;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->crashLogHeader:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->autoDeleteCrashLog:Z

    .line 30
    iput-object p1, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->sdkType:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->crashTags:Ljava/util/ArrayList;

    .line 33
    iput-object p4, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->crashCallback:Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashCallback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashCallback;Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashCallback;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "sdkType",
            "crashTags",
            "crashHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashHandler;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->crashLogHeader:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->autoDeleteCrashLog:Z

    .line 23
    iput-object p1, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->sdkType:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->crashTags:Ljava/util/ArrayList;

    .line 26
    iput-object p4, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->crashHandler:Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashHandler;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashHandler;Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashHandler;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;Ljava/util/HashMap;)Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->crashLogHeader(Ljava/util/HashMap;)Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;Z)Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->autoDeleteCrashLog(Z)Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;Ljava/lang/String;)Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->logDir(Ljava/lang/String;)Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;

    move-result-object p0

    return-object p0
.end method

.method private autoDeleteCrashLog(Z)Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoDeleteCrashLog"
        }
    .end annotation

    .line 50
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->autoDeleteCrashLog:Z

    return-object p0
.end method

.method private crashLogHeader(Ljava/util/HashMap;)Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crashLogHeader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->crashLogHeader:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method private logDir(Ljava/lang/String;)Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logDir"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->logDir:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCrashCallback()Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashCallback;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->crashCallback:Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashCallback;

    return-object v0
.end method

.method public getCrashHandler()Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashHandler;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->crashHandler:Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashHandler;

    return-object v0
.end method

.method public getCrashLogHeader()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->crashLogHeader:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCrashTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->crashTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLogDir()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->logDir:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkType()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->sdkType:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoDeleteCrashLog()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->autoDeleteCrashLog:Z

    return v0
.end method
