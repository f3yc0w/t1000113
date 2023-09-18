.class public final enum Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;
.super Ljava/lang/Enum;
.source "VideoFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/VideoFrame$Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BufferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

.field public static final enum kBufferTypeI420:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

.field public static final enum kBufferTypeNV12:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

.field public static final enum kBufferTypeNV21:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

.field public static final enum kBufferTypeTexture:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

.field public static final enum kBufferTypeWrapTexture:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 81
    new-instance v0, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    const-string v1, "kBufferTypeTexture"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;->kBufferTypeTexture:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    .line 82
    new-instance v1, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    const-string v3, "kBufferTypeI420"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;->kBufferTypeI420:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    .line 83
    new-instance v3, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    const-string v5, "kBufferTypeNV12"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;->kBufferTypeNV12:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    .line 84
    new-instance v5, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    const-string v7, "kBufferTypeNV21"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;->kBufferTypeNV21:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    .line 85
    new-instance v7, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    const-string v9, "kBufferTypeWrapTexture"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;->kBufferTypeWrapTexture:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 80
    sput-object v9, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;->$VALUES:[Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;
    .locals 1

    .line 80
    const-class v0, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;
    .locals 1

    .line 80
    sget-object v0, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;->$VALUES:[Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    invoke-virtual {v0}, [Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    return-object v0
.end method
