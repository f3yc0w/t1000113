.class public final enum Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;
.super Ljava/lang/Enum;
.source "VideoFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

.field public static final enum kTextureTypeOES:Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

.field public static final enum kTextureTypeRGB:Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

.field public static final enum kTextureTypeYUV:Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 158
    new-instance v0, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    const-string v1, "kTextureTypeOES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;->kTextureTypeOES:Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    .line 159
    new-instance v1, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    const-string v3, "kTextureTypeRGB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;->kTextureTypeRGB:Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    .line 160
    new-instance v3, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    const-string v5, "kTextureTypeYUV"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;->kTextureTypeYUV:Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 157
    sput-object v5, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;->$VALUES:[Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 157
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;
    .locals 1

    .line 157
    const-class v0, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;
    .locals 1

    .line 157
    sget-object v0, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;->$VALUES:[Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    invoke-virtual {v0}, [Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    return-object v0
.end method
