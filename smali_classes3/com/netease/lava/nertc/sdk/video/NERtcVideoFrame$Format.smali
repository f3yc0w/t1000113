.class public final enum Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;
.super Ljava/lang/Enum;
.source "NERtcVideoFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

.field public static final enum I420:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

.field public static final enum NV21:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

.field public static final enum RGBA:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

.field public static final enum TEXTURE_OES:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

.field public static final enum TEXTURE_RGB:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 28
    new-instance v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    const-string v1, "I420"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->I420:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    .line 38
    new-instance v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    const-string v3, "NV21"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->NV21:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    .line 48
    new-instance v3, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    const-string v5, "RGBA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->RGBA:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    .line 58
    new-instance v5, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    const-string v7, "TEXTURE_OES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->TEXTURE_OES:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    .line 68
    new-instance v7, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    const-string v9, "TEXTURE_RGB"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->TEXTURE_RGB:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 18
    sput-object v9, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->$VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 18
    const-class v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;
    .locals 1

    .line 18
    sget-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->$VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    return-object v0
.end method
