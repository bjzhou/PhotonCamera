.class public final Lffp;
.super Ljava/lang/Object;

# interfaces
.implements Lfge;


# static fields
.field public static final a:Lnak;


# instance fields
.field private final A:Z

.field private final B:Ljvs;

.field private final C:Lgzm;

.field private final D:Ljvs;

.field private final E:Ljvq;

.field private final F:Lcvr;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lfgh;

.field public final e:Ljava/lang/Object;

.field public final f:Lfey;

.field public final g:Lmqp;

.field public final h:Lmqp;

.field public final i:Lfst;

.field public final j:Lfhg;

.field public final k:Ldhi;

.field public final l:Z

.field public final m:Lfex;

.field public final n:Lffv;

.field public final o:Landroid/os/Handler;

.field public final p:Lgvb;

.field public final q:Lkli;

.field public final r:Leah;

.field public final s:Lmrl;

.field public t:J

.field public final u:Ljava/util/List;

.field public final v:Ldne;

.field public final w:Lmbe;

.field public final x:Lgkr;

.field public final y:Lbkb;

.field private final z:Lfkk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0xf

    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    const-string v0, "com/google/android/apps/camera/microvideo/MicrovideoControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lffp;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lfgh;Lfey;Ljvq;Lmqp;Lmqp;Lfst;Lfhg;Lmbe;Lfkk;Ldhi;Lfex;Lgvb;Lkli;Landroid/os/Handler;Lffv;Leah;Lcvr;Lbkb;Lgkr;Ldne;Ljvs;Lgzm;Ljvs;[B[B[B[B[B[B)V
    .locals 3

    move-object v0, p0

    move-object v1, p12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lffe;->a:Lffe;

    iput-object v2, v0, Lffp;->s:Lmrl;

    move-object v2, p3

    iput-object v2, v0, Lffp;->d:Lfgh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    iput-object v2, v0, Lffp;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p2

    iput-object v2, v0, Lffp;->c:Ljava/util/concurrent/Executor;

    move-object v2, p4

    iput-object v2, v0, Lffp;->f:Lfey;

    move-object v2, p5

    iput-object v2, v0, Lffp;->E:Ljvq;

    move-object v2, p6

    iput-object v2, v0, Lffp;->g:Lmqp;

    move-object v2, p7

    iput-object v2, v0, Lffp;->h:Lmqp;

    move-object v2, p8

    iput-object v2, v0, Lffp;->i:Lfst;

    move-object v2, p9

    iput-object v2, v0, Lffp;->j:Lfhg;

    move-object v2, p10

    iput-object v2, v0, Lffp;->w:Lmbe;

    move-object v2, p11

    iput-object v2, v0, Lffp;->z:Lfkk;

    iput-object v1, v0, Lffp;->k:Ldhi;

    move-object/from16 v2, p13

    iput-object v2, v0, Lffp;->m:Lfex;

    move-object/from16 v2, p17

    iput-object v2, v0, Lffp;->n:Lffv;

    move-object/from16 v2, p16

    iput-object v2, v0, Lffp;->o:Landroid/os/Handler;

    move-object/from16 v2, p14

    iput-object v2, v0, Lffp;->p:Lgvb;

    move-object/from16 v2, p15

    iput-object v2, v0, Lffp;->q:Lkli;

    move-object/from16 v2, p18

    iput-object v2, v0, Lffp;->r:Leah;

    move-object/from16 v2, p19

    iput-object v2, v0, Lffp;->F:Lcvr;

    move-object/from16 v2, p22

    iput-object v2, v0, Lffp;->v:Ldne;

    move-object/from16 v2, p20

    iput-object v2, v0, Lffp;->y:Lbkb;

    move-object/from16 v2, p21

    iput-object v2, v0, Lffp;->x:Lgkr;

    sget-object v2, Ldhv;->C:Ldhj;

    invoke-interface {p12, v2}, Ldhi;->l(Ldhj;)Z

    move-result v2

    iput-boolean v2, v0, Lffp;->A:Z

    move-object/from16 v2, p23

    iput-object v2, v0, Lffp;->B:Ljvs;

    move-object/from16 v2, p24

    iput-object v2, v0, Lffp;->C:Lgzm;

    move-object/from16 v2, p25

    iput-object v2, v0, Lffp;->D:Ljvs;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lffp;->e:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lffp;->u:Ljava/util/List;

    invoke-interface {p12}, Ldhi;->e()V

    sget-object v2, Ldhv;->k:Ldhj;

    invoke-interface {p12, v2}, Ldhi;->l(Ldhj;)Z

    move-result v2

    iput-boolean v2, v0, Lffp;->l:Z

    sget-object v2, Ldho;->a:Ldhk;

    invoke-interface {p12}, Ldhi;->f()V

    invoke-interface {p12}, Ldhi;->c()V

    invoke-interface {p12}, Ldhi;->c()V

    invoke-interface {p12}, Ldhi;->e()V

    return-void
