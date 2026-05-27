.class public final Lgil;
.super Ljava/lang/Object;

# interfaces
.implements Lgnk;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lmvf;

.field public final c:Lkef;

.field private final d:Lmrl;

.field private final e:Lfvt;

.field private final f:J

.field private final g:Lgno;

.field private final h:Ljava/util/Set;

.field private final i:Lken;

.field private final j:Lkbc;

.field private final k:I

.field private final l:Lbkc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/commands/PckFilteredRingBuffer"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgil;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljuf;Lfvt;Lnou;Lgno;Ljava/util/Set;Lbkc;Lken;Lkbc;JLkef;Lmrl;I[B[B[B)V
    .locals 11

    move-object v0, p0

    move-object v1, p4

    move-object/from16 v9, p11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lmvf;->v()Lmvf;

    move-result-object v2

    iput-object v2, v0, Lgil;->b:Lmvf;

    move-object v2, p2

    iput-object v2, v0, Lgil;->e:Lfvt;

    move-object/from16 v2, p12

    iput-object v2, v0, Lgil;->d:Lmrl;

    move/from16 v2, p13

    iput v2, v0, Lgil;->k:I

    move-wide/from16 v2, p9

    iput-wide v2, v0, Lgil;->f:J

    iput-object v9, v0, Lgil;->c:Lkef;

    iput-object v1, v0, Lgil;->g:Lgno;

    move-object/from16 v2, p5

    iput-object v2, v0, Lgil;->h:Ljava/util/Set;

    move-object/from16 v2, p6

    iput-object v2, v0, Lgil;->l:Lbkc;

    move-object/from16 v2, p7

    iput-object v2, v0, Lgil;->i:Lken;

    move-object/from16 v2, p8

    iput-object v2, v0, Lgil;->j:Lkbc;

    invoke-interface/range {p11 .. p11}, Lkef;->q()Lkgq;

    move-result-object v2

    iget-object v2, v2, Lkgq;->c:Lmwn;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkfj;

    iget-object v4, v0, Lgil;->b:Lmvf;

    invoke-interface {v3}, Lkfj;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lmst;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v2, p1

    invoke-virtual {p1, v9}, Ljuf;->d(Lkad;)V

    new-instance v2, Lgij;

    const/4 v3, 0x0

    invoke-direct {v2, v9, v3}, Lgij;-><init>(Lkef;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    move-object v4, p3

    invoke-static {p3, v2, v3}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    iget-object v2, v0, Lgil;->b:Lmvf;

    const/16 v3, 0x25

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v2, v2, Lmsp;->a:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lgno;->a:Ldhi;

    sget-object v3, Ldhq;->X:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lgno;->c:Ldja;

    new-instance v10, Lgnm;

    iget-object v3, v2, Ldja;->c:Ljava/lang/Object;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lecd;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Ldja;->a:Ljava/lang/Object;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgue;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcis;->b()Ljvb;

    move-result-object v5

    iget-object v2, v2, Ldja;->b:Ljava/lang/Object;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/util/function/Supplier;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    move-object v2, v10

    move-object/from16 v7, p11

    invoke-direct/range {v2 .. v8}, Lgnm;-><init>(Lecd;Lgue;Ljvb;Ljava/util/function/Supplier;Lkef;[B)V

    invoke-interface {v9, v10}, Lkef;->k(Lkee;)V

    iget-object v1, v1, Lgno;->b:Ljuf;

    invoke-virtual {v1, v10}, Ljuf;->d(Lkad;)V

    invoke-static {v10}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    :cond_1
    return-void
.end method

.method public static synthetic a$001(Lkef;)I
    .locals 1

    invoke-interface/range {p0 .. p0}, Lkef;->a()I

    move-result v0

    return v0
.end method

.method public static synthetic f$007(Lken;Lkfj;Z)V
    .locals 1

    invoke-interface/range {p0 .. p2}, Lken;->f(Lkfj;Z)V

    return-void
.end method

.method public static synthetic hasNext$005(Ljava/util/Iterator;)Z
    .locals 1

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public static synthetic iterator$004(Ljava/util/Set;)Ljava/util/Iterator;
    .locals 1

    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic m$002(Lkef;I)V
    .locals 1

    invoke-interface/range {p0 .. p1}, Lkef;->m(I)V

    return-void
.end method

.method public static synthetic next$006(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 1

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic q$003(Lkef;)Lkgq;
    .locals 1

    invoke-interface/range {p0 .. p0}, Lkef;->q()Lkgq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lgnj;
    .locals 1

    sget-object v0, Lgik;->a:Lgik;

    return-object v0
.end method

.method public final b(J)Lkeb;
    .locals 3

    iget-object v0, p0, Lgil;->c:Lkef;

    new-instance v1, Lfej;

    const/4 v2, 0x2

    invoke-direct {v1, p1, p2, v2}, Lfej;-><init>(JI)V

    invoke-interface {v0, v1}, Lkef;->d(Lmqs;)Lkeb;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lkeb;
    .locals 1

    iget v0, p0, Lgil;->k:I

    add-int/lit8 v0, v0, -0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgil;->c:Lkef;

    invoke-interface {v0}, Lkef;->h()Lkeb;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lgil;->c:Lkef;

    invoke-interface {v0}, Lkef;->e()Lkeb;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Lkfg;->y(Lkeb;)V

    :cond_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Lkeb;
    .locals 1

    iget v0, p0, Lgil;->k:I

    add-int/lit8 v0, v0, -0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgil;->c:Lkef;

    invoke-interface {v0}, Lkef;->g()Lkeb;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lgil;->c:Lkef;

    invoke-interface {v0}, Lkef;->c()Lkeb;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Lkeb;
    .locals 1

    iget-object v0, p0, Lgil;->c:Lkef;

    invoke-interface {v0}, Lkef;->h()Lkeb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkfg;->y(Lkeb;)V

    :cond_0
    return-object v0
.end method

.method public final f()Lkef;
    .locals 1

    iget-object v0, p0, Lgil;->c:Lkef;

    return-object v0
.end method

.method public final g(Ljava/util/List;)Lmvv;
    .locals 9

    iget-object v0, p0, Lgil;->j:Lkbc;

    const-string v1, "zslRingBuffer#filterAndTrim"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lgil;->j:Lkbc;

    const-string v1, "zslRingBuffer#filterByTimestamp"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget p1, Lmvv;->d:I

    sget-object p1, Lmyu;->a:Lmvv;

    goto :goto_2

    :cond_0
    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v0

    invoke-static {p1}, Llyh;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkeb;

    invoke-interface {v1}, Lkeb;->b()Lkeg;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-wide v1, v1, Lkeg;->b:J

    iget-object v3, p0, Lgil;->e:Lfvt;

    invoke-virtual {v3}, Lfvt;->j()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lgil;->e:Lfvt;

    invoke-virtual {v1}, Lfvt;->j()J

    move-result-wide v1

    :goto_0
    iget-wide v3, p0, Lgil;->f:J

    sub-long/2addr v1, v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkeb;

    invoke-interface {v3}, Lkeb;->b()Lkeg;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-wide v4, v4, Lkeg;->b:J

    cmp-long v6, v4, v1

    if-lez v6, :cond_2

    invoke-virtual {v0, v3}, Lmvq;->g(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lkeb;->close()V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lmvq;->f()Lmvv;

    move-result-object p1

    :goto_2
    iget-object v0, p0, Lgil;->j:Lkbc;

    const-string v1, "zslRingBuffer#trimByCapacity"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object p1, Lmyu;->a:Lmvv;

    goto :goto_5

    :cond_4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v2

    iget-object v3, p0, Lgil;->d:Lmrl;

    invoke-interface {v3}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    check-cast p1, Lmyu;

    iget p1, p1, Lmyu;->c:I

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v3, 0x0

    :goto_3
    if-ge v3, p1, :cond_6

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkeb;

    if-eqz v4, :cond_5

    invoke-virtual {v2, v4}, Lmvq;->g(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkeb;

    invoke-interface {v0}, Lkeb;->b()Lkeg;

    invoke-interface {v0}, Lkeb;->close()V

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Lmvq;->f()Lmvv;

    move-result-object p1

    :goto_5
    iget-object v0, p0, Lgil;->j:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, p0, Lgil;->j:Lkbc;

    const-string v2, "zslRingBuffer#filterByMetadata"

    invoke-interface {v0, v2}, Lkbc;->g(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p1, Lmyu;->a:Lmvv;

    goto/16 :goto_a

    :cond_8
    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkeb;

    iget-object v3, p0, Lgil;->j:Lkbc;

    const-string v4, "zslRingBuffer#getRecentFocalLength"

    invoke-interface {v3, v4}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static {v2}, Lkfg;->A(Lkeb;)V

    invoke-interface {v2}, Lkeb;->c()Lkou;

    move-result-object v3

    const/high16 v4, -0x40800000    # -1.0f

    if-eqz v3, :cond_a

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v3, v5}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_6

    :cond_9
    sget-object v3, Lgil;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    invoke-interface {v2}, Lkeb;->b()Lkeg;

    move-result-object v2

    const-string v5, "Invalid focal length for frame %s"

    const/16 v6, 0xa81

    invoke-static {v3, v5, v2, v6}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    goto :goto_6

    :cond_a
    sget-object v3, Lgil;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    invoke-interface {v2}, Lkeb;->b()Lkeg;

    move-result-object v2

    const-string v5, "No metadata found for frame %s"

    const/16 v6, 0xa80

    invoke-static {v3, v5, v2, v6}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :goto_6
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, p0, Lgil;->j:Lkbc;

    const-string v4, "zslRingBuffer#buildFilter"

    invoke-interface {v3, v4}, Lkbc;->g(Ljava/lang/String;)V

    new-instance v3, Lmwl;

    invoke-direct {v3}, Lmwl;-><init>()V

    iget-object v4, p0, Lgil;->h:Ljava/util/Set;

    invoke-virtual {v3, v4}, Lmwl;->h(Ljava/lang/Iterable;)V

    new-instance v4, Lgny;

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {v4, v5, v2}, Lgny;-><init>(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lmwl;->g(Ljava/lang/Object;)V

    new-instance v2, Lgnr;

    invoke-virtual {v3}, Lmwl;->f()Lmwn;

    move-result-object v3

    invoke-direct {v2, v3}, Lgnr;-><init>(Ljava/util/Set;)V

    iget-object v3, p0, Lgil;->j:Lkbc;

    const-string v4, "findBinningStatus"

    invoke-interface {v3, v4}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v3, p0, Lgil;->g:Lgno;

    invoke-virtual {v3, p1}, Lgno;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lgil;->j:Lkbc;

    invoke-interface {v4}, Lkbc;->f()V

    invoke-virtual {p1}, Lmvv;->s()Lnad;

    move-result-object p1

    const/4 v4, 0x0

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkeb;

    iget-object v6, p0, Lgil;->j:Lkbc;

    const-string v7, "zslRingBuffer#filter"

    invoke-interface {v6, v7}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {v5}, Lkeb;->b()Lkeg;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v5}, Lgnr;->a(Lkeb;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v0, v5}, Lmvq;->g(Ljava/lang/Object;)V

    if-eqz v6, :cond_b

    iget-object v6, p0, Lgil;->l:Lbkc;

    invoke-interface {v5}, Lkeb;->b()Lkeg;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v7, v5, Lkeg;->b:J

    invoke-virtual {v6, v7, v8}, Lbkc;->q(J)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    or-int/2addr v4, v5

    goto :goto_8

    :cond_b
    invoke-interface {v5}, Lkeb;->b()Lkeg;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_8

    :cond_c
    invoke-interface {v5}, Lkeb;->b()Lkeg;

    invoke-interface {v5}, Lkeb;->close()V

    :goto_8
    iget-object v5, p0, Lgil;->j:Lkbc;

    invoke-interface {v5}, Lkbc;->f()V

    goto :goto_7

    :cond_d
    invoke-virtual {v0}, Lmvq;->f()Lmvv;

    move-result-object p1

    if-eqz v4, :cond_e

    goto :goto_a

    :cond_e
    move-object v0, p1

    check-cast v0, Lmyu;

    iget v0, v0, Lmyu;->c:I

    :goto_9
    if-ge v1, v0, :cond_f

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkeb;

    invoke-interface {v2}, Lkeb;->b()Lkeg;

    invoke-interface {v2}, Lkeb;->close()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_f
    sget-object p1, Lmyu;->a:Lmvv;

    :goto_a
    iget-object v0, p0, Lgil;->j:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-object p1
.end method

.method public final h(Ljava/util/List;)Lmvv;
    .locals 3

    iget-object v0, p0, Lgil;->j:Lkbc;

    const-string v1, "zslRingBuffer#filter"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lgil;->g(Ljava/util/List;)Lmvv;

    move-result-object p1

    iget-object v0, p0, Lgil;->j:Lkbc;

    const-string v1, "zslRingBuffer#awaitComplete"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lmyu;

    iget v0, v0, Lmyu;->c:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkeb;

    invoke-static {v2}, Lkfg;->y(Lkeb;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgil;->j:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-object p1
.end method

.method public final i()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lgil;->o()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgil;->h(Ljava/util/List;)Lmvv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lgil;->o()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lgil;->c:Lkef;

    invoke-interface {v0}, Lkef;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lgil;->c:Lkef;

    invoke-interface {p1}, Lkef;->q()Lkgq;

    move-result-object p1

    invoke-virtual {p1}, Lkgq;->a()Ljvs;

    move-result-object p1

    invoke-interface {p1}, Ljvs;->bm()Ljava/lang/Object;

    return-void
.end method

.method public m(I)V
    .locals 5

    const v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const v0, 0x0

    aput-object p0, v2, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v0, 0x1

    aput-object v1, v2, v0

    const-string/jumbo v1, "qjwlqIyiXt7wLzjN"

    invoke-static {v1, v2}, Lcom/pairip/VMRunner;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-void
.end method

.method public final n()Lkgq;
    .locals 1

    iget-object v0, p0, Lgil;->c:Lkef;

    invoke-interface {v0}, Lkef;->q()Lkgq;

    move-result-object v0

    return-object v0
.end method

.method public final o()Ljava/util/List;
    .locals 1

    iget v0, p0, Lgil;->k:I

    add-int/lit8 v0, v0, -0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgil;->c:Lkef;

    invoke-interface {v0}, Lkef;->j()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lgil;->c:Lkef;

    invoke-interface {v0}, Lkef;->i()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
