.class Lnet/aihelp/core/ui/image/Picasso$1;
.super Landroid/os/Handler;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/ui/image/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 149
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 151
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 152
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/ui/image/Action;

    .line 153
    iget-object v3, v1, Lnet/aihelp/core/ui/image/Action;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    invoke-virtual {v3, v1}, Lnet/aihelp/core/ui/image/Picasso;->resumeAction(Lnet/aihelp/core/ui/image/Action;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown handler message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 132
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 134
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 135
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/ui/image/BitmapHunter;

    .line 136
    iget-object v3, v1, Lnet/aihelp/core/ui/image/BitmapHunter;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    invoke-virtual {v3, v1}, Lnet/aihelp/core/ui/image/Picasso;->complete(Lnet/aihelp/core/ui/image/BitmapHunter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 141
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lnet/aihelp/core/ui/image/Action;

    .line 142
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getPicasso()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p1, Lnet/aihelp/core/ui/image/Action;->request:Lnet/aihelp/core/ui/image/Request;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Main"

    const-string v2, "canceled"

    const-string v3, "target got garbage collected"

    invoke-static {v1, v2, v0, v3}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_3
    iget-object v0, p1, Lnet/aihelp/core/ui/image/Action;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getTarget()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/Picasso;->cancelExistingRequest(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
