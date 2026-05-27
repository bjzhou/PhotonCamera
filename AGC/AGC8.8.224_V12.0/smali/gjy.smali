.class public final Lgjy;
.super Ljava/lang/Object;

# interfaces
.implements Lgms;


# static fields
.field private static final c:Lnak;


# instance fields
.field public final a:Lecd;

.field public final b:Lebv;

.field private final d:Lkli;

.field private final e:Lgdd;

.field private final f:Lkbc;

.field private final g:Lebw;

.field private final h:Lebl;

.field private final i:Legc;

.field private final j:Lgno;

.field private final k:Limq;

.field private final l:Ldhi;

.field private final m:Ljvs;

.field private final n:Ljava/lang/Integer;

.field private final o:Lewa;

.field private final p:Lgue;

.field private final q:Lgkf;

.field private final r:Lbkc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/commands/PckZslHdrPlusProcessor"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgjy;->c:Lnak;

    return-void
.end method

.method public constructor <init>(Lecd;Lkli;Lgdd;Lewa;Lgkf;Lebv;Lbkc;Lkbc;Lgue;Lebw;Lebl;Legc;Lgno;Limq;Ldhi;Ljvs;[B[B[B)V
    .locals 3

    move-object v0, p0

    move-object/from16 v1, p15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lgjy;->a:Lecd;

    move-object v2, p2

    iput-object v2, v0, Lgjy;->d:Lkli;

    move-object v2, p3

    iput-object v2, v0, Lgjy;->e:Lgdd;

    move-object v2, p4

    iput-object v2, v0, Lgjy;->o:Lewa;

    move-object v2, p5

    iput-object v2, v0, Lgjy;->q:Lgkf;

    move-object v2, p7

    iput-object v2, v0, Lgjy;->r:Lbkc;

    move-object v2, p6

    iput-object v2, v0, Lgjy;->b:Lebv;

    move-object v2, p8

    iput-object v2, v0, Lgjy;->f:Lkbc;

    move-object v2, p9

    iput-object v2, v0, Lgjy;->p:Lgue;

    move-object v2, p10

    iput-object v2, v0, Lgjy;->g:Lebw;

    move-object v2, p11

    iput-object v2, v0, Lgjy;->h:Lebl;

    move-object v2, p12

    iput-object v2, v0, Lgjy;->i:Legc;

    move-object/from16 v2, p13

    iput-object v2, v0, Lgjy;->j:Lgno;

    move-object/from16 v2, p14

    iput-object v2, v0, Lgjy;->k:Limq;

    iput-object v1, v0, Lgjy;->l:Ldhi;

    move-object/from16 v2, p16

    iput-object v2, v0, Lgjy;->m:Ljvs;

    sget-object v2, Ldhq;->v:Ldhk;

    invoke-interface {v1, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, Lgjy;->n:Ljava/lang/Integer;

    return-void
.end method

.method private static final k(Ljava/util/List;)V
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkeb;

    invoke-interface {v0}, Lkeb;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lkll;Ljava/util/List;Lgal;Lgkr;ILkou;Lebb;Lmqp;)V
    .locals 11

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v9, p1

    move-object/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lgjy;->j(Ljava/util/List;Lgal;Lgkr;IZLkou;Lebb;Leea;Lkll;Lmqp;)V

    return-void
.end method

.method public final b(Lkeb;Leea;ZIILnqg;Lmqp;)I
    .locals 14

    move-object v1, p0

    move-object v2, p1

    iget-object v0, v1, Lgjy;->f:Lkbc;

    const-string v3, "processFrame"

    invoke-interface {v0, v3}, Lkbc;->e(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, v1, Lgjy;->f:Lkbc;

    const-string v3, "awaitComplete"

    invoke-interface {v0, v3}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static {p1}, Lkfg;->y(Lkeb;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lgjy;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    invoke-interface {p1}, Lkeb;->b()Lkeg;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_0

    iget-object v3, v1, Lgjy;->f:Lkbc;

    const-string v4, "hdrPlusPayloadProcessorManager.addPayloadFrame"

    invoke-interface {v3, v4}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v3, v1, Lgjy;->b:Lebv;

    move-object/from16 v11, p2

    invoke-virtual {v3, v11, p1}, Lebv;->e(Leea;Lkeb;)V

    iget-object v3, v1, Lgjy;->f:Lkbc;

    invoke-interface {v3}, Lkbc;->f()V

    goto :goto_0

    :cond_0
    move-object/from16 v11, p2

    :goto_0
    invoke-interface {p1}, Lkeb;->c()Lkou;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v2, Lgjy;->c:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v3, 0xb33

    invoke-interface {v2, v3}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    add-int/lit8 v3, p4, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, v0, Lkeg;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Failure for frame %d @%d of %d, skipping."

    invoke-interface {v2, v5, v3, v0, v4}, Lnah;->B(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lgjy;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return p4

    :cond_1
    iget-object v4, v1, Lgjy;->f:Lkbc;

    const-string v5, "pckHdrZsl#addPayloadFrame"

    invoke-interface {v4, v5}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v4, v1, Lgjy;->p:Lgue;

    invoke-virtual {v4, p1}, Lgue;->a(Lkeb;)Lgli;

    move-result-object v4

    if-eqz p3, :cond_2

    invoke-virtual {v4}, Lgli;->e()Lkpb;

    move-result-object v5

    invoke-virtual {v4}, Lgli;->d()Lkpb;

    move-result-object v6

    invoke-virtual {v4}, Lgli;->a()Lkfj;

    move-result-object v7

    invoke-interface {v7}, Lkfj;->c()Lkll;

    move-result-object v7

    move-object v12, v5

    move-object v13, v6

    move-object v6, v7

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lgli;->f()Lkpb;

    move-result-object v5

    invoke-virtual {v4}, Lgli;->b()Lkfj;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6}, Lkfj;->c()Lkll;

    move-result-object v6

    const/4 v7, 0x0

    move-object v12, v5

    move-object v13, v7

    :goto_1
    invoke-virtual {v4}, Lgli;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez p3, :cond_3

    iget-object v4, v6, Lkll;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lgmq;->b(Lkou;Ljava/lang/String;)Lkou;

    move-result-object v3

    move-object v7, v3

    goto :goto_2

    :cond_3
    move-object v7, v3

    :goto_2
    invoke-interface {p1}, Lkeb;->close()V

    iget-object v2, v1, Lgjy;->a:Lecd;

    move-object/from16 v3, p2

    move-object v4, v6

    move/from16 v5, p4

    move-object v6, v7

    move-object/from16 v7, p6

    move-object v8, v12

    move-object v9, v13

    move-object/from16 v10, p7

    invoke-interface/range {v2 .. v10}, Lecd;->o(Leea;Lkll;ILkou;Lnqg;Lkpb;Lkpb;Lmqp;)V

    if-eqz v12, :cond_4

    invoke-virtual/range {p2 .. p2}, Leea;->a()I

    add-int/lit8 v0, p4, 0x1

    goto :goto_3

    :cond_4
    sget-object v2, Lgjy;->c:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v3, 0xb30

    invoke-interface {v2, v3}, Lnah;->G(I)Lnaz;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lnah;

    add-int/lit8 v2, p4, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-wide v7, v0, Lkeg;->c:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, v0, Lkeg;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Leea;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v4, "Ignoring missing raw frame %d of %d @%d (%d) for shot %d ."

    invoke-interface/range {v3 .. v9}, Lnah;->D(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v13, :cond_5

    invoke-interface {v13}, Lkpb;->close()V

    :cond_5
    move/from16 v0, p4

    :goto_3
    iget-object v2, v1, Lgjy;->f:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    iget-object v2, v1, Lgjy;->f:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    return v0

    :cond_6
    sget-object v0, Lgjy;->c:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v2, "Can\'t find the source camera for the secondary image."

    const/16 v3, 0xb32

    invoke-static {v0, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    new-instance v0, Lkdf;

    invoke-direct {v0, v2}, Lkdf;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_1
    invoke-interface {p1}, Lkeb;->b()Lkeg;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-wide v2, v2, Lkeg;->c:J

    goto :goto_4

    :cond_7
    const-wide/16 v2, -0x1

    :goto_4
    sget-object v4, Lgjy;->c:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    invoke-interface {v4, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v4, 0xb34

    invoke-interface {v0, v4}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v4, "Completion failure for frame %d @%d of %d, skipping."

    add-int/lit8 v5, p4, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v4, v5, v2, v3}, Lnah;->B(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lgjy;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v1, Lgjy;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return p4

    :goto_5
    iget-object v2, v1, Lgjy;->f:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    throw v0
.end method

.method protected final c(Ljava/util/List;Leea;ZILmqp;)I
    .locals 10

    iget-object v0, p0, Lgjy;->f:Lkbc;

    const-string v1, "findFramesToOmitDueToTemporalBinning"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lgjy;->j:Lgno;

    invoke-virtual {v0, p1}, Lgno;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lgjy;->f:Lkbc;

    const-string v2, "pckZslHdrPlusProcessor#processPayload"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkeb;

    invoke-interface {v3}, Lkeb;->b()Lkeg;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lgjy;->c:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0xb36

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Skipping invalid frame at %d"

    invoke-interface {v1, v2, v6}, Lnah;->p(Ljava/lang/String;I)V

    invoke-interface {v3}, Lkeb;->close()V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Lkeb;->close()V

    goto :goto_0

    :cond_1
    sget-object v8, Lnqg;->c:Lnqg;

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    move-object v9, p5

    invoke-virtual/range {v2 .. v9}, Lgjy;->b(Lkeb;Leea;ZIILnqg;Lmqp;)I

    move-result v6

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lgjy;->f:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    iget-object p1, p0, Lgjy;->n:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le v6, p1, :cond_3

    return v6

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Payload size too low: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final d(Leea;Lkou;Z)V
    .locals 1

    iget-object v0, p0, Lgjy;->a:Lecd;

    invoke-interface {v0, p1}, Lecd;->q(Leea;)V

    if-eqz p3, :cond_0

    iget-object p3, p0, Lgjy;->b:Lebv;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Lebv;->f(Leea;Lcom/google/googlex/gcam/BurstSpec;Lkou;)V

    :cond_0
    return-void
.end method

.method public final e(Lkeb;Leea;IILnqg;)I
    .locals 8

    const/4 v3, 0x1

    sget-object v7, Lmpx;->a:Lmpx;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lgjy;->b(Lkeb;Leea;ZIILnqg;Lmqp;)I

    move-result p1

    return p1
.end method

.method public final f(ILgkr;Lkou;Leea;Z)V
    .locals 5

    iget-object v0, p0, Lgjy;->f:Lkbc;

    const-string v1, "pckHdrZsl#endPayload"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lgjy;->a:Lecd;

    invoke-interface {v0, p4}, Lecd;->x(Leea;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p5, :cond_3

    iget-object v0, p0, Lgjy;->b:Lebv;

    invoke-virtual {v0, p4}, Lebv;->h(Leea;)V

    iget-object v0, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lgxl;->D()V

    iget-object v0, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lgxl;->k()Lhjc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p3, v1}, Lhjc;->c(Lkoq;Z)V

    iget-object p2, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p2}, Lgxl;->i()Lgya;

    move-result-object p2

    sget-object p3, Lgya;->b:Lgya;

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lgjy;->g:Lebw;

    invoke-virtual {p2}, Lebw;->b()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    sget-object p3, Lnlq;->d:Lnlq;

    invoke-virtual {p3}, Lnws;->O()Lnwn;

    move-result-object p3

    iget-object v2, p3, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p3}, Lnwn;->p()V

    :cond_1
    iget-object v2, p3, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lnlq;

    iget v4, v3, Lnlq;->a:I

    or-int/2addr v1, v4

    iput v1, v3, Lnlq;->a:I

    iput p2, v3, Lnlq;->b:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p3}, Lnwn;->p()V

    :cond_2
    iget-object p2, p3, Lnwn;->b:Lnws;

    check-cast p2, Lnlq;

    iget v1, p2, Lnlq;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p2, Lnlq;->a:I

    iput p1, p2, Lnlq;->c:I

    invoke-virtual {p3}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lnlq;

    check-cast v0, Lhjd;

    iput-object p1, v0, Lhjd;->s:Lnlq;

    :cond_3
    iget-object p1, p0, Lgjy;->a:Lecd;

    invoke-interface {p1, p4}, Lecd;->y(Leea;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lgjy;->f:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :cond_5
    :goto_1
    invoke-virtual {p4}, Leea;->a()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error ending the HDR+ payload, aborting shot "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lgjy;->c:Lnak;

    invoke-virtual {p2}, Lnaf;->b()Lnaz;

    move-result-object p2

    const-string p3, "%s"

    const/16 v0, 0xb3b

    invoke-static {p2, p3, p1, v0}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    if-eqz p5, :cond_6

    iget-object p2, p0, Lgjy;->b:Lebv;

    iget-object p3, p4, Leea;->v:Lgkr;

    iget-object p3, p3, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p3}, Lgxl;->h()Lgxy;

    move-result-object p3

    invoke-virtual {p2, p3}, Lebv;->d(Lgxy;)V

    :cond_6
    iget-object p2, p0, Lgjy;->a:Lecd;

    invoke-interface {p2, p4}, Lecd;->n(Leea;)V

    new-instance p2, Ldod;

    invoke-direct {p2, p1}, Ldod;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final g(Lkll;Lgkr;ILkou;Lebb;ZZ)Leea;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v9, p4

    move/from16 v10, p6

    :try_start_0
    iget-object v2, v1, Lgjy;->a:Lecd;

    move-object/from16 v11, p1

    invoke-interface {v2, v9, v11}, Lecd;->l(Lkou;Lkll;)Lnrg;

    move-result-object v2

    iget-object v3, v1, Lgjy;->a:Lecd;

    invoke-interface {v3, v2}, Lecd;->b(Lnrg;)I

    move-result v2

    iget-object v3, v1, Lgjy;->f:Lkbc;

    const-string v4, "createPostviewParams"

    invoke-interface {v3, v4}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v3, v1, Lgjy;->d:Lkli;

    iget-object v4, v1, Lgjy;->e:Lgdd;

    invoke-static {v3, v4}, Lebe;->b(Lkli;Lgdd;)Lcom/google/googlex/gcam/PostviewParams;

    move-result-object v12

    iget-object v3, v1, Lgjy;->f:Lkbc;

    const-string v4, "detectFusionRequest"

    invoke-interface {v3, v4}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v3, v1, Lgjy;->i:Legc;

    invoke-interface {v3, v9, v10}, Legc;->a(Lkou;Z)Lega;

    move-result-object v13

    iget-object v3, v13, Lega;->c:Legb;

    sget-object v4, Legb;->b:Legb;

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eq v3, v4, :cond_1

    iget-object v3, v13, Lega;->b:Lefz;

    sget-object v4, Lefz;->b:Lefz;

    if-eq v3, v4, :cond_1

    sget-object v4, Lefz;->c:Lefz;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    iget-object v4, v1, Lgjy;->f:Lkbc;

    invoke-interface {v4}, Lkbc;->f()V

    if-eqz v10, :cond_2

    iget-object v3, v1, Lgjy;->f:Lkbc;

    const-string v4, "createPortraitShotParams"

    invoke-interface {v3, v4}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v3, v1, Lgjy;->r:Lbkc;

    invoke-virtual {v3, v9, v2}, Lbkc;->x(Lkou;I)Lgxb;

    move-result-object v4

    iget-object v2, v1, Lgjy;->f:Lkbc;

    const-string v3, "getJpegRotation"

    invoke-interface {v2, v3}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v2, v0, Lgkr;->d:Ljava/lang/Object;

    check-cast v2, Lfte;

    iget v2, v2, Lfte;->a:I

    iget-object v3, v1, Lgjy;->k:Limq;

    iget-object v5, v1, Lgjy;->d:Lkli;

    iget-object v6, v1, Lgjy;->m:Ljvs;

    iget-object v7, v1, Lgjy;->l:Ldhi;

    invoke-static {v2, v3, v5, v6, v7}, Lcea;->b(ILimq;Lkli;Ljvs;Ldhi;)I

    move-result v6

    iget-object v2, v1, Lgjy;->f:Lkbc;

    const-string v3, "populateShotConfig"

    invoke-interface {v2, v3}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v2, v1, Lgjy;->o:Lewa;

    iget-object v8, v13, Lega;->b:Lefz;

    const/4 v7, 0x1

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    invoke-virtual/range {v2 .. v8}, Lewa;->d(Lgkr;Lgxb;Lebb;IZLefz;)V

    iget-object v2, v1, Lgjy;->f:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_4

    :goto_1
    move/from16 v2, p7

    if-eq v15, v2, :cond_3

    const/4 v2, -0x1

    const/4 v8, -0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    iget-object v2, v1, Lgjy;->h:Lebl;

    invoke-virtual {v2, v0}, Lebl;->o(Lgkr;)V

    iget-object v2, v1, Lgjy;->f:Lkbc;

    const-string v3, "pckHdrZsl#startZslShot"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v2, v1, Lgjy;->a:Lecd;

    move-object/from16 v3, p5

    iget-object v6, v3, Lebb;->g:Lgcc;

    xor-int/2addr v10, v15

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v12

    move-object/from16 v7, p4

    move/from16 v9, p3

    move-object v11, v13

    invoke-interface/range {v2 .. v11}, Lecd;->H(Lkll;Lgkr;Lcom/google/googlex/gcam/PostviewParams;Lgcc;Lkou;IIZLega;)Leea;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lkdf; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v1, Lgjy;->f:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    return-object v0

    :cond_4
    :try_start_1
    new-instance v0, Ldnv;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not processing secondary payload, mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ldnv;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lkdf; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    :goto_3
    :try_start_2
    sget-object v2, Lgjy;->c:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    invoke-interface {v2, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0xb39

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "Unable to start ZSL shot."

    invoke-interface {v0, v2}, Lnah;->o(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v1, Lgjy;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    const/4 v0, 0x0

    return-object v0

    :goto_4
    iget-object v2, v1, Lgjy;->f:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    throw v0
.end method

.method public final h(Ljava/util/List;Lgal;Lgkr;I)V
    .locals 12

    move-object v11, p0

    move-object v1, p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v11, Lgjy;->q:Lgkf;

    invoke-virtual {v0}, Lgkf;->a()Lebb;

    move-result-object v7

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v3, v0

    :goto_0
    move-object v4, v1

    check-cast v4, Lmyu;

    iget v4, v4, Lmyu;->c:I

    if-ge v2, v4, :cond_1

    iget-object v3, v11, Lgjy;->p:Lgue;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkeb;

    invoke-virtual {v3, v4}, Lgue;->a(Lkeb;)Lgli;

    move-result-object v3

    iget-object v4, v3, Lgli;->a:Lkeb;

    invoke-interface {v4}, Lkeb;->c()Lkou;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lgli;->a()Lkfj;

    move-result-object v0

    invoke-interface {v0}, Lkfj;->c()Lkll;

    move-result-object v0

    move-object v9, v0

    move-object v6, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_1
    move-object v9, v0

    move-object v6, v3

    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x1

    const/4 v8, 0x0

    sget-object v10, Lmpx;->a:Lmpx;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v10}, Lgjy;->j(Ljava/util/List;Lgal;Lgkr;IZLkou;Lebb;Leea;Lkll;Lmqp;)V

    return-void

    :cond_2
    invoke-static {p1}, Lgjy;->k(Ljava/util/List;)V

    new-instance v0, Ldoa;

    const-string v1, "No metadata found for the metering frame."

    invoke-direct {v0, v1}, Ldoa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ldnr;

    const-string v1, "No frames to process found."

    invoke-direct {v0, v1}, Ldnr;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final i(Ljava/util/List;Lgal;Lgkr;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lgjy;->h(Ljava/util/List;Lgal;Lgkr;I)V

    return-void
.end method

.method public final j(Ljava/util/List;Lgal;Lgkr;IZLkou;Lebb;Leea;Lkll;Lmqp;)V
    .locals 10

    move-object v9, p0

    invoke-interface {p2}, Lgal;->close()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, v9, Lgjy;->n:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_3

    :try_start_0
    iget-object v0, v9, Lgjy;->f:Lkbc;

    const-string v1, "pckHdrZsl#processFrames"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    if-nez p8, :cond_0

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v2, p9

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move v7, p5

    invoke-virtual/range {v1 .. v8}, Lgjy;->g(Lkll;Lgkr;ILkou;Lebb;ZZ)Leea;

    move-result-object v0
    :try_end_0
    .catch Lkdf; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object/from16 v7, p8

    :goto_0
    if-eqz v7, :cond_1

    :try_start_1
    iget-object v0, v9, Lgjy;->f:Lkbc;

    const-string v1, "pckHdrZsl#processPayload"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    move v0, p5

    move-object/from16 v8, p6

    invoke-virtual {p0, v7, v8, p5}, Lgjy;->d(Leea;Lkou;Z)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move v4, p5

    move-object/from16 v6, p10

    invoke-virtual/range {v1 .. v6}, Lgjy;->c(Ljava/util/List;Leea;ZILmqp;)I

    iget-object v1, v9, Lgjy;->f:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move-object v1, p0

    move-object v3, p3

    move-object/from16 v4, p6

    move-object v5, v7

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lgjy;->f(ILgkr;Lkou;Leea;Z)V
    :try_end_1
    .catch Lkdf; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lgjy;->k(Ljava/util/List;)V

    iget-object v0, v9, Lgjy;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_2
    sget-object v0, Lgjy;->c:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xb40

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Failed to initiate HDR plus shot capture."

    invoke-interface {v0, v1}, Lnah;->o(Ljava/lang/String;)V

    iget-object v0, v9, Lgjy;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    new-instance v0, Ldnw;

    const-string v1, "Invalid shot received from HdrPlusSession."

    invoke-direct {v0, v1}, Ldnw;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lkdf; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v7, p8

    :goto_1
    :try_start_3
    sget-object v1, Lgjy;->c:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    invoke-interface {v1, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0xb3f

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Error processing HDR+ payload."

    invoke-interface {v1, v2}, Lnah;->o(Ljava/lang/String;)V

    if-eqz v7, :cond_2

    iget-object v1, v9, Lgjy;->a:Lecd;

    invoke-interface {v1, v7}, Lecd;->n(Leea;)V

    :cond_2
    new-instance v1, Ldod;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ldod;-><init>(Ljava/lang/Throwable;[B)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-static {p1}, Lgjy;->k(Ljava/util/List;)V

    iget-object v1, v9, Lgjy;->f:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    throw v0

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Payload size too low: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
