.class public Lnet/aihelp/data/model/rpa/bot/SelfService;
.super Ljava/lang/Object;
.source "SelfService.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lnet/aihelp/data/model/rpa/bot/SelfService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final enableSend:Z

.field private final selfServiceData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lnet/aihelp/data/model/rpa/bot/SelfService$1;

    invoke-direct {v0}, Lnet/aihelp/data/model/rpa/bot/SelfService$1;-><init>()V

    sput-object v0, Lnet/aihelp/data/model/rpa/bot/SelfService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lnet/aihelp/data/model/rpa/bot/SelfService;->enableSend:Z

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/data/model/rpa/bot/SelfService;->selfServiceData:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lnet/aihelp/data/model/rpa/bot/SelfService;->enableSend:Z

    .line 13
    iput-object p2, p0, Lnet/aihelp/data/model/rpa/bot/SelfService;->selfServiceData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSelfServiceData()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/bot/SelfService;->selfServiceData:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableSend()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lnet/aihelp/data/model/rpa/bot/SelfService;->enableSend:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 48
    iget-boolean p2, p0, Lnet/aihelp/data/model/rpa/bot/SelfService;->enableSend:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 49
    iget-object p2, p0, Lnet/aihelp/data/model/rpa/bot/SelfService;->selfServiceData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
