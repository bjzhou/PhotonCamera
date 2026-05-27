.class public final synthetic Lfhw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lnou;

.field public final synthetic b:Lnph;

.field public final synthetic c:Landroid/media/MediaFormat;


# direct methods
.method public synthetic constructor <init>(Lnou;Lnph;Landroid/media/MediaFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfhw;->a:Lnou;

    iput-object p2, p0, Lfhw;->b:Lnph;

    iput-object p3, p0, Lfhw;->c:Landroid/media/MediaFormat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lfhw;->a:Lnou;

    iget-object v1, p0, Lfhw;->b:Lnph;

    iget-object v2, p0, Lfhw;->c:Landroid/media/MediaFormat;

    invoke-interface {v0}, Lnou;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lnph;->cancel(Z)Z

    return-void

    :cond_0
    invoke-virtual {v1, v2}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