.end method

.method public static b(Lnou;Lnno;Lnno;)Lnou;
    .locals 1

    invoke-static {p0}, Lnoo;->q(Lnou;)Lnoo;

    move-result-object p0

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {p0, p1, v0}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p0

    new-instance p1, Lcmq;

    const/4 v0, 0x5

    invoke-direct {p1, p2, v0}, Lcmq;-><init>(Lnno;I)V

    sget-object p2, Lnnv;->a:Lnnv;

    const-class v0, Ljava/lang/RuntimeException;

    invoke-static {p0, v0, p1, p2}, Lnml;->j(Lnou;Ljava/lang/Class;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lfst;Lgxy;Landroid/os/Handler;)V
    .locals 3

    new-instance v0, Levy;

    const/16 v1, 0x8

    invoke-direct {v0, p0, p1, v1}, Levy;-><init>(Lfst;Lgxy;I)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public static final f(Lffo;J)Lnjo;
    .locals 8

    iget-object v0, p0, Lffo;->d:Lfht;

    invoke-virtual {v0}, Lfht;->a()Lfht;

    move-result-object v0

    sget-object v1, Lnjo;->n:Lnjo;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-wide v2, p0, Lffo;->f:J

    sub-long/2addr p1, v2

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_0
    long-to-int p2, p1

    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lnjo;

    iget v2, p1, Lnjo;->a:I

    const/4 v3, 0x1

    or-int/2addr v2, v3

    iput v2, p1, Lnjo;->a:I

    iput p2, p1, Lnjo;->b:I

    iget-boolean p1, p0, Lffo;->o:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lffo;->q:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object p1, p0, Lffo;->q:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    :cond_1
    :try_start_0
    iget-object p1, p0, Lffo;->h:Lnph;

    invoke-static {p1}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, v0, Lfht;->c:J

    sub-long/2addr p1, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    long-to-int p2, p1

    iget-object p1, v1, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lnjo;

    iget v2, p1, Lnjo;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Lnjo;->a:I

    iput p2, p1, Lnjo;->c:I

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, v0, Lfht;->d:J

    iget-wide v6, p0, Lffo;->e:J

    sub-long/2addr v4, v6

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4, v5, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    long-to-int p2, p1

    iget-object p1, v1, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3
    iget-object p1, v1, Lnwn;->b:Lnws;

    move-object v2, p1

    check-cast v2, Lnjo;

    iget v4, v2, Lnjo;->a:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v2, Lnjo;->a:I

    iput p2, v2, Lnjo;->d:I

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_4
    iget-object p1, v1, Lnwn;->b:Lnws;

    move-object p2, p1

    check-cast p2, Lnjo;

    iget v2, p2, Lnjo;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p2, Lnjo;->a:I

    iput-boolean v3, p2, Lnjo;->f:Z

    iget p2, v0, Lfht;->b:I

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_5
    iget-object p1, v1, Lnwn;->b:Lnws;

    move-object v0, p1

    check-cast v0, Lnjo;

    iget v2, v0, Lnjo;->a:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v0, Lnjo;->a:I

    iput p2, v0, Lnjo;->e:I

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_6
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lnjo;

    iget p2, p1, Lnjo;->a:I

    or-int/lit8 p2, p2, 0x20

    iput p2, p1, Lnjo;->a:I

    const/4 p2, 0x0

    iput-boolean p2, p1, Lnjo;->g:Z

    iget p1, p0, Lffo;->t:I

    invoke-static {p1}, Lffp;->l(I)I

    move-result p1

    iget-object p2, v1, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_7
    iget-object p2, v1, Lnwn;->b:Lnws;

    move-object v0, p2

    check-cast v0, Lnjo;

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lnjo;->h:I

    iget p1, v0, Lnjo;->a:I

    or-int/lit8 p1, p1, 0x40

    iput p1, v0, Lnjo;->a:I

    iget p1, p0, Lffo;->u:I

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_8
    iget-object p2, v1, Lnwn;->b:Lnws;

    check-cast p2, Lnjo;

    add-int/lit8 v0, p1, -0x1

    if-eqz p1, :cond_b

    iput v0, p2, Lnjo;->l:I

    iget p1, p2, Lnjo;->a:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p2, Lnjo;->a:I

    iget-object p1, p0, Lffo;->i:Lnou;

    invoke-interface {p1}, Lnou;->isDone()Z

    move-result p1

    invoke-static {p1}, Lmoz;->p(Z)V

    iget-object p1, p0, Lffo;->i:Lnou;

    invoke-static {p1}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, v1, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_9
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lnjo;

    iget p2, p1, Lnjo;->a:I

    or-int/lit16 p2, p2, 0x80

    iput p2, p1, Lnjo;->a:I

    iput-boolean v3, p1, Lnjo;->j:Z

    :cond_a
    iget-object p0, p0, Lffo;->v:Llhm;

    invoke-virtual {p0, v1}, Llhm;->h(Lnwn;)V

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p0

    check-cast p0, Lnjo;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Shutter timestamp unavailable for stats collection"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final g(Lffo;)Lnjo;
    .locals 4

    sget-object v0, Lnjo;->n:Lnjo;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lnjo;

    iget v2, v1, Lnjo;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lnjo;->a:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Lnjo;->f:Z

    iget v1, p0, Lffo;->t:I

    invoke-static {v1}, Lffp;->l(I)I

    move-result v1

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lnjo;

    add-int/lit8 v1, v1, -0x1

    iput v1, v3, Lnjo;->h:I

    iget v1, v3, Lnjo;->a:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v3, Lnjo;->a:I

    iget p0, p0, Lffo;->u:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lnjo;

    add-int/lit8 v2, p0, -0x1

    if-eqz p0, :cond_3

    iput v2, v1, Lnjo;->l:I

    iget p0, v1, Lnjo;->a:I

    or-int/lit16 p0, p0, 0x200

    iput p0, v1, Lnjo;->a:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p0

    check-cast p0, Lnjo;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method

