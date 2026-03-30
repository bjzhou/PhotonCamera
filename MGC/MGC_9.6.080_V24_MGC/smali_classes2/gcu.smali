.class public Lgcu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnrm;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:[F

.field private final c:Lqht;

.field private final d:Loyd;

.field private final e:Loyd;

.field private final f:Loyn;

.field private final g:Lryb;

.field private final h:Ljava/util/function/Consumer;

.field private i:I

.field private j:Lpck;

.field private final k:[F

.field private final l:[F

.field private final m:Lgbq;

.field private final n:Lhwy;

.field private final o:Liof;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "gcu"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lgcu;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lqht;Lgbq;Loyd;Loyd;Lhwy;Loyn;Lgdg;Lryb;Ljava/util/function/Consumer;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-virtual {p7, p1}, Lgdg;->a(Lqht;)Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    new-instance p3, Lgct;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v1, p0, Lgcu;->k:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lgcu;->o:Liof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    sget p2, Lryb;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x6

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p3, p1, p4}, Lgct;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_a
    iput-object v0, p0, Lgcu;->l:[F

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p1, Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lgcu;->j:Lpck;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p8}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Lgcu;->c:Lqht;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    iput-object p5, p0, Lgcu;->n:Lhwy;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_14
    check-cast p2, Liof;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_15
    iput-object p1, p0, Lgcu;->g:Lryb;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p2, p0, Lgcu;->m:Lgbq;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_17
    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_18
    sget-object p2, Lrvj;->a:Lj$/util/stream/Collector;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p9, p0, Lgcu;->h:Ljava/util/function/Consumer;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object p3, p0, Lgcu;->d:Loyd;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_21

    nop

    nop

    :goto_1f
    iput v0, p0, Lgcu;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v1, p0, Lgcu;->b:[F

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_21
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-array v1, v0, [F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object p6, p0, Lgcu;->f:Loyn;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_28
    iput-object p4, p0, Lgcu;->e:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_29
    invoke-interface {p2, p3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Lprw;Lprw;)Lnrl;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2}, Lnzk;->k(Lnrm;Lprw;Lprw;)Lnrl;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final b(Lpge;Lphh;Lpge;)Lnrl;
    .locals 29

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_0
    iget-object v0, v11, Lgcu;->f:Loyn;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_32

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2
    move-object v6, v15

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-interface {v2}, Lprw;->close()V

    invoke-static {}, Ltas;->a()Ltar;

    move-result-object v0

    nop

    invoke-virtual {v0}, Ltar;->a()Ltas;

    move-result-object v0

    nop

    nop

    nop

    nop

    monitor-exit v4

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :goto_3
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v9, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    :cond_0
    :try_start_1
    invoke-interface {v9}, Lprw;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    goto/32 :goto_1f

    nop

    nop

    :goto_5
    invoke-static {v8}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_6
    move-object v2, v0

    nop

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v1

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object v8, v1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v9, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    :try_start_3
    sget-object v0, Lgcu;->a:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v2, 0xee

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    nop

    const-string v2, "Missing input image."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V

    sget-object v0, Lnrl;->b:Lnrl;

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object v11, v8

    nop

    nop

    nop

    goto/16 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, v8, Lgcu;->d:Loyd;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lj$/util/Optional;

    nop

    nop

    nop

    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lgcu;->a:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v2, 0xed

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const-string v2, "Missing active AR session, skipping."

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V

    sget-object v0, Lnrl;->b:Lnrl;

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v9}, Lprw;->close()V
    :try_end_4
    .catch Lqhk; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_f

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_b

    nop

    :cond_2
    :try_start_5
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    move-object v3, v0

    nop

    nop

    nop

    nop

    check-cast v3, Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    invoke-interface {v9}, Lprw;->c()I

    move-result v0

    nop

    nop

    nop

    nop

    invoke-interface {v9}, Lprw;->b()I

    move-result v2

    nop

    nop

    new-instance v4, Lpck;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v0, v2}, Lpck;-><init>(II)V

    invoke-interface/range {p1 .. p1}, Lpge;->d()Lpro;

    move-result-object v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    sget-object v0, Lsxp;->a:Lsxp;

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    nop

    :cond_3
    invoke-interface {v0}, Lpro;->b()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    if-nez v0, :cond_4

    nop

    nop

    sget-object v0, Lsxp;->a:Lsxp;

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    :cond_4
    iget-object v2, v8, Lgcu;->n:Lhwy;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lpnx;->b(Ljava/lang/String;)Lpnx;

    move-result-object v0

    nop

    nop

    invoke-virtual {v2, v0}, Lhwy;->w(Lpnx;)Lsxp;

    move-result-object v0

    nop

    nop

    :goto_e
    sget-object v2, Lsxp;->b:Lsxp;

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x2

    nop

    nop

    nop

    nop

    const/4 v5, -0x1

    nop

    const/4 v12, 0x1

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    if-ne v0, v2, :cond_5

    nop

    nop

    move v0, v12

    nop

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    :cond_5
    sget-object v2, Lsxp;->g:Lsxp;

    nop

    if-ne v0, v2, :cond_6

    nop

    nop

    move v0, v13

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_6
    sget-object v2, Lsxp;->d:Lsxp;

    nop

    nop

    nop

    nop

    nop

    if-ne v0, v2, :cond_7

    nop

    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    :cond_7
    sget-object v2, Lsxp;->i:Lsxp;

    nop

    nop

    nop

    nop

    nop

    if-ne v0, v2, :cond_8

    nop

    nop

    nop

    move v0, v11

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_8
    move v0, v5

    nop

    nop

    nop

    nop

    :goto_f
    if-eq v0, v5, :cond_9

    nop

    nop

    iget v2, v8, Lgcu;->i:I

    nop

    if-eq v2, v0, :cond_9

    nop

    nop

    nop

    nop

    move v2, v12

    nop

    nop

    goto :goto_10

    nop

    nop

    :cond_9
    move v2, v13

    nop

    :goto_10
    if-eqz v2, :cond_a

    nop

    nop

    nop

    nop

    iget-object v5, v8, Lgcu;->l:[F

    nop

    nop

    nop

    nop

    invoke-static {v5, v13}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v14, v8, Lgcu;->l:[F

    nop

    nop

    add-int/lit8 v5, v0, -0x1

    nop

    nop

    nop

    int-to-float v5, v5

    nop

    nop

    nop

    const/high16 v6, 0x42b40000    # 90.0f

    nop

    nop

    nop

    nop

    mul-float v16, v5, v6

    nop

    nop

    nop

    nop

    nop

    const/16 v18, 0x0

    nop

    nop

    nop

    nop

    const/high16 v19, 0x3f800000    # 1.0f

    nop

    nop

    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    nop

    const/16 v17, 0x0

    nop

    nop

    invoke-static/range {v14 .. v19}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v5, v8, Lgcu;->l:[F

    nop

    nop

    nop

    nop

    const/high16 v6, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    const/high16 v7, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    invoke-static {v5, v13, v7, v6, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_a
    iget-object v5, v8, Lgcu;->j:Lpck;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Lpck;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    if-eqz v5, :cond_b

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_e

    nop

    nop

    :cond_b
    if-eqz v0, :cond_d

    nop

    nop

    nop

    nop

    if-ne v0, v11, :cond_c

    nop

    nop

    nop

    goto :goto_11

    nop

    nop

    nop

    :cond_c
    move-object v2, v4

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    nop

    :cond_d
    :goto_11
    invoke-virtual {v4}, Lpck;->g()Lpck;

    move-result-object v2

    nop

    nop

    nop

    :goto_12
    iget v5, v2, Lpck;->a:I

    nop

    nop

    nop

    nop

    iget v2, v2, Lpck;->b:I

    nop

    nop

    invoke-virtual {v3, v0, v5, v2}, Lcom/google/ar/core/Session;->setDisplayGeometry(III)V

    iput-object v4, v8, Lgcu;->j:Lpck;

    nop

    nop

    iput v0, v8, Lgcu;->i:I

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_e
    :try_start_6
    invoke-virtual {v3}, Lcom/google/ar/core/Session;->update()Lcom/google/ar/core/Frame;

    move-result-object v15

    nop

    nop
    :try_end_6
    .catch Lcom/google/ar/core/exceptions/CameraNotAvailableException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v0, v8, Lgcu;->h:Ljava/util/function/Consumer;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v15}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, v8, Lgcu;->e:Loyd;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lj$/util/Optional;

    nop

    nop

    nop

    nop

    new-instance v14, Lhaq;

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    move-object v2, v14

    nop

    nop

    move-object v4, v15

    nop

    nop

    nop

    nop

    move-object v5, v9

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v2 .. v7}, Lhaq;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[B)V

    invoke-virtual {v0, v14}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface/range {p1 .. p1}, Lpge;->d()Lpro;

    move-result-object v0

    nop

    nop

    invoke-interface/range {p1 .. p2}, Lpge;->e(Lphh;)Lprw;

    move-result-object v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_22

    nop

    nop

    nop

    if-eqz v0, :cond_22

    nop

    nop

    nop

    iget-object v3, v8, Lgcu;->m:Lgbq;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v3

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v4, v3, Lgbq;->b:Ljava/util/Map;

    nop

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    nop

    if-nez v4, :cond_f

    nop

    nop

    iget-object v4, v3, Lgbq;->b:Ljava/util/Map;

    nop

    nop

    nop

    iget v5, v3, Lgbq;->l:I

    nop

    nop

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_f

    nop

    nop

    iget-object v4, v3, Lgbq;->b:Ljava/util/Map;

    nop

    nop

    iget v5, v3, Lgbq;->l:I

    nop

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lgbi;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_13

    nop

    nop

    nop

    :cond_f
    move-object v4, v1

    nop

    nop

    :goto_13
    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v3, v4}, Lgbq;->k(Lgbi;)V

    if-nez v4, :cond_10

    nop

    invoke-interface {v2}, Lprw;->close()V

    invoke-static {}, Ltas;->a()Ltar;

    move-result-object v0

    nop

    invoke-virtual {v0}, Ltar;->a()Ltas;

    move-result-object v0

    nop

    nop

    nop

    nop

    move-object v4, v0

    nop

    move-object v6, v15

    nop

    nop

    goto/16 :goto_64

    nop

    :cond_10
    iget v5, v3, Lgbq;->k:F

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    cmpl-float v5, v5, v6

    nop

    if-lez v5, :cond_12

    nop

    nop

    iget-object v5, v4, Lgbi;->p:Lcom/google/ar/core/Pose;

    nop

    nop

    nop

    nop

    invoke-static {v5}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v5

    nop

    nop

    new-instance v7, Lgct;

    nop

    nop

    invoke-direct {v7, v15, v12}, Lgct;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v7}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    nop

    nop

    invoke-virtual {v5, v6}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    check-cast v5, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v3, Lgbq;->j:Loyn;

    nop

    nop

    nop

    iget v3, v3, Lgbq;->k:F

    nop

    nop

    nop

    nop

    cmpg-float v3, v5, v3

    nop

    nop

    if-gez v3, :cond_11

    nop

    nop

    nop

    move v3, v12

    nop

    goto :goto_14

    nop

    nop

    nop

    :cond_11
    move v3, v13

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-interface {v6, v3}, Loyn;->a(Ljava/lang/Object;)V

    :cond_12
    monitor-enter v4

    nop

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-boolean v3, v4, Lgbi;->w:Z

    nop

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_d

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_6f

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_16
    move-object v1, v0

    nop

    nop

    nop

    :try_start_b
    invoke-virtual/range {v16 .. v16}, Lqia;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_10

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-object v0

    nop

    :goto_18
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_68

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_2d

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_1c
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_18

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1e
    goto/16 :goto_32

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1f
    goto/16 :goto_56

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v3, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_13
    :try_start_c
    iget-boolean v3, v4, Lgbi;->o:Z

    nop

    nop

    nop

    nop

    if-nez v3, :cond_14

    nop

    nop

    goto/16 :goto_41

    nop

    nop

    :cond_14
    monitor-exit v4

    nop

    nop

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    iget-object v3, v4, Lgbi;->k:Lgei;

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    nop

    nop

    iget-wide v10, v3, Lgei;->c:J

    nop

    const-wide/16 v16, 0x0

    nop

    cmp-long v10, v10, v16

    nop

    nop

    if-nez v10, :cond_15

    nop

    nop

    nop

    nop

    move-object v11, v15

    nop

    nop

    nop

    goto/16 :goto_24

    nop

    nop

    nop

    nop

    :cond_15
    monitor-enter v3

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_15

    :try_start_e
    iget-object v10, v3, Lgei;->b:Lgeh;

    nop

    nop

    nop

    nop

    iget-wide v7, v3, Lgei;->c:J

    nop

    nop

    nop

    nop

    nop

    sub-long v7, v5, v7

    nop

    move-object v11, v15

    nop

    nop

    iget-wide v14, v10, Lgeh;->c:J

    nop

    nop

    nop

    nop

    nop

    add-long/2addr v14, v7

    nop

    nop

    nop

    iput-wide v14, v10, Lgeh;->c:J

    nop

    nop

    iget-wide v14, v10, Lgeh;->d:J

    nop

    nop

    nop

    nop

    mul-long v17, v7, v7

    nop

    nop

    add-long v14, v14, v17

    nop

    nop

    nop

    nop

    iput-wide v14, v10, Lgeh;->d:J

    nop

    iget-wide v14, v10, Lgeh;->a:J

    nop

    nop

    nop

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    nop

    iput-wide v14, v10, Lgeh;->a:J

    nop

    nop

    nop

    nop

    nop

    iget-wide v14, v10, Lgeh;->b:J

    nop

    nop

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    nop

    nop

    iput-wide v14, v10, Lgeh;->b:J

    nop

    nop

    nop

    nop

    nop

    iget-wide v14, v10, Lgeh;->f:J

    nop

    const-wide/16 v17, 0x1

    nop

    nop

    nop

    nop

    nop

    add-long v14, v14, v17

    nop

    nop

    iput-wide v14, v10, Lgeh;->f:J

    nop

    nop

    nop

    iget-object v10, v10, Lgeh;->e:Lsvo;

    nop

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    nop

    nop

    nop

    iget-object v8, v10, Lsvo;->a:Lsvq;

    nop

    iget-object v14, v8, Lsvq;->d:Lsvs;

    nop

    nop

    nop

    nop

    if-nez v14, :cond_17

    nop

    nop

    nop

    iget-object v14, v8, Lsvq;->a:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    if-eqz v14, :cond_16

    nop

    nop

    goto :goto_21

    nop

    nop

    nop

    :cond_16
    move v14, v13

    nop

    nop

    goto :goto_22

    nop

    nop

    :cond_17
    :goto_21
    move v14, v12

    nop

    nop

    :goto_22
    invoke-static {v14}, Lrrf;->x(Z)V

    iget-object v14, v8, Lsvq;->d:Lsvs;

    nop

    if-eqz v14, :cond_19

    nop

    nop

    iget-object v8, v14, Lsvs;->e:Lsvq;

    nop

    nop

    nop

    iget-object v8, v8, Lsvq;->c:Ljava/util/Random;

    nop

    nop

    nop

    nop

    iget v15, v14, Lsvs;->b:I

    nop

    nop

    nop

    add-int/2addr v15, v12

    nop

    iput v15, v14, Lsvs;->b:I

    nop

    nop

    nop

    invoke-virtual {v8, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    nop

    nop

    if-nez v8, :cond_18

    nop

    iput-object v7, v14, Lsvs;->a:Ljava/lang/Comparable;

    nop

    :cond_18
    iget v8, v14, Lsvs;->b:I

    nop

    nop

    nop

    iget v15, v14, Lsvs;->c:I

    nop

    nop

    nop

    nop

    nop

    if-lt v8, v15, :cond_1a

    nop

    nop

    nop

    invoke-virtual {v14}, Lsvs;->a()V

    goto :goto_23

    nop

    nop

    :cond_19
    iget-object v14, v8, Lsvq;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    check-cast v14, Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v14, v8, Lsvq;->b:I

    nop

    nop

    add-int/2addr v14, v12

    nop

    nop

    nop

    nop

    nop

    iput v14, v8, Lsvq;->b:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Lsvq;->f()V

    :cond_1a
    :goto_23
    iget-wide v14, v10, Lsvo;->b:J

    nop

    nop

    add-long v14, v14, v17

    nop

    nop

    nop

    iput-wide v14, v10, Lsvo;->b:J

    nop

    nop

    nop

    iget-object v8, v10, Lsvo;->c:Ljava/lang/Comparable;

    nop

    nop

    nop

    if-eqz v8, :cond_1b

    nop

    invoke-interface {v8, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v8

    nop

    nop

    nop

    nop

    if-lez v8, :cond_1c

    nop

    :cond_1b
    iput-object v7, v10, Lsvo;->c:Ljava/lang/Comparable;

    nop

    nop

    nop

    nop

    nop

    :cond_1c
    iget-object v8, v10, Lsvo;->d:Ljava/lang/Comparable;

    nop

    nop

    if-eqz v8, :cond_1d

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v8, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v8

    nop

    nop

    nop

    nop

    if-gez v8, :cond_1e

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    iput-object v7, v10, Lsvo;->d:Ljava/lang/Comparable;

    nop

    :cond_1e
    iput-object v1, v10, Lsvo;->e:Lqnt;

    nop

    nop

    monitor-exit v3

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    :goto_24
    :try_start_f
    iput-wide v5, v3, Lgei;->c:J

    nop

    nop

    nop
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_15

    :try_start_10
    iget-object v3, v4, Lgbi;->j:Lpdf;

    nop

    nop

    const-string v5, "AllIn#convertToGcamFrameMetadata"

    nop

    nop

    invoke-interface {v3, v5}, Lpdf;->f(Ljava/lang/String;)V

    invoke-interface {v0}, Lpro;->b()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    if-nez v3, :cond_21

    nop

    nop

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v3

    nop
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    :try_start_11
    iget-object v5, v4, Lgbi;->j:Lpdf;

    nop

    nop

    nop

    :goto_25
    invoke-interface {v5}, Lpdf;->g()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_15

    goto/32 :goto_48

    nop

    nop

    :goto_26
    if-lez v0, :cond_1f

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_45

    nop

    :goto_27
    return-object v0

    nop

    nop

    :catchall_6
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_28
    move-object/from16 v11, p0

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move-object v1, v0

    nop

    nop

    nop

    nop

    :try_start_12
    invoke-virtual {v15}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_18

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move-object v1, v8

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move-object v6, v11

    nop

    nop

    nop

    nop

    :goto_2c
    :try_start_13
    sget-object v2, Lgbi;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    const/16 v2, 0x9b

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    const-string v2, "Error processing viewfinder frame for groupId:%s"

    nop

    nop

    iget v3, v4, Lgbi;->c:I

    nop

    invoke-interface {v0, v2, v3}, Lscz;->t(Ljava/lang/String;I)V

    invoke-static {}, Ltas;->a()Ltar;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltar;->a()Ltas;

    move-result-object v0

    nop

    nop

    nop
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    :goto_2d
    :try_start_14
    iget-object v2, v4, Lgbi;->j:Lpdf;

    nop

    nop

    invoke-interface {v2}, Lpdf;->g()V

    goto/16 :goto_3

    nop

    nop

    :goto_2e
    iget-object v2, v4, Lgbi;->j:Lpdf;

    nop

    nop

    invoke-interface {v2}, Lpdf;->g()V

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_15

    :cond_20
    :goto_2f
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move-object v1, v0

    nop

    nop

    nop

    :try_start_15
    invoke-virtual {v10}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto/32 :goto_19

    nop

    nop

    :goto_31
    move-object v11, v8

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    move-object v1, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move-object/from16 v11, p0

    nop

    nop

    nop

    nop

    nop

    :try_start_16
    iget-object v0, v11, Lgcu;->o:Liof;

    nop

    iget-object v0, v0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-static {v0, v10}, Lqiu;->b(Lqht;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Lqiu;

    move-result-object v12

    nop
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1b

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move-object v11, v8

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_36
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_17
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_37
    throw v1

    nop

    nop

    nop
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    :catchall_7
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v2, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto :goto_37

    nop

    nop

    :catchall_8
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move-object v1, v0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3b
    iget-object v2, v11, Lgcu;->f:Loyn;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_3d
    invoke-interface {v2, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_3f
    move-object v1, v0

    nop

    nop

    nop

    :try_start_18
    invoke-interface {v14}, Lprw;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move-object v6, v11

    nop

    nop

    :try_start_19
    invoke-virtual {v5}, Lpol;->l()V

    invoke-static {}, Ltas;->a()Ltar;

    move-result-object v0

    nop

    nop

    invoke-virtual {v0}, Ltar;->a()Ltas;

    move-result-object v0

    nop

    nop

    monitor-exit v4

    nop

    nop

    nop

    nop

    goto/16 :goto_3

    nop

    :catchall_9
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit v4

    nop

    nop
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    :try_start_1a
    throw v0

    nop

    :catchall_a
    move-exception v0

    nop

    nop

    nop

    iget-object v2, v4, Lgbi;->j:Lpdf;

    nop

    nop

    invoke-interface {v2}, Lpdf;->g()V

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_15

    :catchall_b
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1b
    monitor-exit v3

    nop
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    :try_start_1c
    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_15

    :goto_41
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :catchall_c
    move-exception v0

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_43
    move-object/from16 v8, p0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_6f

    nop

    nop

    nop

    :catchall_d
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_47
    move-object v1, v0

    nop

    nop

    nop

    nop

    :try_start_1d
    invoke-virtual {v12}, Lqia;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_16

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_73

    nop

    nop

    nop

    nop

    :cond_21
    :try_start_1e
    iget-object v5, v4, Lgbi;->h:Lryh;

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lpnx;->b(Ljava/lang/String;)Lpnx;

    move-result-object v6

    nop

    invoke-virtual {v5, v6}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    nop

    if-nez v5, :cond_23

    nop

    nop

    nop

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v3

    nop
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    :try_start_1f
    iget-object v5, v4, Lgbi;->j:Lpdf;

    nop
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_15

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v2, v11, Lgcu;->f:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    move-object v2, v0

    nop

    nop

    nop

    nop

    :try_start_20
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4b
    throw v1

    nop

    nop

    nop

    nop
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    :catchall_e
    move-exception v0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v1, 0x0

    nop

    nop

    :try_start_21
    invoke-interface/range {p1 .. p2}, Lpge;->e(Lphh;)Lprw;

    move-result-object v9

    nop

    nop

    nop

    nop
    :try_end_21
    .catch Lqhk; {:try_start_21 .. :try_end_21} :catch_5
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :catchall_f
    move-exception v0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_4e
    goto :goto_4b

    nop

    :catchall_10
    move-exception v0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move-object/from16 v11, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :catch_3
    move-exception v0

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_51
    move-object v11, v8

    nop

    nop

    nop

    :goto_52
    :try_start_22
    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_11

    :try_start_23
    throw v0

    nop

    :catchall_11
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto :goto_52

    nop

    nop

    nop

    nop

    nop

    :cond_22
    move-object v11, v8

    nop

    nop

    sget-object v0, Lgcu;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/16 v2, 0xea

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const-string v2, "Unable to forward viewfinder data."

    nop

    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V

    sget-object v0, Lnrl;->b:Lnrl;

    nop

    goto :goto_53

    nop

    :catch_4
    move-exception v0

    nop

    nop

    move-object v11, v8

    nop

    nop

    nop

    nop

    nop

    move-object v2, v0

    nop

    nop

    nop

    nop

    sget-object v0, Lgcu;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const/16 v2, 0xec

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    const-string v2, "Missing camera, skipping."

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V

    sget-object v0, Lnrl;->b:Lnrl;

    nop

    nop

    nop

    nop

    nop
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_19

    :goto_53
    :try_start_24
    invoke-interface {v9}, Lprw;->close()V
    :try_end_24
    .catch Lqhk; {:try_start_24 .. :try_end_24} :catch_3
    .catchall {:try_start_24 .. :try_end_24} :catchall_14

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_9

    nop

    nop

    nop

    :catchall_12
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_55
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_25
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_56
    throw v1

    nop

    nop

    nop

    nop

    nop
    :try_end_25
    .catch Lqhk; {:try_start_25 .. :try_end_25} :catch_1
    .catchall {:try_start_25 .. :try_end_25} :catchall_13

    :catchall_13
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_57
    move-object/from16 v2, p3

    nop

    nop

    nop

    nop

    nop

    :try_start_26
    invoke-interface {v2, v1}, Lpge;->e(Lphh;)Lprw;

    move-result-object v14

    nop

    nop

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    :try_start_27
    invoke-static {v14}, Liof;->E(Lprw;)Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    move-result-object v15

    nop

    nop

    nop
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    :try_start_28
    iget-object v0, v11, Lgcu;->o:Liof;

    nop

    nop

    iget-object v0, v0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-static {v0, v15}, Lqjs;->j(Lqht;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Lqjs;

    move-result-object v16

    nop
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_e

    :try_start_29
    invoke-virtual {v6}, Lcom/google/ar/core/Frame;->getCamera()Lcom/google/ar/core/Camera;

    move-result-object v0

    nop

    nop

    iget-object v1, v11, Lgcu;->k:[F

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v13}, Lcom/google/ar/core/Camera;->getViewMatrix([FI)V

    invoke-virtual {v6}, Lcom/google/ar/core/Frame;->getCamera()Lcom/google/ar/core/Camera;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v1, v11, Lgcu;->b:[F

    nop

    const v2, 0x3dcccccd    # 0.1f

    nop

    nop

    nop

    nop

    const/high16 v3, 0x42c80000    # 100.0f

    nop

    nop

    nop

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/google/ar/core/Camera;->getProjectionMatrix([FIFF)V

    iget-object v0, v11, Lgcu;->b:[F

    nop

    nop

    iget-object v1, v11, Lgcu;->k:[F

    nop

    nop

    nop

    const/16 v22, 0x0

    nop

    nop

    nop

    nop

    nop

    const/16 v18, 0x0

    nop

    nop

    nop

    nop

    const/16 v20, 0x0

    nop

    nop

    nop

    move-object/from16 v17, v0

    nop

    nop

    nop

    nop

    move-object/from16 v19, v0

    nop

    nop

    move-object/from16 v21, v1

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v17 .. v22}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, v11, Lgcu;->b:[F

    nop

    nop

    nop

    iget-object v1, v11, Lgcu;->l:[F

    nop

    nop

    nop

    nop

    nop

    const/16 v26, 0x0

    nop

    nop

    nop

    nop

    const/16 v28, 0x0

    nop

    nop

    const/16 v24, 0x0

    nop

    nop

    move-object/from16 v23, v0

    nop

    nop

    nop

    nop

    move-object/from16 v25, v1

    nop

    nop

    nop

    nop

    move-object/from16 v27, v0

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v23 .. v28}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, v11, Lgcu;->g:Lryb;

    nop

    nop

    nop

    nop

    new-instance v13, Ljqg;

    nop

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    nop

    nop

    move-object v1, v13

    nop

    nop

    nop

    move-object/from16 v2, p0

    nop

    nop

    nop

    move-object v3, v6

    nop

    nop

    nop

    nop

    nop

    move-object v5, v12

    nop

    nop

    nop

    nop

    move-object/from16 v6, v16

    nop

    nop

    nop

    nop

    invoke-direct/range {v1 .. v7}, Ljqg;-><init>(Lgcu;Lcom/google/ar/core/Frame;Ltas;Lqiu;Lqjs;I)V

    invoke-static {v0, v13}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_6

    :try_start_2a
    invoke-virtual/range {v16 .. v16}, Lqia;->close()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_e

    :try_start_2b
    invoke-virtual {v15}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1

    :try_start_2c
    invoke-interface {v14}, Lprw;->close()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_7

    :try_start_2d
    invoke-virtual {v12}, Lqia;->close()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1b

    :try_start_2e
    invoke-virtual {v10}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_17

    :try_start_2f
    invoke-interface {v9}, Lprw;->close()V
    :try_end_2f
    .catch Lqhk; {:try_start_2f .. :try_end_2f} :catch_1
    .catchall {:try_start_2f .. :try_end_2f} :catchall_13

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_6d

    nop

    nop

    :catchall_14
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_9

    nop

    nop

    nop

    :catchall_15
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_5a
    move-object/from16 v11, p0

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_5b
    invoke-static {v1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto/16 :goto_18

    nop

    :catch_5
    move-exception v0

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_5d
    throw v0

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_60
    move-object v6, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_61
    goto/16 :goto_7a

    nop

    nop

    :catchall_16
    move-exception v0

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_62
    move-object/from16 v16, v6

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_63
    move-object v4, v0

    nop

    nop

    nop

    nop

    nop

    :goto_64
    :try_start_30
    iget-object v0, v4, Ltas;->b:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lgbe;

    nop

    nop

    nop

    const/4 v3, 0x5

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3}, Lgbe;-><init>(I)V

    invoke-virtual {v0, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    move-object v8, v0

    nop

    nop

    check-cast v8, Ltak;

    nop

    nop

    nop

    nop
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_15

    :try_start_31
    invoke-static {v9}, Liof;->E(Lprw;)Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_12

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_65
    move-object/from16 v19, v2

    nop

    nop

    nop

    :try_start_32
    invoke-direct/range {v14 .. v19}, Lszj;-><init>(Lszn;Lcom/google/ar/core/Frame;Lszp;Lszh;Ltar;)V

    new-instance v5, Lngq;

    nop

    nop

    nop

    const/16 v7, 0x14

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v7}, Lngq;-><init>(I)V

    invoke-virtual {v0, v3, v5}, Lj$/util/Optional;->ifPresentOrElse(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ltar;->a()Ltas;

    move-result-object v0

    nop

    nop

    nop

    :goto_66
    iget-object v2, v4, Lgbi;->k:Lgei;

    nop

    nop

    nop

    invoke-virtual {v2, v0}, Lgei;->f(Ltas;)V
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_32} :catch_0
    .catchall {:try_start_32 .. :try_end_32} :catchall_c

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_67
    move-object v2, v0

    nop

    :try_start_33
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_68
    throw v1

    nop
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_17

    :catchall_17
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :catchall_18
    move-exception v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    goto :goto_6c

    nop

    nop

    nop

    :catchall_19
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6b
    move-object v11, v8

    nop

    nop

    :goto_6c
    :try_start_34
    sget-object v2, Lgcu;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    invoke-interface {v2, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    const/16 v2, 0xeb

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lcom/google/android/apps/camera/ui/eduimageview/JrT/cUhjhcVVea;->WpXgYoDYOFX:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V

    sget-object v0, Lnrl;->b:Lnrl;

    nop

    nop

    nop
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_14

    :goto_6d
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    move-object v11, v8

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    :try_start_35
    monitor-exit v4

    nop

    nop

    nop

    nop
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1a

    :try_start_36
    throw v0

    nop

    nop
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_19

    :catchall_1a
    move-exception v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_70
    move-object/from16 v1, p2

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_71
    sget-object v0, Lnrl;->a:Lnrl;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    :cond_23
    :try_start_37
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v0, v6}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Ljava/lang/String;

    nop

    nop

    nop

    if-eqz v6, :cond_24

    nop

    nop

    move-object v3, v6

    nop

    nop

    nop

    :cond_24
    invoke-static {v3}, Lpnx;->b(Ljava/lang/String;)Lpnx;

    move-result-object v3

    nop

    invoke-virtual {v5, v0, v3}, Ltbt;->l(Lpro;Lpnx;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v3

    nop

    nop

    invoke-static {v3}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v3

    nop

    nop

    nop

    nop
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_a

    :try_start_38
    iget-object v5, v4, Lgbi;->j:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v3}, Lj$/util/Optional;->isEmpty()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_25

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lprw;->close()V

    invoke-static {}, Ltas;->a()Ltar;

    move-result-object v0

    nop

    nop

    invoke-virtual {v0}, Ltar;->a()Ltas;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_74
    move-object v4, v0

    nop

    nop

    nop

    nop

    nop

    move-object v6, v11

    nop

    nop

    goto/16 :goto_64

    nop

    nop

    nop

    nop

    :cond_25
    invoke-interface {v0}, Lpro;->b()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    if-nez v0, :cond_26

    nop

    nop

    invoke-interface {v2}, Lprw;->close()V

    invoke-static {}, Ltas;->a()Ltar;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltar;->a()Ltas;

    move-result-object v0

    nop

    goto :goto_74

    nop

    nop

    :cond_26
    new-instance v5, Lpol;

    nop

    nop

    nop

    nop

    const/4 v6, 0x2

    nop

    invoke-direct {v5, v2, v6}, Lpol;-><init>(Lprw;I)V

    invoke-virtual {v3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    invoke-static {v0}, Lpnx;->b(Ljava/lang/String;)Lpnx;

    move-result-object v2

    nop

    nop

    nop

    iget-object v6, v4, Lgbi;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    new-instance v7, Ljsx;

    nop

    nop

    nop

    invoke-direct {v7, v12}, Ljsx;-><init>(I)V

    invoke-static {v6, v7}, Lj$/util/concurrent/atomic/DesugarAtomicInteger;->getAndUpdate(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/function/IntUnaryOperator;)I

    move-result v6

    nop

    nop

    nop

    nop

    if-lez v6, :cond_28

    nop

    iget-object v6, v4, Lgbi;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    invoke-virtual {v6, v13, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_27

    nop

    nop

    nop

    invoke-virtual {v4, v12, v11, v5, v2}, Lgbi;->m(ZLcom/google/ar/core/Frame;Lprw;Lpnx;)V

    goto :goto_75

    nop

    :cond_27
    iget-object v6, v4, Lgbi;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    invoke-virtual {v6, v13, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_28

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v13, v11, v5, v2}, Lgbi;->m(ZLcom/google/ar/core/Frame;Lprw;Lpnx;)V

    goto :goto_75

    nop

    nop

    :cond_28
    invoke-virtual {v5}, Lpol;->l()V

    :goto_75
    monitor-enter v4

    nop
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_15

    :try_start_39
    iget-boolean v2, v4, Lgbi;->u:Z

    nop

    nop

    if-nez v2, :cond_20

    nop

    nop

    nop

    iget-boolean v2, v4, Lgbi;->w:Z

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_29

    nop

    nop

    nop

    nop

    goto/16 :goto_2f

    nop

    nop

    :cond_29
    monitor-exit v4

    nop

    nop

    nop

    nop
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_9

    :try_start_3a
    invoke-virtual {v4}, Lgbi;->i()V

    invoke-static {v0}, Lpnx;->b(Ljava/lang/String;)Lpnx;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v4, v0}, Lgbi;->b(Lpnx;)Lsxp;

    iget-object v0, v4, Lgbi;->j:Lpdf;

    nop

    nop

    nop

    const-string v2, "AllIn#wrapYuvWriteView"

    nop

    nop

    invoke-interface {v0, v2}, Lpdf;->h(Ljava/lang/String;)V

    iget-object v0, v4, Lgbi;->i:Ltbs;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v5}, Ltbs;->c(Lprw;)Lcom/google/googlex/gcam/YuvWriteView;

    iget-object v0, v4, Lgbi;->j:Lpdf;

    nop

    nop

    nop

    invoke-interface {v0}, Lpdf;->g()V

    iget-object v0, v4, Lgbi;->j:Lpdf;

    nop

    const-string v2, "AllIn#addVfFrameToRelease"

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lpdf;->a(Ljava/lang/String;)Lpdh;

    move-result-object v0

    nop

    nop

    nop

    nop

    new-instance v2, Lfzj;

    nop

    nop

    nop

    const/4 v6, 0x3

    nop

    nop

    nop

    nop

    invoke-direct {v2, v5, v0, v6, v1}, Lfzj;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_15

    :try_start_3b
    iget-object v0, v4, Lgbi;->j:Lpdf;

    nop

    const-string v5, "AllInProcessor#processViewfinderFrame"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v5}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v15, v4, Lgbi;->f:Lszn;

    nop

    nop

    nop

    iget v0, v4, Lgbi;->c:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    invoke-static {}, Ltas;->a()Ltar;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v15, v0}, Lszn;->b(I)Lszh;

    move-result-object v18

    nop

    nop

    nop

    invoke-virtual/range {v18 .. v18}, Lszh;->b()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_2a

    nop

    nop

    nop

    invoke-virtual {v2}, Ltar;->a()Ltas;

    move-result-object v0

    nop

    nop

    nop

    move-object v6, v11

    nop

    goto/16 :goto_66

    nop

    nop

    nop

    nop

    :cond_2a
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    move-object/from16 v17, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v17, Lszp;

    nop

    invoke-virtual/range {v17 .. v17}, Lszp;->c()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    new-instance v3, Lszj;

    nop

    nop

    nop

    nop
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_3b} :catch_2
    .catchall {:try_start_3b .. :try_end_3b} :catchall_c

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_76
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_77
    move-object v14, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_78
    const v1, 0x1e

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_79
    move-object v2, v0

    nop

    nop

    :try_start_3c
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7a
    throw v1

    nop
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1b

    :catchall_1b
    move-exception v0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_7b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()Lnrn;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lnrn;->f:Lnrn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final synthetic close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final d()Lqht;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Lgcu;->c:Lqht;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final synthetic e()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Lnzk;->m(Lnrm;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final r()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final synthetic t(Lqiu;Lqjs;)Lnrl;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-static {}, Lnzk;->n()Lnrl;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
