.class Lcom/netease/lava/nertc/impl/NERtcCore$SingletonHolder;
.super Ljava/lang/Object;
.source "NERtcCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/impl/NERtcCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static instance:Lcom/netease/lava/nertc/impl/NERtcCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2317
    new-instance v0, Lcom/netease/lava/nertc/impl/NERtcCore;

    invoke-direct {v0}, Lcom/netease/lava/nertc/impl/NERtcCore;-><init>()V

    sput-object v0, Lcom/netease/lava/nertc/impl/NERtcCore$SingletonHolder;->instance:Lcom/netease/lava/nertc/impl/NERtcCore;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
