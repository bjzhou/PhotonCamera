.class public final Lcmc;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lcmd;I)V
    .locals 0

    iput p2, p0, Lcmc;->b:I

    iput-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcpk;I)V
    .locals 0

    iput p2, p0, Lcmc;->b:I

    iput-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcpu;I)V
    .locals 0

    iput p2, p0, Lcmc;->b:I

    iput-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldbj;I)V
    .locals 0

    iput p2, p0, Lcmc;->b:I

    iput-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldpc;I)V
    .locals 0

    iput p2, p0, Lcmc;->b:I

    iput-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Leuy;I)V
    .locals 0

    iput p2, p0, Lcmc;->b:I

    iput-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Leyu;I)V
    .locals 0

    iput p2, p0, Lcmc;->b:I

    iput-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lffl;I)V
    .locals 0

    iput p2, p0, Lcmc;->b:I

    iput-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfym;I)V
    .locals 0

    iput p2, p0, Lcmc;->b:I

    iput-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgwd;I)V
    .locals 0

    iput p2, p0, Lcmc;->b:I

    iput-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhba;I)V
    .locals 0

    iput p2, p0, Lcmc;->b:I

    iput-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhcz;I)V
    .locals 0

    iput p2, p0, Lcmc;->b:I

    iput-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhos;I)V
    .locals 0

    iput p2, p0, Lcmc;->b:I

    iput-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Liiy;I)V
    .locals 0

    iput p2, p0, Lcmc;->b:I

    iput-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;I)V
    .locals 0

    iput p2, p0, Lcmc;->b:I

    iput-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lxu;I)V
    .locals 0

    iput p2, p0, Lcmc;->b:I

    iput-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 5

    iget v0, p0, Lcmc;->b:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    check-cast p1, Lxu;

    invoke-virtual {p1, v0}, Lxu;->a(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    sget-object v0, Lhos;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "CamcorderSnapshot is not available: %s"

    const/16 v2, 0xef5

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Lhos;

    iget-object v0, v0, Lhos;->E:Lhpq;

    invoke-virtual {v0}, Lhpq;->e()V

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Lhos;

    iget-object v1, v0, Lhos;->T:Ldfa;

    iget-object v0, v0, Lhos;->g:Ldbf;

    invoke-virtual {v0}, Ldbf;->d()Lklv;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ldfa;->b(Ljava/lang/Throwable;Lklv;)V

    return-void

    :pswitch_2
    return-void

    :pswitch_3
    sget-object p1, Lhba;->a:Lnak;

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Lhba;

    iget-object p1, p1, Lhba;->t:Llhm;

    invoke-virtual {p1, v1}, Llhm;->c(I)V

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Lhba;

    iget-object p1, p1, Lhba;->k:Lhbf;

    const/4 v0, -0x1

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lhbf;->b(II)V

    return-void

    :pswitch_4
    sget-object v0, Lhba;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v2, "shouldStartUpdate threw an exception!"

    const/16 v3, 0xd52

    invoke-static {v0, v2, v3, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Lhba;

    iget-object p1, p1, Lhba;->t:Llhm;

    invoke-virtual {p1, v1}, Llhm;->c(I)V

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Lhba;

    invoke-virtual {p1}, Lhba;->c()V

    return-void

    :pswitch_5
    sget-object v0, Lgwd;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Failed to update thumbnail"

    const/16 v2, 0xcea

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :pswitch_6
    return-void

    :pswitch_7
    sget-object p1, Leyu;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "Failed to check Lens capabilities."

    const/16 v1, 0x809

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Leyu;

    iget-object p1, p1, Leyu;->d:Lfxf;

    if-eqz p1, :cond_0

    invoke-static {}, Lhza;->a()Lhyz;

    move-result-object v0

    invoke-virtual {v0}, Lhyz;->a()Lhza;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfxf;->a(Lhza;)V

    :cond_0
    return-void

    :pswitch_8
    return-void

    :pswitch_9
    new-instance p1, Lklr;

    invoke-direct {p1}, Lklr;-><init>()V

    throw p1

    :pswitch_a
    new-instance p1, Ldnq;

    sget-object v0, Lkbo;->m:Lkbo;

    const/4 v1, 0x2

    new-array v1, v1, [Lklv;

    sget-object v3, Lklv;->b:Lklv;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lklv;->a:Lklv;

    aput-object v3, v1, v2

    const-string v2, "Failed to open any of the available camera"

    invoke-direct {p1, v2, v0, v1}, Ldnq;-><init>(Ljava/lang/String;Lkbo;[Lklv;)V

    throw p1

    :pswitch_b
    sget-object v0, Lcpu;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Failed to capture video cover image."

    const/16 v2, 0x1d0

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :pswitch_c
    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcpk;

    iget-object v1, v1, Lcpk;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcpk;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    invoke-interface {v2, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v2, 0x1c2

    invoke-interface {p1, v2}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v2, "Failed to startRecording: "

    invoke-interface {p1, v2}, Lnah;->o(Ljava/lang/String;)V

    move-object p1, v0

    check-cast p1, Lcpk;

    iget-object p1, p1, Lcpk;->y:Lcpj;

    sget-object v2, Lcpj;->a:Lcpj;

    if-eq p1, v2, :cond_3

    move-object p1, v0

    check-cast p1, Lcpk;

    iget-object p1, p1, Lcpk;->y:Lcpj;

    sget-object v2, Lcpj;->b:Lcpj;

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    check-cast p1, Lcpk;

    iget-object p1, p1, Lcpk;->x:Lcpu;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcpu;->close()V

    move-object p1, v0

    check-cast p1, Lcpk;

    const/4 v2, 0x0

    iput-object v2, p1, Lcpk;->x:Lcpu;

    :cond_2
    move-object p1, v0

    check-cast p1, Lcpk;

    iget-object p1, p1, Lcpk;->c:Ljuh;

    new-instance v2, Lclr;

    move-object v3, v0

    check-cast v3, Lcpk;

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4}, Lclr;-><init>(Lcpk;I)V

    invoke-virtual {p1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    sget-object p1, Lcpj;->a:Lcpj;

    check-cast v0, Lcpk;

    invoke-virtual {v0, p1}, Lcpk;->k(Lcpj;)V

    monitor-exit v1

    return-void

    :cond_3
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_d
    return-void

    :pswitch_e
    sget-object v0, Lcmd;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Failed to add Media Record"

    const/16 v2, 0x10c

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :pswitch_f
    sget-object v0, Lcmd;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Retrieving user opt in failed."

    const/16 v2, 0x10e

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 10

    iget v0, p0, Lcmc;->b:I

    const/4 v1, 0x4

    const/16 v2, 0x10

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast p1, Llql;

    sget-object v0, Llql;->a:Llql;

    if-eq p1, v0, :cond_f

    sget-object v0, Llql;->b:Llql;

    if-eq p1, v0, :cond_f

    sget-object v0, Llql;->f:Llql;

    if-eq p1, v0, :cond_f

    sget-object v0, Llql;->h:Llql;

    if-ne p1, v0, :cond_e

    goto/16 :goto_3

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    check-cast v0, Lxu;

    invoke-virtual {v0, p1}, Lxu;->a(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    check-cast p1, Lcsw;

    iget-object v0, p1, Lcsw;->b:Ljava/io/File;

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Lhos;

    iget-object v0, v0, Lhos;->f:Lcvf;

    invoke-virtual {v0, p1}, Lcvf;->b(Lcsw;)V

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Lhos;

    iget-object v0, v0, Lhos;->E:Lhpq;

    invoke-virtual {v0}, Lhpq;->e()V

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Lhos;

    iget-object v1, v0, Lhos;->T:Ldfa;

    iget-object v0, v0, Lhos;->g:Ldbf;

    invoke-virtual {v0}, Ldbf;->d()Lklv;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ldfa;->c(Lcsw;Lklv;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast v0, Lhcz;

    iput-boolean p1, v0, Lhcz;->f:Z

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lhba;->a:Lnak;

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Lhba;

    iget-object v0, v0, Lhba;->b:Landroid/content/Context;

    const-class v1, Lcom/google/android/apps/camera/sideline/SidelineInstallerService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.google.android.apps.camera.sideline.START_UPDATE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Lhba;

    iget-object v0, v0, Lhba;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_1
    sget-object p1, Lhba;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0xd54

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v0, "Not all cameras are available after waiting for %dms. Scheduling update later."

    const-wide/32 v2, 0xea60

    invoke-interface {p1, v0, v2, v3}, Lnah;->q(Ljava/lang/String;J)V

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Lhba;

    iget-object p1, p1, Lhba;->t:Llhm;

    invoke-virtual {p1, v1}, Llhm;->c(I)V

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Lhba;

    iget-object p1, p1, Lhba;->k:Lhbf;

    const/16 v0, 0x9

    invoke-virtual {p1, v5, v0}, Lhbf;->b(II)V

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Lhba;

    invoke-virtual {p1}, Lhba;->b()V

    return-void

    :pswitch_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Lhba;

    iget-object v0, p1, Lhba;->n:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhax;

    invoke-virtual {v0}, Lhax;->a()Lnou;

    move-result-object v0

    new-instance v1, Lcmc;

    invoke-direct {v1, p1, v2}, Lcmc;-><init>(Lhba;I)V

    iget-object p1, p1, Lhba;->h:Ljuh;

    invoke-static {v0, v1, p1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Lhba;

    iget-object p1, p1, Lhba;->t:Llhm;

    invoke-virtual {p1, v1}, Llhm;->c(I)V

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Lhba;

    invoke-virtual {p1}, Lhba;->c()V

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Lgwd;

    iget-object p1, p1, Lgwd;->g:Lgwm;

    invoke-virtual {p1}, Lgwm;->e()V

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Lgwd;

    const-string v0, "Thumbnail rendered"

    invoke-virtual {p1, v0}, Lgwd;->W(Ljava/lang/String;)V

    return-void

    :pswitch_6
    check-cast p1, Lfyi;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Lfym;

    iget-object v0, v0, Lfym;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgkr;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfyh;

    invoke-interface {v4, p1}, Lfyh;->a(Lfyi;)Lfyt;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v4, Lfyt;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v1, v1, Lgkr;->b:Ljava/lang/Object;

    iget-object v2, v4, Lfyt;->a:Ljava/lang/String;

    const-string v3, "Valid image created:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkaq;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v3, v1, Lgkr;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ImageSaverTrace does not match any valid strategy: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lkaq;->d(Ljava/lang/String;)V

    iget-object v2, v1, Lgkr;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Trace = "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkaq;->d(Ljava/lang/String;)V

    iget-object v2, v1, Lgkr;->d:Ljava/lang/Object;

    sget-object v3, Ldin;->d:Ldin;

    if-eq v2, v3, :cond_3

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Image Saver Trace did not match any valid ImageSaverStrategy: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lgkr;->a:Ljava/lang/Object;

    new-instance v3, Lfof;

    const/16 v4, 0x12

    invoke-direct {v3, v2, v4}, Lfof;-><init>(Ljava/lang/Exception;I)V

    check-cast v1, Ljuh;

    invoke-virtual {v1, v3}, Ljuh;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_6
    return-void

    :pswitch_7
    check-cast p1, Lffo;

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Lffl;

    iget-object v0, v0, Lffl;->f:Lffp;

    invoke-virtual {v0, p1}, Lffp;->c(Lffo;)V

    return-void

    :pswitch_8
    check-cast p1, Lhza;

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Leyu;

    iget-object v0, v0, Leyu;->d:Lfxf;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lfxf;->a(Lhza;)V

    :cond_7
    return-void

    :pswitch_9
    check-cast p1, Lflk;

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Leuy;

    iput-object p1, v0, Leuy;->r:Lflk;

    iget-object v0, v0, Leuy;->q:Ljuf;

    invoke-virtual {v0, p1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Leuy;

    iget-object v0, v0, Leuy;->p:Leuo;

    invoke-static {}, Ljuh;->a()V

    iget-object v0, v0, Leuo;->b:Lcha;

    invoke-interface {v0}, Lcha;->g()V

    invoke-virtual {p1}, Lflk;->i()Lmbe;

    move-result-object v0

    iget-object v0, v0, Lmbe;->b:Ljava/lang/Object;

    new-instance v1, Lcig;

    const/16 v9, 0xe

    invoke-direct {v1, p0, v9, v4}, Lcig;-><init>(Lcmc;I[B)V

    iget-object v6, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v6, Leuy;

    iget-object v6, v6, Leuy;->g:Ljuh;

    invoke-static {v0, v1, v6}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    iget-object v0, p1, Lflk;->a:Ljuf;

    invoke-virtual {p1}, Lflk;->b()Ljvs;

    move-result-object v1

    iget-object v6, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v6, Leuy;

    iget-object v7, v6, Leuy;->p:Leuo;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Leus;

    invoke-direct {v8, v7, v3}, Leus;-><init>(Leuo;I)V

    iget-object v3, v6, Leuy;->g:Ljuh;

    invoke-interface {v1, v8, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    new-instance v1, Ledg;

    invoke-direct {v1, p0, v2, v4}, Ledg;-><init>(Lcmc;I[B)V

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Leuy;

    iget-object v1, v0, Leuy;->j:Lcbn;

    iget-object v3, p1, Lflk;->c:Lfuz;

    invoke-virtual {p1}, Lflk;->i()Lmbe;

    move-result-object v0

    iget-object v4, v0, Lmbe;->c:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Leuy;

    iget-object v0, v0, Leuy;->n:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v7

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcbn;->a(Lcbi;Lkli;Ljvs;Ljvs;ZZI)Lcbm;

    move-result-object v0

    iget-object v1, p1, Lflk;->a:Ljuf;

    invoke-virtual {v1, v0}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Leuy;

    iget-object v1, v0, Leuy;->g:Ljuh;

    new-instance v2, Lett;

    invoke-direct {v2, v0, v9}, Lett;-><init>(Leuy;I)V

    invoke-virtual {v1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Leuy;

    iget-object v0, v0, Leuy;->m:Lici;

    iget-object p1, p1, Lflk;->c:Lfuz;

    invoke-virtual {p1}, Lklw;->k()Lklv;

    sget-object p1, Lklv;->a:Lklv;

    sget-object p1, Lika;->a:Lika;

    invoke-virtual {v0}, Lici;->c()V

    return-void

    :pswitch_a
    check-cast p1, Lgld;

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Ldpc;

    iget-object v0, v0, Ldpc;->e:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldoh;

    sget-object v1, Ldoh;->a:Ldoh;

    invoke-virtual {v0, v1}, Ldoh;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Ldpc;

    invoke-virtual {p1}, Ldpc;->k()V

    return-void

    :cond_8
    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    iget v1, p1, Lgld;->a:F

    check-cast v0, Ldpc;

    iput v1, v0, Ldpc;->l:F

    iget-object v0, v0, Ldpc;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->g(F)V

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    iget p1, p1, Lgld;->b:F

    check-cast v0, Ldpc;

    iput p1, v0, Ldpc;->m:F

    iget-object v0, v0, Ldpc;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->i(F)V

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Ldpc;

    iget-object v0, p1, Ldpc;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    iget p1, p1, Ldpc;->l:F

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->h(F)V

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Ldpc;

    iget-object v0, p1, Ldpc;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    iget p1, p1, Ldpc;->m:F

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->j(F)V

    return-void

    :pswitch_b
    check-cast p1, Ldcx;

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Ldbj;

    iget-object v1, v0, Ldbj;->a:Lcvr;

    invoke-virtual {v1}, Lcvr;->d()I

    move-result v1

    iget-object v2, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v2, Ldbj;

    iget-object v2, v2, Ldbj;->a:Lcvr;

    invoke-virtual {v2}, Lcvr;->c()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, v3}, Ldbj;->d(Ldcx;III)V

    return-void

    :pswitch_c
    check-cast p1, Ldcx;

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Ldbj;

    iget-object v1, v0, Ldbj;->a:Lcvr;

    invoke-virtual {v1}, Lcvr;->f()I

    move-result v1

    iget-object v2, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v2, Ldbj;

    iget-object v2, v2, Ldbj;->a:Lcvr;

    invoke-virtual {v2}, Lcvr;->e()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v0, p1, v1, v2, v3}, Ldbj;->d(Ldcx;III)V

    return-void

    :pswitch_d
    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Lcpu;

    iget-object v0, v0, Lcpu;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :pswitch_e
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Lcpk;

    iget-object v0, p1, Lcpk;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Lcpk;

    iget-object p1, p1, Lcpk;->y:Lcpj;

    sget-object v1, Lcpj;->b:Lcpj;

    if-ne p1, v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Lcpk;

    iget-object p1, p1, Lcpk;->o:Lhkl;

    sget-object v1, Lhkk;->b:Lhkk;

    invoke-virtual {p1, v1}, Lhkh;->h(Ljava/lang/Enum;)V

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Lcpk;

    iget-object p1, p1, Lcpk;->m:Lcuf;

    iget-object p1, p1, Lcuf;->m:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    sget-object v1, Lcpj;->e:Lcpj;

    check-cast p1, Lcpk;

    invoke-virtual {p1, v1}, Lcpk;->k(Lcpj;)V

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Lcpk;

    invoke-virtual {p1}, Lcpk;->l()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Lcpk;

    invoke-virtual {p1}, Lcpk;->d()V

    :cond_a
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_f
    check-cast p1, Lfsf;

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_10
    check-cast p1, Lfsf;

    iget-object v0, p1, Lfsf;->d:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object p1, p1, Lfsf;->d:Ljava/lang/Object;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcsx;

    goto :goto_2

    :cond_b
    :goto_2
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcsx;->a()J

    move-result-wide v0

    invoke-virtual {v4}, Lcsx;->a()J

    const-wide v2, 0xdc898500L

    cmp-long p1, v0, v2

    if-ltz p1, :cond_c

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Lcpk;

    iget-object p1, p1, Lcpk;->d:Lcqa;

    iget-object p1, p1, Lcqa;->f:Lcsg;

    iget-object v0, p1, Lcsg;->c:Ljuh;

    new-instance v1, Lcqf;

    const/16 v2, 0xb

    invoke-direct {v1, p1, v2}, Lcqf;-><init>(Lcsg;I)V

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_c
    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Lcpk;

    iget-object p1, p1, Lcpk;->d:Lcqa;

    invoke-virtual {p1, v5}, Lcqa;->d(Z)V

    return-void

    :pswitch_11
    check-cast p1, Ljava/lang/Long;

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Lcmd;

    iget-object v0, v0, Lcmd;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void

    :pswitch_12
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Lcmd;

    iget-object p1, p1, Lcmd;->b:Ldhi;

    sget-object v0, Ldho;->a:Ldhk;

    invoke-interface {p1}, Ldhi;->f()V

    return-void

    :pswitch_13
    check-cast p1, Lnaa;

    iget-object v0, p0, Lcmc;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Lnaa;->g()Z

    move-result p1

    check-cast v0, Lcmd;

    iput-boolean p1, v0, Lcmd;->i:Z

    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Lcmd;

    iget-boolean v0, p1, Lcmd;->i:Z

    if-nez v0, :cond_d

    iget-object p1, p1, Lcmd;->d:Lcnt;

    invoke-interface {p1}, Lcnt;->j()V

    :cond_d
    return-void

    :cond_e
    iget-object p1, p0, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Liiy;

    iget-object p1, p1, Liiy;->f:Ljuh;

    new-instance v0, Liiw;

    invoke-direct {v0, p0, v4}, Liiw;-><init>(Lcmc;[B)V

    invoke-virtual {p1, v0}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_f
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
