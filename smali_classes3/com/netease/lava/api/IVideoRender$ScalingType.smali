.class public final enum Lcom/netease/lava/api/IVideoRender$ScalingType;
.super Ljava/lang/Enum;
.source "IVideoRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/api/IVideoRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScalingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/api/IVideoRender$ScalingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/api/IVideoRender$ScalingType;

.field public static final enum SCALE_ASPECT_BALANCED:Lcom/netease/lava/api/IVideoRender$ScalingType;

.field public static final enum SCALE_ASPECT_FILL:Lcom/netease/lava/api/IVideoRender$ScalingType;

.field public static final enum SCALE_ASPECT_FIT:Lcom/netease/lava/api/IVideoRender$ScalingType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 19
    new-instance v0, Lcom/netease/lava/api/IVideoRender$ScalingType;

    const-string v1, "SCALE_ASPECT_FIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/api/IVideoRender$ScalingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/api/IVideoRender$ScalingType;->SCALE_ASPECT_FIT:Lcom/netease/lava/api/IVideoRender$ScalingType;

    new-instance v1, Lcom/netease/lava/api/IVideoRender$ScalingType;

    const-string v3, "SCALE_ASPECT_FILL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/api/IVideoRender$ScalingType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/api/IVideoRender$ScalingType;->SCALE_ASPECT_FILL:Lcom/netease/lava/api/IVideoRender$ScalingType;

    new-instance v3, Lcom/netease/lava/api/IVideoRender$ScalingType;

    const-string v5, "SCALE_ASPECT_BALANCED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/lava/api/IVideoRender$ScalingType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/lava/api/IVideoRender$ScalingType;->SCALE_ASPECT_BALANCED:Lcom/netease/lava/api/IVideoRender$ScalingType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/netease/lava/api/IVideoRender$ScalingType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 18
    sput-object v5, Lcom/netease/lava/api/IVideoRender$ScalingType;->$VALUES:[Lcom/netease/lava/api/IVideoRender$ScalingType;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/api/IVideoRender$ScalingType;
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
    const-class v0, Lcom/netease/lava/api/IVideoRender$ScalingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/api/IVideoRender$ScalingType;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/api/IVideoRender$ScalingType;
    .locals 1

    .line 18
    sget-object v0, Lcom/netease/lava/api/IVideoRender$ScalingType;->$VALUES:[Lcom/netease/lava/api/IVideoRender$ScalingType;

    invoke-virtual {v0}, [Lcom/netease/lava/api/IVideoRender$ScalingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/api/IVideoRender$ScalingType;

    return-object v0
.end method
