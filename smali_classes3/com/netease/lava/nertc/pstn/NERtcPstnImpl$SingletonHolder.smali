.class Lcom/netease/lava/nertc/pstn/NERtcPstnImpl$SingletonHolder;
.super Ljava/lang/Object;
.source "NERtcPstnImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static instance:Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;-><init>(Lcom/netease/lava/nertc/pstn/NERtcPstnImpl$1;)V

    sput-object v0, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl$SingletonHolder;->instance:Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
