.class public final enum Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;
.super Ljava/lang/Enum;
.source "AbsBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

.field public static final enum HEADSET_AVAILABLE:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

.field public static final enum HEADSET_UNAVAILABLE:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

.field public static final enum SCO_CONNECTED:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

.field public static final enum SCO_CONNECTING:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

.field public static final enum SCO_DISCONNECTING:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

.field public static final enum UNINITIALIZED:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 16
    new-instance v0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->UNINITIALIZED:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    .line 17
    new-instance v1, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    const-string v3, "HEADSET_UNAVAILABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->HEADSET_UNAVAILABLE:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    .line 18
    new-instance v3, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    const-string v5, "HEADSET_AVAILABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->HEADSET_AVAILABLE:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    .line 19
    new-instance v5, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    const-string v7, "SCO_DISCONNECTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->SCO_DISCONNECTING:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    .line 20
    new-instance v7, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    const-string v9, "SCO_CONNECTING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->SCO_CONNECTING:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    .line 21
    new-instance v9, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    const-string v11, "SCO_CONNECTED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->SCO_CONNECTED:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 15
    sput-object v11, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->$VALUES:[Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

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

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 15
    const-class v0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    return-object p0
.end method

.method public static values()[Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;
    .locals 1

    .line 15
    sget-object v0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->$VALUES:[Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    invoke-virtual {v0}, [Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    return-object v0
.end method
