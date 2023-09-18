.class public Lnet/aihelp/core/util/bus/event/EventCenter;
.super Ljava/lang/Object;
.source "EventCenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private code:I

.field private event:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lnet/aihelp/core/util/bus/event/EventCenter;->code:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lnet/aihelp/core/util/bus/event/EventCenter;->code:I

    .line 21
    iput-object p2, p0, Lnet/aihelp/core/util/bus/event/EventCenter;->event:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lnet/aihelp/core/util/bus/event/EventCenter;->event:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 25
    iget v0, p0, Lnet/aihelp/core/util/bus/event/EventCenter;->code:I

    return v0
.end method

.method public getEvent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lnet/aihelp/core/util/bus/event/EventCenter;->event:Ljava/lang/Object;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 29
    iput p1, p0, Lnet/aihelp/core/util/bus/event/EventCenter;->code:I

    return-void
.end method

.method public setEvent(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lnet/aihelp/core/util/bus/event/EventCenter;->event:Ljava/lang/Object;

    return-void
.end method
