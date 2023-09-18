.class Lnet/aihelp/data/model/rpa/bot/SelfService$1;
.super Ljava/lang/Object;
.source "SelfService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/model/rpa/bot/SelfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lnet/aihelp/data/model/rpa/bot/SelfService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lnet/aihelp/data/model/rpa/bot/SelfService$1;->createFromParcel(Landroid/os/Parcel;)Lnet/aihelp/data/model/rpa/bot/SelfService;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnet/aihelp/data/model/rpa/bot/SelfService;
    .locals 1

    .line 24
    new-instance v0, Lnet/aihelp/data/model/rpa/bot/SelfService;

    invoke-direct {v0, p1}, Lnet/aihelp/data/model/rpa/bot/SelfService;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lnet/aihelp/data/model/rpa/bot/SelfService$1;->newArray(I)[Lnet/aihelp/data/model/rpa/bot/SelfService;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lnet/aihelp/data/model/rpa/bot/SelfService;
    .locals 0

    .line 29
    new-array p1, p1, [Lnet/aihelp/data/model/rpa/bot/SelfService;

    return-object p1
.end method
