.class Lnet/aihelp/core/net/mqtt/AIHelpMqtt$Holder;
.super Ljava/lang/Object;
.source "AIHelpMqtt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/AIHelpMqtt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lnet/aihelp/core/net/mqtt/AIHelpMqtt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 94
    new-instance v0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;-><init>(Lnet/aihelp/core/net/mqtt/AIHelpMqtt$1;)V

    sput-object v0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt$Holder;->INSTANCE:Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;
    .locals 1

    .line 93
    sget-object v0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt$Holder;->INSTANCE:Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    return-object v0
.end method
