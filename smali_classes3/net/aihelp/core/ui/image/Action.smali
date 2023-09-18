.class abstract Lnet/aihelp/core/ui/image/Action;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/ui/image/Action$RequestWeakReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field cancelled:Z

.field final errorDrawable:Landroid/graphics/drawable/Drawable;

.field final errorResId:I

.field final key:Ljava/lang/String;

.field final memoryPolicy:I

.field final networkPolicy:I

.field final noFade:Z

.field final picasso:Lnet/aihelp/core/ui/image/Picasso;

.field final request:Lnet/aihelp/core/ui/image/Request;

.field final tag:Ljava/lang/Object;

.field final target:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field willReplay:Z


# direct methods
.method constructor <init>(Lnet/aihelp/core/ui/image/Picasso;Ljava/lang/Object;Lnet/aihelp/core/ui/image/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/ui/image/Picasso;",
            "TT;",
            "Lnet/aihelp/core/ui/image/Request;",
            "III",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lnet/aihelp/core/ui/image/Action;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    .line 53
    iput-object p3, p0, Lnet/aihelp/core/ui/image/Action;->request:Lnet/aihelp/core/ui/image/Request;

    .line 56
    iput-object p2, p0, Lnet/aihelp/core/ui/image/Action;->target:Ljava/lang/Object;

    .line 57
    iput p4, p0, Lnet/aihelp/core/ui/image/Action;->memoryPolicy:I

    .line 58
    iput p5, p0, Lnet/aihelp/core/ui/image/Action;->networkPolicy:I

    .line 59
    iput-boolean p10, p0, Lnet/aihelp/core/ui/image/Action;->noFade:Z

    .line 60
    iput p6, p0, Lnet/aihelp/core/ui/image/Action;->errorResId:I

    .line 61
    iput-object p7, p0, Lnet/aihelp/core/ui/image/Action;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    iput-object p8, p0, Lnet/aihelp/core/ui/image/Action;->key:Ljava/lang/String;

    if-eqz p9, :cond_0

    goto :goto_0

    :cond_0
    move-object p9, p0

    .line 63
    :goto_0
    iput-object p9, p0, Lnet/aihelp/core/ui/image/Action;->tag:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/Action;->cancelled:Z

    return-void
.end method

.method abstract complete(Landroid/graphics/Bitmap;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;)V
.end method

.method abstract error(Ljava/lang/Exception;)V
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Action;->key:Ljava/lang/String;

    return-object v0
.end method

.method getMemoryPolicy()I
    .locals 1

    .line 96
    iget v0, p0, Lnet/aihelp/core/ui/image/Action;->memoryPolicy:I

    return v0
.end method

.method getNetworkPolicy()I
    .locals 1

    .line 100
    iget v0, p0, Lnet/aihelp/core/ui/image/Action;->networkPolicy:I

    return v0
.end method

.method getPicasso()Lnet/aihelp/core/ui/image/Picasso;
    .locals 1

    .line 104
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Action;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    return-object v0
.end method

.method getPriority()Lnet/aihelp/core/ui/image/Picasso$Priority;
    .locals 1

    .line 108
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Action;->request:Lnet/aihelp/core/ui/image/Request;

    iget-object v0, v0, Lnet/aihelp/core/ui/image/Request;->priority:Lnet/aihelp/core/ui/image/Picasso$Priority;

    return-object v0
.end method

.method getRequest()Lnet/aihelp/core/ui/image/Request;
    .locals 1

    .line 75
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Action;->request:Lnet/aihelp/core/ui/image/Request;

    return-object v0
.end method

.method getTag()Ljava/lang/Object;
    .locals 1

    .line 112
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Action;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method getTarget()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Action;->target:Ljava/lang/Object;

    return-object v0
.end method

.method isCancelled()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lnet/aihelp/core/ui/image/Action;->cancelled:Z

    return v0
.end method

.method willReplay()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lnet/aihelp/core/ui/image/Action;->willReplay:Z

    return v0
.end method
