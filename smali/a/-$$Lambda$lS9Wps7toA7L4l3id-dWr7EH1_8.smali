.class public final synthetic La/-$$Lambda$lS9Wps7toA7L4l3id-dWr7EH1_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:La/v;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(La/v;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/-$$Lambda$lS9Wps7toA7L4l3id-dWr7EH1_8;->f$0:La/v;

    iput-boolean p2, p0, La/-$$Lambda$lS9Wps7toA7L4l3id-dWr7EH1_8;->f$1:Z

    iput-object p3, p0, La/-$$Lambda$lS9Wps7toA7L4l3id-dWr7EH1_8;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, La/-$$Lambda$lS9Wps7toA7L4l3id-dWr7EH1_8;->f$0:La/v;

    iget-boolean v1, p0, La/-$$Lambda$lS9Wps7toA7L4l3id-dWr7EH1_8;->f$1:Z

    iget-object v2, p0, La/-$$Lambda$lS9Wps7toA7L4l3id-dWr7EH1_8;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La/v;->a(La/v;ZLjava/lang/String;)V

    return-void
.end method
