.class Lcom/netease/yunxin/lite/util/emulator/CommandUtil$SingletonHolder;
.super Ljava/lang/Object;
.source "CommandUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/util/emulator/CommandUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/netease/yunxin/lite/util/emulator/CommandUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/netease/yunxin/lite/util/emulator/CommandUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/yunxin/lite/util/emulator/CommandUtil;-><init>(Lcom/netease/yunxin/lite/util/emulator/CommandUtil$1;)V

    sput-object v0, Lcom/netease/yunxin/lite/util/emulator/CommandUtil$SingletonHolder;->INSTANCE:Lcom/netease/yunxin/lite/util/emulator/CommandUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/netease/yunxin/lite/util/emulator/CommandUtil;
    .locals 1

    .line 12
    sget-object v0, Lcom/netease/yunxin/lite/util/emulator/CommandUtil$SingletonHolder;->INSTANCE:Lcom/netease/yunxin/lite/util/emulator/CommandUtil;

    return-object v0
.end method
