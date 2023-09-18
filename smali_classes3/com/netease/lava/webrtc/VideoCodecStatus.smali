.class public final enum Lcom/netease/lava/webrtc/VideoCodecStatus;
.super Ljava/lang/Enum;
.source "VideoCodecStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/webrtc/VideoCodecStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/webrtc/VideoCodecStatus;

.field public static final enum ERROR:Lcom/netease/lava/webrtc/VideoCodecStatus;

.field public static final enum ERR_PARAMETER:Lcom/netease/lava/webrtc/VideoCodecStatus;

.field public static final enum ERR_REQUEST_SLI:Lcom/netease/lava/webrtc/VideoCodecStatus;

.field public static final enum ERR_SIZE:Lcom/netease/lava/webrtc/VideoCodecStatus;

.field public static final enum FALLBACK_SOFTWARE:Lcom/netease/lava/webrtc/VideoCodecStatus;

.field public static final enum LEVEL_EXCEEDED:Lcom/netease/lava/webrtc/VideoCodecStatus;

.field public static final enum MEMORY:Lcom/netease/lava/webrtc/VideoCodecStatus;

.field public static final enum NO_OUTPUT:Lcom/netease/lava/webrtc/VideoCodecStatus;

.field public static final enum OK:Lcom/netease/lava/webrtc/VideoCodecStatus;

.field public static final enum REQUEST_SLI:Lcom/netease/lava/webrtc/VideoCodecStatus;

.field public static final enum TARGET_BITRATE_OVERSHOOT:Lcom/netease/lava/webrtc/VideoCodecStatus;

.field public static final enum TIMEOUT:Lcom/netease/lava/webrtc/VideoCodecStatus;

.field public static final enum UNINITIALIZED:Lcom/netease/lava/webrtc/VideoCodecStatus;


