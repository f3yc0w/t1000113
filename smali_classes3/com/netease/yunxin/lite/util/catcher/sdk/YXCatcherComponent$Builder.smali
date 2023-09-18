.class public Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;
.super Ljava/lang/Object;
.source "YXCatcherComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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

.field private logCallback:Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$LogCallback;

.field private logDir:Ljava/lang/String;

.field private sdkType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashCallback;)V
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

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->autoDeleteCrashLog:Z

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->context:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->sdkType:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->crashTags:Ljava/util/ArrayList;

    .line 125
    iput-object p4, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->crashCallback:Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashHandler;)V
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

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->autoDeleteCrashLog:Z

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->context:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->sdkType:Ljava/lang/String;

    .line 110
    iput-object p3, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->crashTags:Ljava/util/ArrayList;

    .line 111
    iput-object p4, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->crashHandler:Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashHandler;

    return-void
.end method


# virtual methods
.method public autoDeleteCrashLog(Z)Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoDeleteCrashLog"
        }
    .end annotation

    .line 150
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->autoDeleteCrashLog:Z

    return-object p0
.end method

.method public build()Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;
    .locals 7

    .line 166
    iget-object v4, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->crashCallback:Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashCallback;

    if-eqz v4, :cond_0

    .line 167
    new-instance v6, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;

    iget-object v1, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->sdkType:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->crashTags:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashCallback;Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$1;)V

    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->crashLogHeader:Ljava/util/HashMap;

    .line 168
    invoke-static {v6, v0}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->access$100(Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;Ljava/util/HashMap;)Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->autoDeleteCrashLog:Z

    .line 169
    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->access$200(Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;Z)Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->logDir:Ljava/lang/String;

    .line 170
    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->access$300(Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;Ljava/lang/String;)Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;

    move-result-object v0

    return-object v0

    .line 173
    :cond_0
    new-instance v0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;

    iget-object v2, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->sdkType:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->crashTags:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->crashHandler:Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashHandler;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashHandler;Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$1;)V

    iget-object v1, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->crashLogHeader:Ljava/util/HashMap;

    .line 174
    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->access$100(Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;Ljava/util/HashMap;)Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->autoDeleteCrashLog:Z

    .line 175
    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->access$200(Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;Z)Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->logDir:Ljava/lang/String;

    .line 176
    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->access$300(Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;Ljava/lang/String;)Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;

    move-result-object v0

    return-object v0
.end method

.method public crashLogHeader(Ljava/util/HashMap;)Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;
    .locals 0
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
            "Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->crashLogHeader:Ljava/util/HashMap;

    return-object p0
.end method

.method public logDir(Ljava/lang/String;)Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logDir"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$Builder;->logDir:Ljava/lang/String;

    return-object p0
.end method
