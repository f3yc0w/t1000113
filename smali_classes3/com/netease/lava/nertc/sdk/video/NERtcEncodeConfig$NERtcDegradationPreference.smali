.class public final enum Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;
.super Ljava/lang/Enum;
.source "NERtcEncodeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NERtcDegradationPreference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

.field public static final enum DEGRADATION_BALANCED:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

.field public static final enum DEGRADATION_DEFAULT:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

.field public static final enum DEGRADATION_MAINTAIN_FRAMERATE:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

.field public static final enum DEGRADATION_MAINTAIN_QUALITY:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 42
    new-instance v0, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    const-string v1, "DEGRADATION_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;->DEGRADATION_DEFAULT:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    .line 51
    new-instance v1, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    const-string v3, "DEGRADATION_MAINTAIN_FRAMERATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;->DEGRADATION_MAINTAIN_FRAMERATE:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    .line 61
    new-instance v3, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    const-string v5, "DEGRADATION_MAINTAIN_QUALITY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;->DEGRADATION_MAINTAIN_QUALITY:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    .line 71
    new-instance v5, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    const-string v7, "DEGRADATION_BALANCED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;->DEGRADATION_BALANCED:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 28
    sput-object v7, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;->$VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

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

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 28
    const-class v0, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;
    .locals 1

    .line 28
    sget-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;->$VALUES:[Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    return-object v0
.end method
