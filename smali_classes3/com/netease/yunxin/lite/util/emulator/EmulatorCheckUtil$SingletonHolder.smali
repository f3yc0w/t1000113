.class Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$SingletonHolder;
.super Ljava/lang/Object;
.source "EmulatorCheckUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;-><init>(Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$1;)V

    sput-object v0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$SingletonHolder;->INSTANCE:Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;
    .locals 1

    .line 40
    sget-object v0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$SingletonHolder;->INSTANCE:Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;

    return-object v0
.end method
