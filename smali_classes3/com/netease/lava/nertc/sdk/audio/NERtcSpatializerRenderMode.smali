.class public final enum Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;
.super Ljava/lang/Enum;
.source "NERtcSpatializerRenderMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

.field public static final enum kNERtcSpatializerRenderBinauralHighQuality:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

.field public static final enum kNERtcSpatializerRenderBinauralLowQuality:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

.field public static final enum kNERtcSpatializerRenderBinauralMediumQuality:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

.field public static final enum kNERtcSpatializerRenderRoomEffectsOnly:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

.field public static final enum kNERtcSpatializerRenderStereoPanning:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 7
    new-instance v0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

    const-string v1, "kNERtcSpatializerRenderStereoPanning"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;->kNERtcSpatializerRenderStereoPanning:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

    .line 11
    new-instance v1, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

    const-string v3, "kNERtcSpatializerRenderBinauralLowQuality"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;->kNERtcSpatializerRenderBinauralLowQuality:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

    .line 15
    new-instance v3, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

    const-string v5, "kNERtcSpatializerRenderBinauralMediumQuality"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;->kNERtcSpatializerRenderBinauralMediumQuality:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

    .line 19
    new-instance v5, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

    const-string v7, "kNERtcSpatializerRenderBinauralHighQuality"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;->kNERtcSpatializerRenderBinauralHighQuality:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

    .line 23
    new-instance v7, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

    const-string v9, "kNERtcSpatializerRenderRoomEffectsOnly"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;->kNERtcSpatializerRenderRoomEffectsOnly:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 3
    sput-object v9, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;->$VALUES:[Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 3
    const-class v0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;
    .locals 1

    .line 3
    sget-object v0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;->$VALUES:[Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;->type:I

    return v0
.end method
