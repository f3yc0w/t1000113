.class Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;
.super Ljava/lang/Object;
.source "AgentRichTextAdapter.java"

# interfaces
.implements Lnet/aihelp/utils/MediaUtils$OnLoadVideoImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->getVideoViewFromRichText(Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;

.field final synthetic val$adjustedUrl:Ljava/lang/String;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$ivPlay:Landroid/widget/ImageView;

.field final synthetic val$loadingView:Landroid/view/View;

.field final synthetic val$maskView:Landroid/view/View;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;->val$rootView:Landroid/view/View;

    iput-object p3, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;->val$imageView:Landroid/widget/ImageView;

    iput-object p4, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;->val$maskView:Landroid/view/View;

    iput-object p5, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;->val$loadingView:Landroid/view/View;

    iput-object p6, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;->val$ivPlay:Landroid/widget/ImageView;

    iput-object p7, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;->val$adjustedUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadImage(Ljava/io/File;)V
    .locals 3

    .line 160
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {}, Lnet/aihelp/core/ui/image/Picasso;->get()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/aihelp/core/ui/image/Picasso;->load(Ljava/lang/String;)Lnet/aihelp/core/ui/image/RequestCreator;

    move-result-object v1

    new-instance v2, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$1;

    invoke-direct {v2, p0, v0}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$1;-><init>(Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lnet/aihelp/core/ui/image/RequestCreator;->into(Lnet/aihelp/core/ui/image/Target;)V

    .line 181
    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;->val$rootView:Landroid/view/View;

    new-instance v1, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$2;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$2;-><init>(Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
