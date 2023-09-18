.class Lnet/aihelp/ui/widget/AIHelpLoadingImageView$1;
.super Lnet/aihelp/core/ui/image/TargetAdapter;
.source "AIHelpLoadingImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->loadIntoImageView(Landroid/content/Context;Lnet/aihelp/data/model/rpa/MediaMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/widget/AIHelpLoadingImageView;

.field final synthetic val$loadSource:Ljava/lang/String;

.field final synthetic val$message:Lnet/aihelp/data/model/rpa/MediaMessage;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/AIHelpLoadingImageView;Lnet/aihelp/data/model/rpa/MediaMessage;Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView$1;->this$0:Lnet/aihelp/ui/widget/AIHelpLoadingImageView;

    iput-object p2, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView$1;->val$message:Lnet/aihelp/data/model/rpa/MediaMessage;

    iput-object p3, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView$1;->val$loadSource:Ljava/lang/String;

    invoke-direct {p0}, Lnet/aihelp/core/ui/image/TargetAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;)V
    .locals 9

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBitmapLoaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView$1;->val$message:Lnet/aihelp/data/model/rpa/MediaMessage;

    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/MediaMessage;->getImageSize()[I

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 150
    iget-object v1, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView$1;->this$0:Lnet/aihelp/ui/widget/AIHelpLoadingImageView;

    invoke-virtual {v1}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x442f0000    # 700.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    div-int/2addr v3, v2

    iget-object v2, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView$1;->this$0:Lnet/aihelp/ui/widget/AIHelpLoadingImageView;

    invoke-virtual {v2}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    invoke-virtual {v2, v6, v7, v8}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->dip2px(Landroid/content/Context;D)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    aput v2, p2, v0

    const/4 v2, 0x1

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    div-int/2addr p1, v3

    iget-object v3, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView$1;->this$0:Lnet/aihelp/ui/widget/AIHelpLoadingImageView;

    invoke-virtual {v3}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v7, v8}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    aput p1, p2, v2

    .line 158
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView$1;->val$message:Lnet/aihelp/data/model/rpa/MediaMessage;

    invoke-virtual {p1, p2}, Lnet/aihelp/data/model/rpa/MediaMessage;->setImageSize([I)V

    .line 159
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView$1;->this$0:Lnet/aihelp/ui/widget/AIHelpLoadingImageView;

    invoke-virtual {p1, v1}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    :cond_1
    invoke-static {}, Lnet/aihelp/core/ui/image/Picasso;->get()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object p1

    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView$1;->val$loadSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lnet/aihelp/core/ui/image/Picasso;->load(Ljava/lang/String;)Lnet/aihelp/core/ui/image/RequestCreator;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/RequestCreator;->fit()Lnet/aihelp/core/ui/image/RequestCreator;

    move-result-object p1

    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView$1;->this$0:Lnet/aihelp/ui/widget/AIHelpLoadingImageView;

    invoke-static {p2}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->access$000(Lnet/aihelp/ui/widget/AIHelpLoadingImageView;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/aihelp/core/ui/image/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 166
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView$1;->this$0:Lnet/aihelp/ui/widget/AIHelpLoadingImageView;

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->updateLoadingStatus(Z)V

    return-void
.end method
