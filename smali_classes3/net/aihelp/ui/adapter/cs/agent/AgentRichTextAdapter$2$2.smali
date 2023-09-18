.class Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$2;
.super Ljava/lang/Object;
.source "AgentRichTextAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;Ljava/io/File;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$2;->this$1:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 184
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$2;->this$1:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;

    iget-object p1, p1, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->access$500(Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/ImageViewer;->getDefault(Landroid/content/Context;)Lnet/aihelp/core/util/viewer/ImageViewer;

    move-result-object p1

    .line 185
    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$2;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2$2;->this$1:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;

    iget-object v1, v1, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;->val$adjustedUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/core/util/viewer/ImageViewer;->updateVideoResource(Ljava/lang/String;Ljava/lang/String;)Lnet/aihelp/core/util/viewer/ImageViewer;

    .line 186
    invoke-virtual {p1}, Lnet/aihelp/core/util/viewer/ImageViewer;->show()V

    return-void
.end method
