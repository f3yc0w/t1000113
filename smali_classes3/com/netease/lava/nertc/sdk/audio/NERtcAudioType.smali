.class public final enum Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;
.super Ljava/lang/Enum;
.source "NERtcAudioType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;

.field public static final enum kAudioTypePCM16:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;

.field public static final enum kAudioTypeUnknown:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;

    const-string v1, "kAudioTypeUnknown"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;->kAudioTypeUnknown:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;

    .line 17
    new-instance v1, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;

    const-string v3, "kAudioTypePCM16"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;->kAudioTypePCM16:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 4
    sput-object v3, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;->$VALUES:[Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;->type:I

    return-void
.end method

.method public static find(I)Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;->values()[Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 34
    iget v4, v3, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;->type:I

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_1
    sget-object p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;->kAudioTypeUnknown:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 4
    const-class v0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;
    .locals 1

    .line 4
    sget-object v0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;->$VALUES:[Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;->type:I

    return v0
.end method
