.class public final Lgjb;
.super Ljava/lang/Object;

# interfaces
.implements Lgam;


# static fields
.field public static final a:Ljava/lang/Long;

.field public static final b:Lj$/time/Duration;

.field public static final c:Lj$/time/Duration;


# instance fields
.field public final d:Lkaq;

.field public final e:Lcfp;

.field public final f:Lebl;

.field public final g:Lecd;

.field public final h:Lkli;

.field public final i:Z

.field public final j:Lkbc;

.field public final k:Lika;

.field public final l:Lkai;

.field public final m:Lebi;

.field public final n:Lfdd;

.field public o:Lguh;

.field public p:Lguh;

.field private final q:Lgiv;

.field private final r:Lmqp;

.field private final s:Lken;

.field private final t:Lmqp;

.field private final u:Ljuf;

.field private v:Ljuf;

.field private final w:Lmbe;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lgjb;->a:Ljava/lang/Long;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v0

    sput-object v0, Lgjb;->b:Lj$/time/Duration;

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    sput-object v0, Lgjb;->c:Lj$/time/Duration;

    return-void
.end method

.method public constructor <init>(Lkaq;Lmqp;Lken;Lmqp;Ljuf;Lcfp;Lecd;Lebl;Lkli;Lika;Lkbc;Lmbe;Ljvk;Lebi;Lfdd;Lgiv;[B[B[B)V
    .locals 8

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v2, p10

    move-object/from16 v3, p15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v4, "PckLongExposureCmd"

    move-object v5, p1

    invoke-interface {p1, v4}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object v4

    iput-object v4, v0, Lgjb;->d:Lkaq;

    move-object/from16 v4, p16

    iput-object v4, v0, Lgjb;->q:Lgiv;

    move-object v4, p2

    iput-object v4, v0, Lgjb;->r:Lmqp;

    move-object v5, p4

    iput-object v5, v0, Lgjb;->t:Lmqp;

    iput-object v1, v0, Lgjb;->s:Lken;

    move-object v6, p6

    iput-object v6, v0, Lgjb;->e:Lcfp;

    move-object v6, p5

    iput-object v6, v0, Lgjb;->u:Ljuf;

    move-object/from16 v7, p8

    iput-object v7, v0, Lgjb;->f:Lebl;

    move-object v7, p7

    iput-object v7, v0, Lgjb;->g:Lecd;

    move-object/from16 v7, p9

    iput-object v7, v0, Lgjb;->h:Lkli;

    sget-object v7, Lika;->m:Lika;

    if-ne v2, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    iput-boolean v7, v0, Lgjb;->i:Z

    move-object/from16 v7, p11

    iput-object v7, v0, Lgjb;->j:Lkbc;

    move-object/from16 v7, p12

    iput-object v7, v0, Lgjb;->w:Lmbe;

    iput-object v2, v0, Lgjb;->k:Lika;

    move-object/from16 v2, p13

    iput-object v2, v0, Lgjb;->l:Lkai;

    move-object/from16 v2, p14

    iput-object v2, v0, Lgjb;->m:Lebi;

    iput-object v3, v0, Lgjb;->n:Lfdd;

    iget-object v2, v0, Lgjb;->o:Lguh;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lguh;->b()V

    :cond_1
    iget-object v2, v0, Lgjb;->p:Lguh;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lguh;->b()V

    :cond_2
    invoke-virtual {p2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p4}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkgq;

    const/4 v4, 0x3

    invoke-interface {p3, v2, v4}, Lken;->r(Lkgq;I)Lkef;

    move-result-object v1

    invoke-virtual {p5}, Ljuf;->c()Ljuf;

    move-result-object v2

    iput-object v2, v0, Lgjb;->v:Ljuf;

    invoke-virtual {v2, v1}, Ljuf;->d(Lkad;)V

    new-instance v2, Ldsp;

    invoke-direct {v2, p0, v4}, Ldsp;-><init>(Lgjb;I)V

    invoke-interface {v1, v2}, Lkef;->k(Lkee;)V

    iget-object v1, v0, Lgjb;->v:Ljuf;

    invoke-virtual {v1, v3}, Ljuf;->d(Lkad;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    iget-object v0, p0, Lgjb;->q:Lgiv;

    iget-object v0, v0, Lgiv;->b:Ljvs;

    return-object v0
.end method

.method public final b()Ljvs;
    .locals 1

    iget-object v0, p0, Lgjb;->q:Lgiv;

    invoke-virtual {v0}, Lgiv;->b()Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lgal;Lgkr;)V
    .locals 6

    iget-object v0, p2, Lgkr;->c:Ljava/lang/Object;

    iget-object v1, p0, Lgjb;->j:Lkbc;

    const-string v2, "mv-setup"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    instance-of v1, v0, Lgwv;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lgwv;

    invoke-static {v1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lmpx;->a:Lmpx;

    :goto_0
    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lgjb;->d:Lkaq;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Capture session not a LongExposureCaptureSession: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lkaq;->i(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v0

    iget-object v2, p0, Lgjb;->w:Lmbe;

    invoke-virtual {v2, p2}, Lmbe;->d(Lgkr;)Lffr;

    move-result-object v2

    if-eqz v0, :cond_3

    iget-object v3, p0, Lgjb;->j:Lkbc;

    const-string v4, "mv-beginMoments"

    invoke-interface {v3, v4}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Lffr;->b()V

    iget-object v3, p0, Lgjb;->j:Lkbc;

    const-string v4, "mv-startMicrovideo"

    invoke-interface {v3, v4}, Lkbc;->g(Ljava/lang/String;)V

    invoke-virtual {v2}, Lffr;->a()Lmqp;

    move-result-object v3

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lgjb;->j:Lkbc;

    const-string v5, "mv-attachSession"

    invoke-interface {v4, v5}, Lkbc;->g(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgwv;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfgd;

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iput-object v3, v1, Lgwv;->d:Lmqp;

    :cond_2
    iget-object v1, p0, Lgjb;->j:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    :cond_3
    iget-object v1, p0, Lgjb;->j:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    iget-object v1, p0, Lgjb;->j:Lkbc;

    const-string v3, "captureImage"

    invoke-interface {v1, v3}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lgjb;->q:Lgiv;

    invoke-virtual {v1, p1, p2}, Lgiv;->c(Lgal;Lgkr;)V

    iget-object p1, p0, Lgjb;->j:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    if-eqz v0, :cond_4

    iget-object p1, p0, Lgjb;->j:Lkbc;

    const-string p2, "mv-endMoments"

    invoke-interface {p1, p2}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Lffr;->c()V

    iget-object p1, p0, Lgjb;->j:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    :cond_4
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lmoz;->y(Ljava/lang/Object;)Lmqo;

    move-result-object v0

    iget-object v1, p0, Lgjb;->q:Lgiv;

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmqo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
