.class public final synthetic Lcpq;
.super Ljava/lang/Object;

# interfaces
.implements Lnno;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcor;Lcsc;I)V
    .locals 0

    iput p3, p0, Lcpq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcpq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcpq;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcpu;Lcsu;I)V
    .locals 0

    iput p3, p0, Lcpq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcpq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcpq;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lftg;Lkad;I)V
    .locals 0

    iput p3, p0, Lcpq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcpq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcpq;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfxk;Lgqr;I)V
    .locals 0

    iput p3, p0, Lcpq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcpq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcpq;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llnw;Lozv;I)V
    .locals 0

    iput p3, p0, Lcpq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcpq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcpq;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llon;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcpq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcpq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcpq;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llsr;Lnou;I)V
    .locals 0

    iput p3, p0, Lcpq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcpq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcpq;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lnou;
    .locals 7

    iget v0, p0, Lcpq;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcpq;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcpq;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Llsr;

    iget-object v3, v2, Llsr;->b:Lnou;

    invoke-static {v3}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v2, v3, p1}, Llsr;->c(Landroid/net/Uri;Ljava/lang/Object;)V

    iget-object p1, v2, Llsr;->e:Ljava/lang/Object;

    monitor-enter p1

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, p0, Lcpq;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcpq;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Void;

    sget-object p1, Llpt;->a:Llpa;

    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object p1

    check-cast v0, Llon;

    iget-object v4, v0, Llon;->c:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lmvq;->g(Ljava/lang/Object;)V

    sget v4, Lktm;->a:I

    iget-object v0, v0, Llon;->c:Landroid/content/Context;

    invoke-static {v0}, Lktm;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmvq;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lmvq;->f()Lmvv;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lmyu;

    iget v0, v0, Lmyu;->c:I

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/phenotype/shared/"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v5}, Llpt;->a(Ljava/io/File;)Z

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    sget-object p1, Lnor;->a:Lnou;

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unable to remove snapshots for removed user"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_1
    iget-object v0, p0, Lcpq;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcpq;->b:Ljava/lang/Object;

    check-cast p1, Llnj;

    check-cast v0, Llnw;

    iget-object v3, v0, Llnw;->b:Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;

    iget-object v0, v0, Llnw;->a:Landroid/content/Context;

    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnwn;

    invoke-virtual {v4, p1}, Lnwn;->s(Lnws;)V

    check-cast v4, Lnwp;

    iget-object p1, v4, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_3
    iget-object p1, v4, Lnwp;->b:Lnws;

    check-cast p1, Llnj;

    sget-object v5, Llnj;->c:Llnj;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lozv;

    iput-object v1, p1, Llnj;->b:Lozv;

    iget v1, p1, Llnj;->a:I

    or-int/2addr v1, v2

    iput v1, p1, Llnj;->a:I

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Llnj;

    invoke-virtual {v3, v0, p1}, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->a(Landroid/content/Context;Llnj;)Lnou;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lcpq;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcpq;->b:Ljava/lang/Object;

    check-cast p1, Lkou;

    check-cast v0, Lfxk;

    iget-object v2, v0, Lfxk;->e:Lfxl;

    iget-object v2, v2, Lfxl;->g:Lgsp;

    check-cast v1, Lgqr;

    iget-object v3, v1, Lgqr;->a:Lkpb;

    invoke-interface {v3}, Lkpb;->d()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lgsp;->c(J)Lgsl;

    move-result-object v2

    iget-object v0, v0, Lfxk;->e:Lfxl;

    iget-object v0, v0, Lfxl;->d:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqq;

    new-instance v3, Lcvm;

    iget-object v4, v1, Lgqr;->a:Lkpb;

    iget-object v1, v1, Lgqr;->i:Lgyq;

    invoke-static {v2}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    invoke-direct {v3, v4, v1, p1, v2}, Lcvm;-><init>(Lkpb;Lgyq;Lkou;Lmqp;)V

    invoke-interface {v0, v3}, Ldqq;->a(Lcvm;)Lnou;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget-object v0, p0, Lcpq;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcpq;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    sget-object v2, Lfux;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const-string v3, "Exception occurred while starting camera"

    const/16 v4, 0x9d1

    invoke-static {v2, v3, v4, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    invoke-interface {v0}, Lftg;->close()V

    invoke-interface {v1}, Lkad;->close()V

    invoke-static {p1}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget-object v0, p0, Lcpq;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcpq;->b:Ljava/lang/Object;

    check-cast p1, Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    goto :goto_2

    :cond_4
    check-cast v0, Lcor;

    iget-object p1, v0, Lcor;->f:Lcpx;

    check-cast v1, Lcsc;

    invoke-virtual {p1, v1}, Lcpx;->b(Lcsc;)Lnou;

    move-result-object p1

    new-instance v1, Lcdu;

    const/4 v2, 0x7

    invoke-direct {v1, v0, v2}, Lcdu;-><init>(Lcor;I)V

    iget-object v0, v0, Lcor;->a:Lnow;

    invoke-static {p1, v1, v0}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    :goto_2
    return-object p1

    :pswitch_5
    iget-object v0, p0, Lcpq;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcpq;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Void;

    move-object p1, v0

    check-cast p1, Lcpu;

    iget-object v3, p1, Lcpu;->f:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    move-object p1, v0

    check-cast p1, Lcpu;

    iget-object p1, p1, Lcpu;->F:Lcpt;

    sget-object v4, Lcpt;->e:Lcpt;

    if-eq p1, v4, :cond_5

    new-instance p1, Ljava/lang/IllegalStateException;

    check-cast v0, Lcpu;

    iget-object v0, v0, Lcpu;->F:Lcpt;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStop when state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object p1

    monitor-exit v3

    goto :goto_3

    :cond_5
    move-object p1, v0

    check-cast p1, Lcpu;

    iget-object p1, p1, Lcpu;->l:Lcsc;

    iget-boolean p1, p1, Lcsc;->B:Z

    if-eqz p1, :cond_6

    move-object p1, v0

    check-cast p1, Lcpu;

    iget-object p1, p1, Lcpu;->v:Lczd;

    invoke-virtual {p1}, Lczd;->a()V

    move-object p1, v0

    check-cast p1, Lcpu;

    iget-object p1, p1, Lcpu;->w:Lczf;

    invoke-virtual {p1, v1}, Lczf;->c(Z)V

    :cond_6
    move-object p1, v0

    check-cast p1, Lcpu;

    iget-object p1, p1, Lcpu;->g:Lcty;

    invoke-virtual {p1}, Lcty;->f()V

    move-object p1, v0

    check-cast p1, Lcpu;

    iget-object p1, p1, Lcpu;->t:Lhkn;

    sget-object v4, Lhkm;->f:Lhkm;

    invoke-virtual {p1, v4}, Lhkh;->h(Ljava/lang/Enum;)V

    move-object p1, v0

    check-cast p1, Lcpu;

    iget-object p1, p1, Lcpu;->o:Lcvx;

    invoke-interface {p1}, Lcvx;->d()V

    move-object p1, v0

    check-cast p1, Lcpu;

    iget-object p1, p1, Lcpu;->I:Lkbf;

    invoke-interface {p1}, Lkbf;->a()V

    sget-object p1, Lcpt;->f:Lcpt;

    move-object v4, v0

    check-cast v4, Lcpu;

    invoke-virtual {v4, p1}, Lcpu;->j(Lcpt;)V

    move-object p1, v0

    check-cast p1, Lcpu;

    iget-object p1, p1, Lcpu;->m:Lcrz;

    iget-object p1, p1, Lcrz;->g:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    sget-object v4, Lcrx;->e:Lcrx;

    if-ne p1, v4, :cond_7

    move-object p1, v0

    check-cast p1, Lcpu;

    iget-object p1, p1, Lcpu;->m:Lcrz;

    sget-object v4, Lcrx;->c:Lcrx;

    invoke-virtual {p1, v4}, Lcrz;->a(Lcrx;)V

    :cond_7
    check-cast v2, Lcsu;

    move-object p1, v0

    check-cast p1, Lcpu;

    invoke-virtual {p1, v2}, Lcpu;->k(Lcsu;)V

    move-object p1, v0

    check-cast p1, Lcpu;

    iget-object p1, p1, Lcpu;->D:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_8

    invoke-interface {p1, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_8
    check-cast v0, Lcpu;

    iget-object p1, v0, Lcpu;->B:Ljava/util/List;

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    monitor-exit v3

    :goto_3
    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :goto_4
    :try_start_1
    check-cast v0, Llsr;

    iput-object v1, v0, Llsr;->f:Lnou;

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object p1, Lnor;->a:Lnou;

    return-object p1

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
