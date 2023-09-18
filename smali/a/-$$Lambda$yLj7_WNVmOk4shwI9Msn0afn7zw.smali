.class public final synthetic La/-$$Lambda$yLj7_WNVmOk4shwI9Msn0afn7zw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:La/s;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Landroid/webkit/WebView;

.field public final synthetic f$6:Landroid/webkit/HttpAuthHandler;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;La/s;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/-$$Lambda$yLj7_WNVmOk4shwI9Msn0afn7zw;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, La/-$$Lambda$yLj7_WNVmOk4shwI9Msn0afn7zw;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, La/-$$Lambda$yLj7_WNVmOk4shwI9Msn0afn7zw;->f$2:La/s;

    iput-object p4, p0, La/-$$Lambda$yLj7_WNVmOk4shwI9Msn0afn7zw;->f$3:Ljava/lang/String;

    iput-object p5, p0, La/-$$Lambda$yLj7_WNVmOk4shwI9Msn0afn7zw;->f$4:Ljava/lang/String;

    iput-object p6, p0, La/-$$Lambda$yLj7_WNVmOk4shwI9Msn0afn7zw;->f$5:Landroid/webkit/WebView;

    iput-object p7, p0, La/-$$Lambda$yLj7_WNVmOk4shwI9Msn0afn7zw;->f$6:Landroid/webkit/HttpAuthHandler;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    iget-object v0, p0, La/-$$Lambda$yLj7_WNVmOk4shwI9Msn0afn7zw;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, La/-$$Lambda$yLj7_WNVmOk4shwI9Msn0afn7zw;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, La/-$$Lambda$yLj7_WNVmOk4shwI9Msn0afn7zw;->f$2:La/s;

    iget-object v3, p0, La/-$$Lambda$yLj7_WNVmOk4shwI9Msn0afn7zw;->f$3:Ljava/lang/String;

    iget-object v4, p0, La/-$$Lambda$yLj7_WNVmOk4shwI9Msn0afn7zw;->f$4:Ljava/lang/String;

    iget-object v5, p0, La/-$$Lambda$yLj7_WNVmOk4shwI9Msn0afn7zw;->f$5:Landroid/webkit/WebView;

    iget-object v6, p0, La/-$$Lambda$yLj7_WNVmOk4shwI9Msn0afn7zw;->f$6:Landroid/webkit/HttpAuthHandler;

    move-object v7, p1

    move v8, p2

    invoke-static/range {v0 .. v8}, La/s;->a(Landroid/widget/EditText;Landroid/widget/EditText;La/s;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Landroid/content/DialogInterface;I)V

    return-void
.end method
