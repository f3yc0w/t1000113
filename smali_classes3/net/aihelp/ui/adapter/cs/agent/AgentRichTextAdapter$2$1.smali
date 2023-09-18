.class Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$1;
.super Lnet/aihelp/core/ui/image/TargetAdapter;
.source "AgentRichTextAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;->onLoadImage(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;

.field final synthetic val$thumbnail:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$1;->this$1:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$1;->val$thumbnail:Ljava/lang/String;

    invoke-direct {p0}, Lnet/aihelp/core/ui/image/TargetAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;)V
    .locals 7

    .line 164
    iget-object p2, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$1;->this$1:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;

    iget-object p2, p2, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;->val$rootView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x442f0000    # 700.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 169
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    div-int/2addr v1, v0

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$1;->this$1:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;

    iget-object v0, v0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;

    iget-object v4, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$1;->this$1:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;

    iget-object v4, v4, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;

    invoke-static {v4}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->access$100(Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;)Landroid/content/Context;

    move-result-object v4

    const-wide/high16 v5, 0x4049000000000000L    # 50.0

    invoke-static {v0, v4, v5, v6}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->access$200(Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;Landroid/content/Context;D)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    div-int/2addr p1, v0

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$1;->this$1:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;

    iget-object v0, v0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;

    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$1;->this$1:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;

    iget-object v1, v1, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;

    invoke-static {v1}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->access$300(Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, v5, v6}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->access$400(Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;Landroid/content/Context;D)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 171
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$1;->this$1:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;

    iget-object p1, p1, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;->val$rootView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    invoke-static {}, Lnet/aihelp/core/ui/image/Picasso;->get()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object p1

    iget-object p2, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$1;->val$thumbnail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lnet/aihelp/core/ui/image/Picasso;->load(Ljava/lang/String;)Lnet/aihelp/core/ui/image/RequestCreator;

    move-result-object p1

    iget-object p2, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$1;->this$1:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;

    iget-object p2, p2, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lnet/aihelp/core/ui/image/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 175
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$1;->this$1:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;

    iget-object p1, p1, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;->val$maskView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$1;->this$1:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;

    iget-object p1, p1, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;->val$loadingView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$1;->this$1:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;

    iget-object p1, p1, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;->val$ivPlay:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
