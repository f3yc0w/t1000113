.class public Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;
.super Ljava/lang/Object;
.source "ForegroundKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/foreground/ForegroundKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public LargeIcon:I

.field public content:Ljava/lang/String;

.field public icon:I

.field public pendIntent:Landroid/content/Intent;

.field public remoteViews:Landroid/widget/RemoteViews;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 80
    iput v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;->icon:I

    .line 81
    iput v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit$Config;->LargeIcon:I

    return-void
.end method
