.class public final synthetic Lcza;
.super Ljava/lang/Object;

# interfaces
.implements Lcik;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcsc;Loiw;I)V
    .locals 0

    iput p3, p0, Lcza;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcza;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcza;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;I)V
    .locals 0

    iput p3, p0, Lcza;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcza;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcza;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljuf;Loiw;I)V
    .locals 0

    iput p3, p0, Lcza;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcza;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcza;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bl()Lnou;
    .locals 9

    iget v0, p0, Lcza;->c:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcza;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcza;->b:Ljava/lang/Object;

    check-cast v0, Lcsc;

    iget-boolean v0, v0, Lcsc;->B:Z

    if-eqz v0, :cond_0

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldfa;

    iget-object v3, v0, Ldfa;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Ldfa;->f:Ljava/lang/Object;

    invoke-static {}, Lhne;->a()Lhnd;

    move-result-object v3

    iget-object v4, v0, Ldfa;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lhnd;->c(Ljava/util/concurrent/Executor;)V

    const-string v4, "CamcorderTS"

    invoke-virtual {v3, v4}, Lhnd;->d(Ljava/lang/String;)V

    new-instance v4, Lctw;

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-direct {v4, v0, v5, v6}, Lctw;-><init>(Ldfa;I[B)V

    invoke-virtual {v3, v4}, Lhnd;->e(Ljava/lang/Runnable;)V

    new-instance v4, Lctw;

    const/16 v5, 0xb

    invoke-direct {v4, v0, v5, v6}, Lctw;-><init>(Ldfa;I[B)V

    invoke-virtual {v3, v4}, Lhnd;->f(Ljava/lang/Runnable;)V

    iget-object v0, v0, Ldfa;->b:Ljava/lang/Object;

    check-cast v0, Lhna;

    invoke-virtual {v3, v0}, Lhnd;->g(Lhna;)V

    invoke-virtual {v3}, Lhnd;->a()Lhne;

    move-result-object v0

    invoke-interface {v1, v0}, Lhnb;->f(Lhmz;)Lkad;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcza;->b:Ljava/lang/Object;

    const-string v1, "task:"

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcza;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-static {v2}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcza;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcza;->b:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lva;

    invoke-virtual {v1}, Lva;->C()Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    move-result-object v4

    new-instance v1, Lcfh;

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcfh;-><init>(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B[B[B)V

    check-cast v0, Ljuf;

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    invoke-static {v2}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :cond_0
    :goto_0
    invoke-static {v2}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcza;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Ldez;->d(Lcik;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {p0}, Ldez;->d(Lcik;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p0}, Ldez;->d(Lcik;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
