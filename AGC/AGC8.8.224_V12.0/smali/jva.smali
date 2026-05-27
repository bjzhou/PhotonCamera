.class public final synthetic Ljva;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Ljvb;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljvb;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;I)V
    .locals 0

    iput p4, p0, Ljva;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljva;->c:Ljvb;

    iput-object p2, p0, Ljva;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Ljva;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 4

    iget v0, p0, Ljva;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ljva;->c:Ljvb;

    iget-object v1, p0, Ljva;->a:Ljava/lang/Runnable;

    iget-object v2, p0, Ljva;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1}, Ljvb;->a(Ljava/lang/Runnable;)Lnou;

    move-result-object p1

    new-instance v0, Ljoq;

    const/4 v3, 0x6

    invoke-direct {v0, p1, v1, v3}, Ljoq;-><init>(Lnou;Ljava/lang/Runnable;I)V

    invoke-interface {p1, v0, v2}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Ljva;->c:Ljvb;

    iget-object v1, p0, Ljva;->a:Ljava/lang/Runnable;

    iget-object v2, p0, Ljva;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1}, Ljvb;->a(Ljava/lang/Runnable;)Lnou;

    move-result-object p1

    invoke-interface {p1, v1, v2}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
