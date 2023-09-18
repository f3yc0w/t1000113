.class public final enum Lcom/netease/lava/webrtc/Logging$Severity;
.super Ljava/lang/Enum;
.source "Logging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/Logging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Severity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/webrtc/Logging$Severity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/webrtc/Logging$Severity;

.field public static final enum LS_DETAIL_INFO:Lcom/netease/lava/webrtc/Logging$Severity;

.field public static final enum LS_ERROR:Lcom/netease/lava/webrtc/Logging$Severity;

.field public static final enum LS_INFO:Lcom/netease/lava/webrtc/Logging$Severity;

.field public static final enum LS_NONE:Lcom/netease/lava/webrtc/Logging$Severity;

.field public static final enum LS_SENSITIVE:Lcom/netease/lava/webrtc/Logging$Severity;

.field public static final enum LS_VERBOSE:Lcom/netease/lava/webrtc/Logging$Severity;

.field public static final enum LS_WARNING:Lcom/netease/lava/webrtc/Logging$Severity;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 91
    new-instance v0, Lcom/netease/lava/webrtc/Logging$Severity;

    const-string v1, "LS_SENSITIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/webrtc/Logging$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/webrtc/Logging$Severity;->LS_SENSITIVE:Lcom/netease/lava/webrtc/Logging$Severity;

    new-instance v1, Lcom/netease/lava/webrtc/Logging$Severity;

    const-string v3, "LS_VERBOSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/webrtc/Logging$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/webrtc/Logging$Severity;->LS_VERBOSE:Lcom/netease/lava/webrtc/Logging$Severity;

    new-instance v3, Lcom/netease/lava/webrtc/Logging$Severity;

    const-string v5, "LS_DETAIL_INFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/lava/webrtc/Logging$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/lava/webrtc/Logging$Severity;->LS_DETAIL_INFO:Lcom/netease/lava/webrtc/Logging$Severity;

    new-instance v5, Lcom/netease/lava/webrtc/Logging$Severity;

    const-string v7, "LS_INFO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/netease/lava/webrtc/Logging$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/netease/lava/webrtc/Logging$Severity;->LS_INFO:Lcom/netease/lava/webrtc/Logging$Severity;

    new-instance v7, Lcom/netease/lava/webrtc/Logging$Severity;

    const-string v9, "LS_WARNING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/netease/lava/webrtc/Logging$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/netease/lava/webrtc/Logging$Severity;->LS_WARNING:Lcom/netease/lava/webrtc/Logging$Severity;

    new-instance v9, Lcom/netease/lava/webrtc/Logging$Severity;

    const-string v11, "LS_ERROR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/netease/lava/webrtc/Logging$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/netease/lava/webrtc/Logging$Severity;->LS_ERROR:Lcom/netease/lava/webrtc/Logging$Severity;

    new-instance v11, Lcom/netease/lava/webrtc/Logging$Severity;

    const-string v13, "LS_NONE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/netease/lava/webrtc/Logging$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/netease/lava/webrtc/Logging$Severity;->LS_NONE:Lcom/netease/lava/webrtc/Logging$Severity;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/netease/lava/webrtc/Logging$Severity;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/netease/lava/webrtc/Logging$Severity;->$VALUES:[Lcom/netease/lava/webrtc/Logging$Severity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/webrtc/Logging$Severity;
    .locals 1

    .line 91
    const-class v0, Lcom/netease/lava/webrtc/Logging$Severity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/webrtc/Logging$Severity;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/webrtc/Logging$Severity;
    .locals 1

    .line 91
    sget-object v0, Lcom/netease/lava/webrtc/Logging$Severity;->$VALUES:[Lcom/netease/lava/webrtc/Logging$Severity;

    invoke-virtual {v0}, [Lcom/netease/lava/webrtc/Logging$Severity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/webrtc/Logging$Severity;

    return-object v0
.end method
