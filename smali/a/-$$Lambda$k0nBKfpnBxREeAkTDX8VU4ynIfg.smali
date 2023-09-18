.class public final synthetic La/-$$Lambda$k0nBKfpnBxREeAkTDX8VU4ynIfg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field public final synthetic f$0:La/o;


# direct methods
.method public synthetic constructor <init>(La/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/-$$Lambda$k0nBKfpnBxREeAkTDX8VU4ynIfg;->f$0:La/o;

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    iget-object v0, p0, La/-$$Lambda$k0nBKfpnBxREeAkTDX8VU4ynIfg;->f$0:La/o;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, La/o;->a(La/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
