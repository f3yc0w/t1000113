.class public final enum Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;
.super Ljava/lang/Enum;
.source "NERtcDistanceRolloffModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;

.field public static final enum kNERtcDistanceRolloffLinear:Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;

.field public static final enum kNERtcDistanceRolloffLogarithmic:Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;

.field public static final enum kNERtcDistanceRolloffNone:Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;

    const-string v1, "kNERtcDistanceRolloffLogarithmic"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;->kNERtcDistanceRolloffLogarithmic:Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;

    .line 14
    new-instance v1, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;

    const-string v3, "kNERtcDistanceRolloffLinear"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;->kNERtcDistanceRolloffLinear:Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;

    .line 18
    new-instance v3, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;

    const-string v5, "kNERtcDistanceRolloffNone"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;->kNERtcDistanceRolloffNone:Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3
    sput-object v5, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;->$VALUES:[Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;

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
    iput p3, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;
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
    const-class v0, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;
    .locals 1

    .line 3
    sget-object v0, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;->$VALUES:[Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;->type:I

    return v0
.end method
