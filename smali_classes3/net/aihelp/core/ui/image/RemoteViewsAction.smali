.class abstract Lnet/aihelp/core/ui/image/RemoteViewsAction;
.super Lnet/aihelp/core/ui/image/Action;
.source "RemoteViewsAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/ui/image/RemoteViewsAction$NotificationAction;,
        Lnet/aihelp/core/ui/image/RemoteViewsAction$AppWidgetAction;,
        Lnet/aihelp/core/ui/image/RemoteViewsAction$RemoteViewsTarget;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/ui/image/Action<",
        "Lnet/aihelp/core/ui/image/RemoteViewsAction$RemoteViewsTarget;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lnet/aihelp/core/ui/image/Callback;

.field final remoteViews:Landroid/widget/RemoteViews;

.field private target:Lnet/aihelp/core/ui/image/RemoteViewsAction$RemoteViewsTarget;

.field final viewId:I


# direct methods
.method constructor <init>(Lnet/aihelp/core/ui/image/Picasso;Lnet/aihelp/core/ui/image/Request;Landroid/widget/RemoteViews;IIIILjava/lang/Object;Ljava/lang/String;Lnet/aihelp/core/ui/image/Callback;)V
    .locals 12

    move-object v11, p0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p5

    move-object/from16 v8, p9

    move-object/from16 v9, p8

    .line 37
    invoke-direct/range {v0 .. v10}, Lnet/aihelp/core/ui/image/Action;-><init>(Lnet/aihelp/core/ui/image/Picasso;Ljava/lang/Object;Lnet/aihelp/core/ui/image/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object v0, p3

    .line 38
    iput-object v0, v11, Lnet/aihelp/core/ui/image/RemoteViewsAction;->remoteViews:Landroid/widget/RemoteViews;

    move/from16 v0, p4

    .line 39
    iput v0, v11, Lnet/aihelp/core/ui/image/RemoteViewsAction;->viewId:I

    move-object/from16 v0, p10

    .line 40
    iput-object v0, v11, Lnet/aihelp/core/ui/image/RemoteViewsAction;->callback:Lnet/aihelp/core/ui/image/Callback;

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .line 52
    invoke-super {p0}, Lnet/aihelp/core/ui/image/Action;->cancel()V

    .line 53
    iget-object v0, p0, Lnet/aihelp/core/ui/image/RemoteViewsAction;->callback:Lnet/aihelp/core/ui/image/Callback;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lnet/aihelp/core/ui/image/RemoteViewsAction;->callback:Lnet/aihelp/core/ui/image/Callback;

    :cond_0
    return-void
.end method

.method complete(Landroid/graphics/Bitmap;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;)V
    .locals 1

    .line 44
    iget-object p2, p0, Lnet/aihelp/core/ui/image/RemoteViewsAction;->remoteViews:Landroid/widget/RemoteViews;

    iget v0, p0, Lnet/aihelp/core/ui/image/RemoteViewsAction;->viewId:I

    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 45
    invoke-virtual {p0}, Lnet/aihelp/core/ui/image/RemoteViewsAction;->update()V

    .line 46
    iget-object p1, p0, Lnet/aihelp/core/ui/image/RemoteViewsAction;->callback:Lnet/aihelp/core/ui/image/Callback;

    if-eqz p1, :cond_0

    .line 47
    invoke-interface {p1}, Lnet/aihelp/core/ui/image/Callback;->onSuccess()V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/Exception;)V
    .locals 1

    .line 59
    iget v0, p0, Lnet/aihelp/core/ui/image/RemoteViewsAction;->errorResId:I

    if-eqz v0, :cond_0

    .line 60
    iget v0, p0, Lnet/aihelp/core/ui/image/RemoteViewsAction;->errorResId:I

    invoke-virtual {p0, v0}, Lnet/aihelp/core/ui/image/RemoteViewsAction;->setImageResource(I)V

    .line 62
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/ui/image/RemoteViewsAction;->callback:Lnet/aihelp/core/ui/image/Callback;

    if-eqz v0, :cond_1

    .line 63
    invoke-interface {v0, p1}, Lnet/aihelp/core/ui/image/Callback;->onError(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method bridge synthetic getTarget()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lnet/aihelp/core/ui/image/RemoteViewsAction;->getTarget()Lnet/aihelp/core/ui/image/RemoteViewsAction$RemoteViewsTarget;

    move-result-object v0

    return-object v0
.end method

.method getTarget()Lnet/aihelp/core/ui/image/RemoteViewsAction$RemoteViewsTarget;
    .locals 3

    .line 68
    iget-object v0, p0, Lnet/aihelp/core/ui/image/RemoteViewsAction;->target:Lnet/aihelp/core/ui/image/RemoteViewsAction$RemoteViewsTarget;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lnet/aihelp/core/ui/image/RemoteViewsAction$RemoteViewsTarget;

    iget-object v1, p0, Lnet/aihelp/core/ui/image/RemoteViewsAction;->remoteViews:Landroid/widget/RemoteViews;

    iget v2, p0, Lnet/aihelp/core/ui/image/RemoteViewsAction;->viewId:I

    invoke-direct {v0, v1, v2}, Lnet/aihelp/core/ui/image/RemoteViewsAction$RemoteViewsTarget;-><init>(Landroid/widget/RemoteViews;I)V

    iput-object v0, p0, Lnet/aihelp/core/ui/image/RemoteViewsAction;->target:Lnet/aihelp/core/ui/image/RemoteViewsAction$RemoteViewsTarget;

    .line 71
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/ui/image/RemoteViewsAction;->target:Lnet/aihelp/core/ui/image/RemoteViewsAction$RemoteViewsTarget;

    return-object v0
.end method

.method setImageResource(I)V
    .locals 2

    .line 75
    iget-object v0, p0, Lnet/aihelp/core/ui/image/RemoteViewsAction;->remoteViews:Landroid/widget/RemoteViews;

    iget v1, p0, Lnet/aihelp/core/ui/image/RemoteViewsAction;->viewId:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 76
    invoke-virtual {p0}, Lnet/aihelp/core/ui/image/RemoteViewsAction;->update()V

    return-void
.end method

.method abstract update()V
.end method
