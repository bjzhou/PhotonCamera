.class public final Lfdy;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final a:Ljava/lang/Object;

.field final b:Ljava/lang/Object;

.field final c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Ljvk;Ljava/util/Collection;I[B[B[B[B[B)V
    .locals 0

    iput p4, p0, Lfdy;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfdy;->c:Ljava/lang/Object;

    iput-object p2, p0, Lfdy;->a:Ljava/lang/Object;

    iput-object p3, p0, Lfdy;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcir;Ljuf;I)V
    .locals 0

    iput p3, p0, Lfdy;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfdy;->c:Ljava/lang/Object;

    iput-object p2, p0, Lfdy;->a:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lfdy;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget v0, p0, Lfdy;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfdy;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :pswitch_0
    iget-object v0, p0, Lfdy;->b:Ljava/lang/Object;

    check-cast v0, Lmvv;

    invoke-virtual {v0}, Lmvv;->s()Lnad;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkad;

    invoke-interface {v1}, Lkad;->close()V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lfdy;->c:Ljava/lang/Object;

    new-instance v1, Lcdw;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcdw;-><init>(Lfdy;I[B)V

    check-cast v0, Lcir;

    invoke-virtual {v0, v1}, Lcir;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lfdy;->c:Ljava/lang/Object;

    check-cast v0, Lcir;

    invoke-virtual {v0}, Lcir;->close()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