# instance fields
.field private final number:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 18
    new-instance v0, Lcom/netease/lava/webrtc/VideoCodecStatus;

    const-string v1, "REQUEST_SLI"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/lava/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/lava/webrtc/VideoCodecStatus;->REQUEST_SLI:Lcom/netease/lava/webrtc/VideoCodecStatus;

    .line 19
    new-instance v1, Lcom/netease/lava/webrtc/VideoCodecStatus;

    const-string v4, "NO_OUTPUT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5}, Lcom/netease/lava/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netease/lava/webrtc/VideoCodecStatus;->NO_OUTPUT:Lcom/netease/lava/webrtc/VideoCodecStatus;

    .line 20
    new-instance v4, Lcom/netease/lava/webrtc/VideoCodecStatus;

    const-string v6, "OK"

    invoke-direct {v4, v6, v3, v2}, Lcom/netease/lava/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/netease/lava/webrtc/VideoCodecStatus;->OK:Lcom/netease/lava/webrtc/VideoCodecStatus;

    .line 21
    new-instance v6, Lcom/netease/lava/webrtc/VideoCodecStatus;

    const-string v7, "ERROR"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v6, v7, v8, v9}, Lcom/netease/lava/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/netease/lava/webrtc/VideoCodecStatus;->ERROR:Lcom/netease/lava/webrtc/VideoCodecStatus;

    .line 22
    new-instance v7, Lcom/netease/lava/webrtc/VideoCodecStatus;

    const-string v9, "LEVEL_EXCEEDED"

    const/4 v10, 0x4

    const/4 v11, -0x2

    invoke-direct {v7, v9, v10, v11}, Lcom/netease/lava/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/netease/lava/webrtc/VideoCodecStatus;->LEVEL_EXCEEDED:Lcom/netease/lava/webrtc/VideoCodecStatus;

    .line 23
    new-instance v9, Lcom/netease/lava/webrtc/VideoCodecStatus;

    const-string v11, "MEMORY"

    const/4 v12, 0x5

    const/4 v13, -0x3

    invoke-direct {v9, v11, v12, v13}, Lcom/netease/lava/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/netease/lava/webrtc/VideoCodecStatus;->MEMORY:Lcom/netease/lava/webrtc/VideoCodecStatus;

    .line 24
    new-instance v11, Lcom/netease/lava/webrtc/VideoCodecStatus;

    const-string v13, "ERR_PARAMETER"

    const/4 v14, 0x6

    const/4 v15, -0x4

    invoke-direct {v11, v13, v14, v15}, Lcom/netease/lava/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/netease/lava/webrtc/VideoCodecStatus;->ERR_PARAMETER:Lcom/netease/lava/webrtc/VideoCodecStatus;

    .line 25
    new-instance v13, Lcom/netease/lava/webrtc/VideoCodecStatus;

    const-string v15, "ERR_SIZE"

    const/4 v14, 0x7

    const/4 v12, -0x5

    invoke-direct {v13, v15, v14, v12}, Lcom/netease/lava/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/netease/lava/webrtc/VideoCodecStatus;->ERR_SIZE:Lcom/netease/lava/webrtc/VideoCodecStatus;

    .line 26
    new-instance v12, Lcom/netease/lava/webrtc/VideoCodecStatus;

    const-string v15, "TIMEOUT"

    const/16 v14, 0x8

    const/4 v10, -0x6

    invoke-direct {v12, v15, v14, v10}, Lcom/netease/lava/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/netease/lava/webrtc/VideoCodecStatus;->TIMEOUT:Lcom/netease/lava/webrtc/VideoCodecStatus;

    .line 27
    new-instance v10, Lcom/netease/lava/webrtc/VideoCodecStatus;

    const-string v15, "UNINITIALIZED"

    const/16 v14, 0x9

    const/4 v8, -0x7

    invoke-direct {v10, v15, v14, v8}, Lcom/netease/lava/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/netease/lava/webrtc/VideoCodecStatus;->UNINITIALIZED:Lcom/netease/lava/webrtc/VideoCodecStatus;

    .line 28
    new-instance v8, Lcom/netease/lava/webrtc/VideoCodecStatus;

    const-string v15, "ERR_REQUEST_SLI"

    const/16 v14, 0xa

    const/16 v3, -0xc

    invoke-direct {v8, v15, v14, v3}, Lcom/netease/lava/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/netease/lava/webrtc/VideoCodecStatus;->ERR_REQUEST_SLI:Lcom/netease/lava/webrtc/VideoCodecStatus;

    .line 29
    new-instance v3, Lcom/netease/lava/webrtc/VideoCodecStatus;

    const-string v15, "FALLBACK_SOFTWARE"

    const/16 v14, 0xb

    const/16 v5, -0xd

    invoke-direct {v3, v15, v14, v5}, Lcom/netease/lava/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/netease/lava/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/netease/lava/webrtc/VideoCodecStatus;

    .line 30
    new-instance v5, Lcom/netease/lava/webrtc/VideoCodecStatus;

    const-string v15, "TARGET_BITRATE_OVERSHOOT"

    const/16 v14, 0xc

    const/16 v2, -0xe

    invoke-direct {v5, v15, v14, v2}, Lcom/netease/lava/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/netease/lava/webrtc/VideoCodecStatus;->TARGET_BITRATE_OVERSHOOT:Lcom/netease/lava/webrtc/VideoCodecStatus;

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/netease/lava/webrtc/VideoCodecStatus;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v3, v2, v0

    aput-object v5, v2, v14

    .line 17
    sput-object v2, Lcom/netease/lava/webrtc/VideoCodecStatus;->$VALUES:[Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/netease/lava/webrtc/VideoCodecStatus;->number:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 1

    .line 17
    const-class v0, Lcom/netease/lava/webrtc/VideoCodecStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 1

    .line 17
    sget-object v0, Lcom/netease/lava/webrtc/VideoCodecStatus;->$VALUES:[Lcom/netease/lava/webrtc/VideoCodecStatus;

    invoke-virtual {v0}, [Lcom/netease/lava/webrtc/VideoCodecStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/netease/lava/webrtc/VideoCodecStatus;->number:I

    return v0
.end method
