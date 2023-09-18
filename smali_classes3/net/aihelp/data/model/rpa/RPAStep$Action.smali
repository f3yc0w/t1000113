.class public Lnet/aihelp/data/model/rpa/RPAStep$Action;
.super Ljava/lang/Object;
.source "RPAStep.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/model/rpa/RPAStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/aihelp/data/model/rpa/RPAStep$Action;",
        ">;"
    }
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private order:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(ILjava/lang/String;Ljava/lang/String;)Lnet/aihelp/data/model/rpa/RPAStep$Action;
    .locals 1

    .line 89
    new-instance v0, Lnet/aihelp/data/model/rpa/RPAStep$Action;

    invoke-direct {v0}, Lnet/aihelp/data/model/rpa/RPAStep$Action;-><init>()V

    .line 90
    invoke-virtual {v0, p0}, Lnet/aihelp/data/model/rpa/RPAStep$Action;->setOrder(I)V

    .line 91
    invoke-virtual {v0, p1}, Lnet/aihelp/data/model/rpa/RPAStep$Action;->setId(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p2}, Lnet/aihelp/data/model/rpa/RPAStep$Action;->setContent(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 86
    check-cast p1, Lnet/aihelp/data/model/rpa/RPAStep$Action;

    invoke-virtual {p0, p1}, Lnet/aihelp/data/model/rpa/RPAStep$Action;->compareTo(Lnet/aihelp/data/model/rpa/RPAStep$Action;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/aihelp/data/model/rpa/RPAStep$Action;)I
    .locals 1

    .line 126
    iget v0, p0, Lnet/aihelp/data/model/rpa/RPAStep$Action;->order:I

    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAStep$Action;->getOrder()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/RPAStep$Action;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/RPAStep$Action;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 105
    iget v0, p0, Lnet/aihelp/data/model/rpa/RPAStep$Action;->order:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lnet/aihelp/data/model/rpa/RPAStep$Action;->content:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lnet/aihelp/data/model/rpa/RPAStep$Action;->id:Ljava/lang/String;

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 101
    iput p1, p0, Lnet/aihelp/data/model/rpa/RPAStep$Action;->order:I

    return-void
.end method
