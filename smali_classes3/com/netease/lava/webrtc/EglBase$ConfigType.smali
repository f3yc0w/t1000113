.class public final enum Lcom/netease/lava/webrtc/EglBase$ConfigType;
.super Ljava/lang/Enum;
.source "EglBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/EglBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/webrtc/EglBase$ConfigType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/webrtc/EglBase$ConfigType;

.field public static final enum kConfigType_PIXEL_BUFFER:Lcom/netease/lava/webrtc/EglBase$ConfigType;

.field public static final enum kConfigType_PIXEL_RGBA_BUFFER:Lcom/netease/lava/webrtc/EglBase$ConfigType;

.field public static final enum kConfigType_PLAIN:Lcom/netease/lava/webrtc/EglBase$ConfigType;

.field public static final enum kConfigType_RECORDABLE:Lcom/netease/lava/webrtc/EglBase$ConfigType;

.field public static final enum kConfigType_RGBA:Lcom/netease/lava/webrtc/EglBase$ConfigType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 172
    new-instance v0, Lcom/netease/lava/webrtc/EglBase$ConfigType;

    const-string v1, "kConfigType_PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/webrtc/EglBase$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/webrtc/EglBase$ConfigType;->kConfigType_PLAIN:Lcom/netease/lava/webrtc/EglBase$ConfigType;

    .line 173
    new-instance v1, Lcom/netease/lava/webrtc/EglBase$ConfigType;

    const-string v3, "kConfigType_RGBA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/webrtc/EglBase$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/webrtc/EglBase$ConfigType;->kConfigType_RGBA:Lcom/netease/lava/webrtc/EglBase$ConfigType;

    .line 174
    new-instance v3, Lcom/netease/lava/webrtc/EglBase$ConfigType;

    const-string v5, "kConfigType_PIXEL_BUFFER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/lava/webrtc/EglBase$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/lava/webrtc/EglBase$ConfigType;->kConfigType_PIXEL_BUFFER:Lcom/netease/lava/webrtc/EglBase$ConfigType;

    .line 175
    new-instance v5, Lcom/netease/lava/webrtc/EglBase$ConfigType;

    const-string v7, "kConfigType_PIXEL_RGBA_BUFFER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/netease/lava/webrtc/EglBase$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/netease/lava/webrtc/EglBase$ConfigType;->kConfigType_PIXEL_RGBA_BUFFER:Lcom/netease/lava/webrtc/EglBase$ConfigType;

    .line 176
    new-instance v7, Lcom/netease/lava/webrtc/EglBase$ConfigType;

    const-string v9, "kConfigType_RECORDABLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/netease/lava/webrtc/EglBase$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/netease/lava/webrtc/EglBase$ConfigType;->kConfigType_RECORDABLE:Lcom/netease/lava/webrtc/EglBase$ConfigType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/netease/lava/webrtc/EglBase$ConfigType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 171
    sput-object v9, Lcom/netease/lava/webrtc/EglBase$ConfigType;->$VALUES:[Lcom/netease/lava/webrtc/EglBase$ConfigType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/webrtc/EglBase$ConfigType;
    .locals 1

    .line 171
    const-class v0, Lcom/netease/lava/webrtc/EglBase$ConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/webrtc/EglBase$ConfigType;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/webrtc/EglBase$ConfigType;
    .locals 1

    .line 171
    sget-object v0, Lcom/netease/lava/webrtc/EglBase$ConfigType;->$VALUES:[Lcom/netease/lava/webrtc/EglBase$ConfigType;

    invoke-virtual {v0}, [Lcom/netease/lava/webrtc/EglBase$ConfigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/webrtc/EglBase$ConfigType;

    return-object v0
.end method
