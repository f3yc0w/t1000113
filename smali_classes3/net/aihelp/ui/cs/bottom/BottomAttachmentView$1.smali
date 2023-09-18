.class Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$1;
.super Ljava/lang/Object;
.source "BottomAttachmentView.java"

# interfaces
.implements Lnet/aihelp/core/util/luban/OnCompressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->onPickSuccess(Lnet/aihelp/ui/helper/AttachmentPickerFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;

    iput-object p2, p0, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private uploadAfterCompress(Ljava/io/File;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->uploadImage(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 90
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$1;->val$path:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$1;->uploadAfterCompress(Ljava/io/File;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$1;->uploadAfterCompress(Ljava/io/File;)V

    return-void
.end method