.method public static final i(Lffo;Ldqx;)V
    .locals 3

    iget-object v0, p0, Lffo;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Lmoz;->p(Z)V

    :try_start_0
    iget-object v0, p1, Ldqx;->b:Ljava/lang/Object;

    iget-object v1, p1, Ldqx;->d:Ljava/lang/Object;

    check-cast v1, Lmqp;

    invoke-virtual {v1}, Lmqp;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/camera/exif/ExifInterface;

    iget-object v2, p1, Ldqx;->a:Ljava/lang/Object;

    check-cast v2, Lgxn;

    iget-object v2, v2, Lgxn;->a:Lkph;

    check-cast v0, [B

    invoke-static {v0, v1, v2}, Llho;->B([BLcom/google/android/libraries/camera/exif/ExifInterface;Lkph;)J

    iget-object v0, p1, Ldqx;->e:Ljava/lang/Object;

    iget-object v1, p1, Ldqx;->a:Ljava/lang/Object;

    check-cast v1, Lgxn;

    iget-object v1, v1, Lgxn;->a:Lkph;

    invoke-interface {v1}, Lkph;->a()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lhjc;->d(J)V

    iget-object v0, p1, Ldqx;->a:Ljava/lang/Object;

    check-cast v0, Lgxn;

    invoke-virtual {v0}, Lgxn;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lffo;->c:Lgxn;

    invoke-virtual {v0}, Lgxn;->a()V

    iget-object v0, p0, Lffo;->m:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object p0, p0, Lffo;->m:Lnph;

    iget-object p1, p1, Ldqx;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lffp;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    invoke-interface {v1, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x898

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Could not move original image to place"

    invoke-interface {v1, v2}, Lnah;->o(Ljava/lang/String;)V

    iget-object v1, p0, Lffo;->m:Lnph;

    invoke-virtual {v1, v0}, Lnph;->a(Ljava/lang/Throwable;)Z

    iget-object p1, p1, Ldqx;->a:Ljava/lang/Object;

    check-cast p1, Lgxn;

    invoke-virtual {p1}, Lgxn;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lffo;->c:Lgxn;

    invoke-virtual {p0}, Lgxn;->a()V

    return-void

    :goto_0
    iget-object p0, p0, Lffo;->c:Lgxn;

    invoke-virtual {p0}, Lgxn;->a()V

    throw p1
.end method

.method public static final k(Lffo;Ljava/lang/Throwable;Ldqx;)V
    .locals 5

    iget-object v0, p0, Lffo;->a:Lgxy;

    iget-object v0, p0, Lffo;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lffo;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lffo;->s:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lffo;->s:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfkd;

    invoke-virtual {v0}, Lfkd;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lffo;->j:Lgxl;

    new-instance v3, Ldny;

    iget-object v4, p0, Lffo;->s:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfkd;

    iget v4, v4, Lfkd;->i:I

    invoke-direct {v3, v4, p1}, Ldny;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lgxl;->w(Ljava/lang/Throwable;)V

    const-string p1, "LongShot Video Cancelled. Reason = "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lffo;->j:Lgxl;

    new-instance v2, Ldny;

    invoke-direct {v2, p1}, Ldny;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Lgxl;->w(Ljava/lang/Throwable;)V

    const-string p1, "LongShot Video Cancelled."

    :goto_0
    iget-object v0, p0, Lffo;->m:Lnph;

    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnph;->a(Ljava/lang/Throwable;)Z

    goto :goto_1

    :cond_1
    invoke-static {p0, p2}, Lffp;->i(Lffo;Ldqx;)V

    :goto_1
    iget-object p1, p0, Lffo;->c:Lgxn;

    invoke-virtual {p1}, Lgxn;->a()V

    iget-object p1, p2, Ldqx;->e:Ljava/lang/Object;

    sget-object p2, Lnjo;->n:Lnjo;

    invoke-virtual {p2}, Lnws;->O()Lnwn;

    move-result-object p2

    iget-object v0, p2, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_2
    iget-object v0, p2, Lnwn;->b:Lnws;

    move-object v2, v0

    check-cast v2, Lnjo;

    iget v3, v2, Lnjo;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lnjo;->a:I

    const/4 v3, 0x0

    iput-boolean v3, v2, Lnjo;->f:Z

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_3
    iget-object v0, p2, Lnwn;->b:Lnws;

    check-cast v0, Lnjo;

    iget v2, v0, Lnjo;->a:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Lnjo;->a:I

    iput-boolean v1, v0, Lnjo;->g:Z

    iget v0, p0, Lffo;->t:I

    invoke-static {v0}, Lffp;->l(I)I

    move-result v0

    iget-object v1, p2, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_4
    iget-object v1, p2, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnjo;

    add-int/lit8 v0, v0, -0x1

    iput v0, v2, Lnjo;->h:I

    iget v0, v2, Lnjo;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v2, Lnjo;->a:I

    iget v0, p0, Lffo;->u:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_5
    iget-object v1, p2, Lnwn;->b:Lnws;

    check-cast v1, Lnjo;

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    iput v2, v1, Lnjo;->l:I

    iget v0, v1, Lnjo;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, v1, Lnjo;->a:I

    iget-object v0, p0, Lffo;->s:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p0, p0, Lffo;->s:Lmqp;

    invoke-virtual {p0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfkd;

    iget p0, p0, Lfkd;->i:I

    iget-object v0, p2, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_6
    iget-object v0, p2, Lnwn;->b:Lnws;

    check-cast v0, Lnjo;

    add-int/lit8 v1, p0, -0x1

    if-eqz p0, :cond_7

    iput v1, v0, Lnjo;->m:I

    iget p0, v0, Lnjo;->a:I

    or-int/lit16 p0, p0, 0x400

    iput p0, v0, Lnjo;->a:I

    goto :goto_2

    :cond_7
    throw v3

    :cond_8
    :goto_2
    invoke-virtual {p2}, Lnwn;->i()Lnws;

    move-result-object p0

    check-cast p0, Lnjo;

    check-cast p1, Lhjd;

    iput-object p0, p1, Lhjd;->l:Lnjo;

    return-void

    :cond_9
    throw v3

    :cond_a
    sget-object p0, Lffp;->a:Lnak;

    invoke-virtual {p0}, Lnaf;->c()Lnaz;

    move-result-object p0

    const-string p1, "Cancelling microvideo but result has been submitted already"

    const/16 p2, 0x8a4

    invoke-static {p0, p1, p2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void
.end method

.method private static final l(I)I
    .locals 0

    if-eqz p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x4

    return p0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final declared-synchronized a(Lgxl;IZLnou;)Lfgd;
    .locals 17

    move-object/from16 v13, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Lgxl;->h()Lgxy;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lgxl;->i()Lgya;

    move-result-object v1

    sget-object v2, Lgya;->o:Lgya;

    iget-object v3, v13, Lffp;->f:Lfey;

    invoke-virtual {v3}, Lfey;->g()Z

    move-result v3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_0
    if-nez v3, :cond_2

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Lffu;

    invoke-direct {v0, v14}, Lffu;-><init>(Lgxy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_2
    :goto_2
    if-nez v9, :cond_4

    :try_start_1
    iget-object v1, v13, Lffp;->D:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, v13, Lffp;->A:Z

    if-eqz v1, :cond_4

    iget-object v1, v13, Lffp;->C:Lgzm;

    sget-object v2, Lgzd;->ax:Lgzs;

    invoke-interface {v1, v2}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljfc;->j(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object v1, v13, Lffp;->B:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x40200000    # 2.5f

    cmpl-float v1, v1, v2

    if-gez v1, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Lffu;

    invoke-direct {v0, v14}, Lffu;-><init>(Lgxy;)V

    goto :goto_1

    :cond_4
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {}, Lflb;->b()V

    sget-object v3, Lfgk;->b:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v3, Lfgk;->c:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    sget-boolean v3, Lfgk;->a:Z

    iget-object v3, v13, Lffp;->e:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v9, :cond_5

    :try_start_2
    iget-object v4, v13, Lffp;->z:Lfkk;

    invoke-virtual {v4}, Lfkk;->b()V

    iget-object v4, v13, Lffp;->h:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v13, Lffp;->h:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfgp;

    iget-object v5, v4, Lfgp;->c:Lmqp;

    invoke-virtual {v5}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v4, Lfgp;->a:Lmqp;

    invoke-virtual {v5}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v4, Lfgp;->d:Ljava/util/concurrent/Executor;

    new-instance v6, Lfcz;

    const/16 v7, 0xd

    invoke-direct {v6, v4, v7}, Lfcz;-><init>(Lfgp;I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {p1 .. p1}, Lgxl;->d()J

    move-result-wide v5

    add-long/2addr v5, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    iget-wide v1, v13, Lffp;->t:J

    const-wide/16 v7, 0x0

    cmp-long v4, v1, v7

    if-nez v4, :cond_7

    sget-object v1, Lffp;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x884

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Taking picture before any frames came in; aborting."

    invoke-interface {v1, v2}, Lnah;->o(Ljava/lang/String;)V

    if-eqz v9, :cond_6

    iget-object v1, v13, Lffp;->k:Ldhi;

    sget-object v2, Ldhv;->x:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Taking long shot before any frames came in."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lgxl;->w(Ljava/lang/Throwable;)V

    new-instance v0, Lffu;

    invoke-direct {v0, v14}, Lffu;-><init>(Lgxy;)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_6
    :try_start_3
    new-instance v0, Lffu;

    invoke-direct {v0, v14}, Lffu;-><init>(Lgxy;)V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_7
    :try_start_4
    iget-object v1, v13, Lffp;->u:Ljava/util/List;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, v13, Lffp;->k:Ldhi;

    sget-object v2, Ldhv;->a:Ldhk;

    invoke-interface {v1}, Ldhi;->f()V

    invoke-interface/range {p1 .. p1}, Lgxl;->i()Lgya;

    move-result-object v1

    sget-object v2, Lgya;->o:Lgya;

    if-ne v1, v2, :cond_9

    iget-object v1, v13, Lffp;->E:Ljvq;

    invoke-virtual {v1}, Ljvq;->f()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    new-instance v1, Lhks;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lhks;-><init>([B)V

    invoke-interface {v0, v1}, Lgxl;->w(Ljava/lang/Throwable;)V

    new-instance v0, Lffu;

    invoke-direct {v0, v14}, Lffu;-><init>(Lgxy;)V

    goto/16 :goto_1

    :cond_9
    :goto_4
    invoke-interface/range {p1 .. p1}, Lgxl;->i()Lgya;

    move-result-object v1

    sget-object v2, Lgya;->o:Lgya;

    if-ne v1, v2, :cond_a

    invoke-interface/range {p1 .. p1}, Lgxl;->y()V

    :cond_a
    iget-object v1, v13, Lffp;->i:Lfst;

    invoke-interface {v1}, Lfst;->a()Lkad;

    move-result-object v12

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v15

    iget-object v1, v13, Lffp;->F:Lcvr;

    invoke-virtual {v1, v14}, Lcvr;->K(Lgxy;)Leeb;

    move-result-object v1

    new-instance v2, Lffa;

    invoke-direct {v2, v13, v15}, Lffa;-><init>(Lffp;Lnou;)V

    invoke-virtual {v1, v2}, Leeb;->a(Lecm;)V

    iget-object v11, v13, Lffp;->b:Ljava/util/concurrent/Executor;

    new-instance v10, Lffc;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v7, p1

    move/from16 v8, p3

    move-object v0, v10

    move/from16 v10, p2

    move-object/from16 v16, v14

    move-object v14, v11

    move-object/from16 v11, p4

    invoke-direct/range {v1 .. v12}, Lffc;-><init>(Lffp;Lgxy;Lnph;JLgxl;ZZILnou;Lkad;)V

    invoke-interface {v14, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Lffl;

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v13, v2, v15, v1}, Lffl;-><init>(Lffp;Lgxy;Lnph;Lgxl;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public final declared-synchronized c(Lffo;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lffo;->b:Lfkm;

    sget-object v1, Lfkd;->c:Lfkd;

    invoke-interface {v0, v1}, Lfkm;->a(Lfkd;)V

    iget-object v0, p1, Lffo;->n:Lkxv;

    invoke-interface {v0}, Lkxv;->c()V

    iget-object v0, p1, Lffo;->c:Lgxn;

    invoke-virtual {v0}, Lgxn;->a()V

    iget-object p1, p1, Lffo;->a:Lgxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lffp;->k:Ldhi;

    sget-object v0, Ldhv;->a:Ldhk;

    invoke-interface {p1}, Ldhi;->c()V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lffp;->k:Ldhi;

    sget-object v0, Ldhv;->l:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public final h(Lffo;Ljava/lang/Throwable;Ldqx;)V
    .locals 3

    sget-object v0, Lffp;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-interface {v0, p2}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x89d

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "%s: Microvideo session failed"

    iget-object v2, p1, Lffo;->a:Lgxy;

    invoke-interface {v0, v1, v2}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lffp;->j:Lfhg;

    invoke-interface {v0}, Lfhg;->b()V

    iget-object v0, p1, Lffo;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lffo;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lffo;->m:Lnph;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "LongShot video failed!"

    invoke-direct {v1, v2, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lnph;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1, p3}, Lffp;->i(Lffo;Ldqx;)V

    :goto_0
    iget-object p2, p3, Ldqx;->e:Ljava/lang/Object;

    invoke-static {p1}, Lffp;->g(Lffo;)Lnjo;

    move-result-object p1

    check-cast p2, Lhjd;

    iput-object p1, p2, Lhjd;->l:Lnjo;

    return-void
.end method

.method public final j(Lffo;Ldqx;J)V
    .locals 5

    iget-object v0, p1, Lffo;->a:Lgxy;

    iget-object v0, p1, Lffo;->q:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Ldqx;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    check-cast v1, Lhjd;

    iput-wide v2, v1, Lhjd;->a:J

    goto :goto_0

    :cond_0
    sget-object v0, Lffp;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x8a0

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    iget-object v1, p1, Lffo;->a:Lgxy;

    const-string v2, "No recording-end timestamp recorded for %s"

    invoke-interface {v0, v2, v1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    :try_start_0
    iget-object v0, p1, Lffo;->c:Lgxn;

    iget-object v0, v0, Lgxn;->a:Lkph;

    iget-object v1, p1, Lffo;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lffp;->k:Ldhi;

    sget-object v3, Ldhw;->K:Ldhj;

    invoke-interface {v1, v3}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lffp;->n:Lffv;

    invoke-virtual {v1, v0}, Lffv;->a(Lkph;)V

    :cond_1
    iget-object v1, p2, Ldqx;->e:Ljava/lang/Object;

    invoke-interface {v0}, Lkph;->a()J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Lhjc;->d(J)V

    iget-object v1, p1, Lffo;->m:Lnph;

    invoke-virtual {v1}, Lnph;->isDone()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lmoz;->p(Z)V

    iget-object v1, p2, Ldqx;->e:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lffp;->f(Lffo;J)Lnjo;

    move-result-object v2

    check-cast v1, Lhjd;

    iput-object v2, v1, Lhjd;->l:Lnjo;

    const-string v1, "LS"

    invoke-interface {v0, v1}, Lkph;->h(Ljava/lang/String;)V

    iget-object v0, p1, Lffo;->c:Lgxn;

    invoke-virtual {v0}, Lgxn;->b()V

    iget-object v0, p1, Lffo;->m:Lnph;

    new-instance v1, Lhkt;

    sget-object v2, Lkqi;->e:Lkqi;

    invoke-direct {v1, v2}, Lhkt;-><init>(Lkqi;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    iget-object p3, p2, Ldqx;->c:Ljava/lang/Object;

    check-cast p3, Lhkt;

    iget-object p3, p3, Lhkt;->c:Lmqp;

    invoke-virtual {p3}, Lmqp;->f()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-virtual {v1, p3}, Lhkt;->a(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    iget-object p3, p2, Ldqx;->c:Ljava/lang/Object;

    move-object p4, p3

    check-cast p4, Lhkt;

    iget-object p4, p4, Lhkt;->d:Lmqp;

    iput-object p4, v1, Lhkt;->d:Lmqp;

    check-cast p3, Lhkt;

    iget-object p3, p3, Lhkt;->b:Lmqp;

    invoke-virtual {p3}, Lmqp;->f()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkab;

    invoke-virtual {v1, p3}, Lhkt;->b(Lkab;)V

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p3, Ljava/lang/IllegalStateException;

    const-string p4, "Trying to set final file but it has already been submitted."

    invoke-direct {p3, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p3

    invoke-virtual {p0, p1, p3, p2}, Lffp;->h(Lffo;Ljava/lang/Throwable;Ldqx;)V

    return-void
.end method
