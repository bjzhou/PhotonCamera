.class public final Lfhb;
.super Ljava/lang/Object;

# interfaces
.implements Lfgy;


# static fields
.field public static final a:Lnak;


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:J

.field public final b:Ljava/util/concurrent/atomic/AtomicLong;

.field public final c:Z

.field public final d:Ljava/lang/Object;

.field public e:Ljad;

.field private final f:Ldxl;

.field private final g:Lily;

.field private final h:Lkaf;

.field private final i:Ljava/util/Set;

.field private final j:Ljava/util/List;

.field private final k:Ljava/util/concurrent/atomic/AtomicLong;

.field private final l:Lkmn;

.field private final m:Lkbc;

.field private final n:Z

.field private final o:Ljvs;

.field private final p:I

.field private final q:Ldhi;

.field private final r:Ljava/util/Map;

.field private final s:Lkog;

.field private final t:Ljava/util/Map;

.field private final u:Ljava/util/Deque;

.field private v:I

.field private w:Lkmm;

.field private x:Z

.field private y:Lgrw;

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/microvideo/encoder/EisFrameFeederImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfhb;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lkaf;Lily;Ldxl;Lkli;Lkmn;Ldhi;Lkog;Lkbc;Ljava/util/Map;Ljvs;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfhb;->i:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfhb;->j:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lfhb;->b:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lfhb;->k:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfhb;->r:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfhb;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lfhb;->u:Ljava/util/Deque;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfhb;->x:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lfhb;->y:Lgrw;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lfhb;->z:J

    iput-wide v1, p0, Lfhb;->A:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lfhb;->B:J

    iput-wide v1, p0, Lfhb;->C:J

    iput-wide v1, p0, Lfhb;->D:J

    iput-object p1, p0, Lfhb;->h:Lkaf;

    iput-object p3, p0, Lfhb;->f:Ldxl;

    iput-object p2, p0, Lfhb;->g:Lily;

    iput-object p5, p0, Lfhb;->l:Lkmn;

    iput-object p7, p0, Lfhb;->s:Lkog;

    invoke-interface {p4}, Lkli;->k()Lklv;

    move-result-object p1

    sget-object p2, Lklv;->a:Lklv;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lfhb;->c:Z

    sget-object p1, Ldhv;->a:Ldhk;

    invoke-interface {p6}, Ldhi;->c()V

    iput-object p8, p0, Lfhb;->m:Lkbc;

    iput-object p9, p0, Lfhb;->t:Ljava/util/Map;

    sget-object p1, Ldho;->bX:Ldhj;

    invoke-interface {p6, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    iput-boolean p1, p0, Lfhb;->n:Z

    iput-object p10, p0, Lfhb;->o:Ljvs;

    invoke-interface {p4}, Lkli;->f()I

    move-result p1

    iput p1, p0, Lfhb;->p:I

    iput-object p6, p0, Lfhb;->q:Ldhi;

    return-void
.end method

.method private final g(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lgml;->b:Lgml;

    invoke-direct {p0, p1, v0}, Lfhb;->i(Ljava/lang/String;Lgml;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lgml;->g:Lgml;

    invoke-direct {p0, p1, v0}, Lfhb;->i(Ljava/lang/String;Lgml;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lgml;->h:Lgml;

    invoke-direct {p0, p1, v0}, Lfhb;->i(Ljava/lang/String;Lgml;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    iget-object p1, p0, Lfhb;->s:Lkog;

    invoke-virtual {p1}, Lkog;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x4

    return p1
.end method

.method private final h(J)V
    .locals 2

    iget-object v0, p0, Lfhb;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfgx;

    invoke-interface {v1, p1, p2}, Lfgx;->a(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final i(Ljava/lang/String;Lgml;)Z
    .locals 1

    iget-object v0, p0, Lfhb;->t:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkll;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object p2, p2, Lkll;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final j(Lgrw;)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-wide v2, v0, Lgrw;->c:J

    iget-wide v12, v0, Lgrw;->d:J

    iget-wide v4, v0, Lgrw;->e:J

    iget-object v6, v0, Lgrw;->b:Ljava/lang/String;

    sget-object v7, Lgml;->e:Lgml;

    invoke-direct {v1, v6, v7}, Lfhb;->i(Ljava/lang/String;Lgml;)Z

    move-result v7

    const/16 v24, 0x0

    const/4 v8, 0x1

    if-nez v7, :cond_1

    sget-object v7, Lgml;->h:Lgml;

    invoke-direct {v1, v6, v7}, Lfhb;->i(Ljava/lang/String;Lgml;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v23, 0x1

    goto :goto_0

    :cond_0
    const/16 v23, 0x0

    goto :goto_0

    :cond_1
    const/16 v23, 0x1

    :goto_0
    iget-object v7, v0, Lgrw;->o:Landroid/graphics/Rect;

    if-nez v7, :cond_2

    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, v0, Lgrw;->t:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :cond_2
    if-eqz v23, :cond_3

    new-instance v8, Landroid/graphics/Rect;

    iget v9, v7, Landroid/graphics/Rect;->left:I

    div-int/lit8 v9, v9, 0x2

    iget v10, v7, Landroid/graphics/Rect;->top:I

    div-int/lit8 v10, v10, 0x2

    iget v11, v7, Landroid/graphics/Rect;->right:I

    div-int/lit8 v11, v11, 0x2

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v8, v9, v10, v11, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v8

    :cond_3
    iget-object v8, v0, Lgrw;->t:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-long v9, v9

    mul-long v9, v9, v4

    int-to-long v14, v8

    div-long v21, v9, v14

    iget v8, v7, Landroid/graphics/Rect;->top:I

    int-to-long v8, v8

    mul-long v4, v4, v8

    div-long/2addr v4, v14

    add-long/2addr v4, v2

    const-wide/16 v8, 0x2

    div-long v8, v12, v8

    iget-object v10, v1, Lfhb;->r:Ljava/util/Map;

    add-long v14, v4, v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v10, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lgrw;->t:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v1, Lfhb;->g:Lily;

    iget-object v5, v0, Lgrw;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lily;->a(Ljava/lang/String;)Lkli;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v4, v5}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SizeF;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v23, :cond_4

    new-instance v5, Landroid/util/SizeF;

    invoke-virtual {v4}, Landroid/util/SizeF;->getWidth()F

    move-result v8

    add-float/2addr v8, v8

    invoke-virtual {v4}, Landroid/util/SizeF;->getHeight()F

    move-result v4

    add-float/2addr v4, v4

    invoke-direct {v5, v8, v4}, Landroid/util/SizeF;-><init>(FF)V

    move-object v4, v5

    :cond_4
    div-float/2addr v2, v3

    invoke-virtual {v4}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    iget v4, v0, Lgrw;->h:F

    div-float/2addr v3, v4

    iget v4, v1, Lfhb;->v:I

    mul-int/lit8 v4, v4, 0x9

    new-array v10, v4, [F

    iget-object v11, v1, Lfhb;->d:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v4, v1, Lfhb;->e:Ljad;

    const-wide/16 v25, -0x1

    if-eqz v4, :cond_5

    iget-object v5, v0, Lgrw;->t:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v8, v0, Lgrw;->t:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v4, v5, v8}, Ljad;->g(II)V

    iget-object v4, v1, Lfhb;->e:Ljad;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Ljad;->h(II)V

    iget-object v4, v1, Lfhb;->e:Ljad;

    iget-object v5, v1, Lfhb;->h:Lkaf;

    iget v7, v5, Lkaf;->a:I

    iget v8, v5, Lkaf;->b:I

    invoke-direct {v1, v6}, Lfhb;->g(Ljava/lang/String;)I

    move-result v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    mul-float v18, v2, v3

    move/from16 v16, v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move v6, v7

    move v7, v8

    move-wide v8, v14

    move-object v2, v10

    move-object v3, v11

    move-wide v10, v14

    move-wide/from16 v14, v21

    move-object/from16 v21, v2

    move/from16 v22, v27

    :try_start_1
    invoke-virtual/range {v4 .. v23}, Ljad;->j([BIIJJJJFFF[F[F[FIZ)J

    move-result-wide v4

    goto :goto_1

    :cond_5
    move-object v2, v10

    move-object v3, v11

    sget-object v4, Lfhb;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const/16 v5, 0x8e9

    invoke-interface {v4, v5}, Lnah;->G(I)Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const-string v5, "processCameraMetadata called with a null eisNativeWrapper."

    invoke-interface {v4, v5}, Lnah;->o(Ljava/lang/String;)V

    move-wide/from16 v4, v25

    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v25

    if-nez v3, :cond_6

    iget-wide v2, v1, Lfhb;->C:J

    add-long/2addr v2, v6

    iput-wide v2, v1, Lfhb;->C:J

    return-void

    :cond_6
    cmp-long v3, v4, v25

    if-gez v3, :cond_8

    iget-object v0, v1, Lfhb;->r:Ljava/util/Map;

    neg-long v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_7

    sget-object v0, Lfhb;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v4, 0x8ed

    invoke-interface {v0, v4}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v4, "eis timestamp does not exist: %d"

    invoke-interface {v0, v4, v2, v3}, Lnah;->q(Ljava/lang/String;J)V

    return-void

    :cond_7
    iget-wide v2, v1, Lfhb;->D:J

    add-long/2addr v2, v6

    iput-wide v2, v1, Lfhb;->D:J

    sget-object v2, Lfhb;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v3, 0x8ec

    invoke-interface {v2, v3}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    iget-wide v3, v1, Lfhb;->D:J

    const-string v5, "processFrame failed and dropped stabilization for t=%d (cnt=%d)"

    invoke-interface {v2, v5, v0, v3, v4}, Lnah;->y(Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lfhb;->h(J)V

    return-void

    :cond_8
    iget-object v3, v1, Lfhb;->r:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_9

    sget-object v0, Lfhb;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0x8eb

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "processFrame returned unexpected EIS timestamp %d"

    invoke-interface {v0, v2, v4, v5}, Lnah;->q(Ljava/lang/String;J)V

    return-void

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_2
    iget v9, v1, Lfhb;->v:I

    if-ge v8, v9, :cond_e

    iget-boolean v9, v1, Lfhb;->n:Z

    if-eqz v9, :cond_d

    iget-object v9, v0, Lgrw;->b:Ljava/lang/String;

    iget-object v10, v0, Lgrw;->o:Landroid/graphics/Rect;

    if-nez v10, :cond_a

    iget-object v10, v0, Lgrw;->t:Landroid/graphics/Rect;

    :cond_a
    sget-object v11, Lgml;->h:Lgml;

    invoke-direct {v1, v9, v11}, Lfhb;->i(Ljava/lang/String;Lgml;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v9

    const/16 v10, 0xc9a

    if-gt v9, v10, :cond_d

    goto :goto_3

    :cond_b
    sget-object v11, Lgml;->g:Lgml;

    invoke-direct {v1, v9, v11}, Lfhb;->i(Ljava/lang/String;Lgml;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v9

    const/16 v10, 0x64d

    if-le v9, v10, :cond_c

    goto :goto_4

    :cond_c
    :goto_3
    invoke-static {}, Llau;->b()Llau;

    move-result-object v9

    goto :goto_5

    :cond_d
    :goto_4
    mul-int/lit8 v9, v8, 0x9

    add-int/lit8 v10, v8, 0x1

    mul-int/lit8 v10, v10, 0x9

    invoke-static {v2, v9, v10}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v9

    invoke-static {v9}, Llau;->a([F)Llau;

    move-result-object v9

    :goto_5
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_e
    iget-object v0, v1, Lfhb;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfgx;

    invoke-interface {v2, v3, v4, v5}, Lfgx;->b(JLjava/util/List;)V

    goto :goto_6

    :cond_f
    iget-wide v8, v1, Lfhb;->A:J

    add-long/2addr v8, v6

    iput-wide v8, v1, Lfhb;->A:J

    iget-wide v5, v1, Lfhb;->B:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_11

    cmp-long v0, v3, v5

    if-ltz v0, :cond_11

    sub-long v5, v3, v5

    const-wide v7, 0x37e11d600L

    cmp-long v0, v5, v7

    if-ltz v0, :cond_10

    goto :goto_7

    :cond_10
    return-void

    :cond_11
    :goto_7
    iget-object v0, v1, Lfhb;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    iput-wide v3, v1, Lfhb;->B:J

    return-void

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v3, v11

    :goto_8
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method


# virtual methods
.method public final declared-synchronized a(Lfgx;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfhb;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(J)V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lfhb;->x:Z

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lfhb;->z:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iput-wide p1, p0, Lfhb;->z:J

    iget-object v0, p0, Lfhb;->q:Ldhi;

    sget-object v1, Ldho;->bU:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfhb;->o:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lfhb;->p:I

    :goto_0
    iget-object v1, p0, Lfhb;->w:Lkmm;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lfhb;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    new-instance v6, Lfgz;

    invoke-direct {v6, p0, v0}, Lfgz;-><init>(Lfhb;I)V

    move-wide v4, p1

    invoke-interface/range {v1 .. v6}, Lkmm;->b(JJLkml;)V

    :cond_2
    iget-object v0, p0, Lfhb;->b:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    add-long/2addr v1, p1

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    iget-object v0, p0, Lfhb;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v3, v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    iget-object v0, p0, Lfhb;->f:Ldxl;

    invoke-virtual {v0}, Ldxl;->b()Lgrw;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v3, v0, Lgrw;->c:J

    :goto_1
    iget-object v0, p0, Lfhb;->j:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lfhb;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/32 v5, 0x3b9aca00

    add-long/2addr v0, v5

    iget-object v2, p0, Lfhb;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    add-long/2addr v7, v5

    :goto_2
    iget-object v2, p0, Lfhb;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v9, 0x1

    if-le v2, v9, :cond_4

    iget-object v2, p0, Lfhb;->j:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v2, p0, Lfhb;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, p1, v0

    if-gez v2, :cond_5

    cmp-long v2, v11, v9

    if-ltz v2, :cond_4

    goto :goto_3

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :goto_3
    :try_start_1
    iget-object v2, p0, Lfhb;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    cmp-long v2, p1, v7

    if-gez v2, :cond_6

    cmp-long v2, v11, v9

    if-ltz v2, :cond_4

    :cond_6
    add-long v11, v3, v5

    cmp-long v2, p1, v11

    if-gez v2, :cond_7

    cmp-long v2, v3, v9

    if-ltz v2, :cond_4

    :cond_7
    iget-object v2, p0, Lfhb;->j:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v2, p0, Lfhb;->f:Ldxl;

    invoke-virtual {v2, v9, v10}, Ldxl;->a(J)Lgrw;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-direct {p0, v2}, Lfhb;->j(Lgrw;)V

    iput-object v2, p0, Lfhb;->y:Lgrw;

    goto :goto_2

    :cond_8
    invoke-direct {p0, v9, v10}, Lfhb;->h(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_9
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final declared-synchronized c(JFFLjava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p5}, Lfhb;->g(Ljava/lang/String;)I

    move-result v5

    iget-object p5, p0, Lfhb;->d:Ljava/lang/Object;

    monitor-enter p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lfhb;->e:Ljad;

    if-eqz v0, :cond_0

    move v1, p3

    move v2, p4

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Ljad;->l(FFJI)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lfhb;->u:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lfhb;->u:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfha;

    iget-wide v0, v0, Lfha;->a:J

    sub-long/2addr v0, p1

    const-wide v2, 0x12a05f200L

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object p3, Lfhb;->a:Lnak;

    invoke-virtual {p3}, Lnaf;->c()Lnaz;

    move-result-object p3

    check-cast p3, Lnah;

    const/16 p4, 0x8f4

    invoke-interface {p3, p4}, Lnah;->G(I)Lnaz;

    move-result-object p3

    check-cast p3, Lnah;

    const-string p4, "Dropping lens offset at %d; should we be listening to this?"

    invoke-interface {p3, p4, p1, p2}, Lnah;->q(Ljava/lang/String;J)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lfhb;->u:Ljava/util/Deque;

    new-instance v1, Lfha;

    invoke-direct {v1, p1, p2, p3, p4}, Lfha;-><init>(JFF)V

    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :goto_1
    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p3, p0, Lfhb;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Lfgx;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfhb;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e()V
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfhb;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lfhb;->s:Lkog;

    invoke-virtual {v1}, Lkog;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lemp;->a:Lemp;

    move-object v2, v1

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v1}, Lkog;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lemp;->b:Lemp;

    move-object v2, v1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v1}, Lkog;->isPixel2018()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lemp;->c:Lemp;

    move-object v2, v1

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v1}, Lkog;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lemp;->f:Lemp;

    move-object v2, v1

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v1}, Lkog;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v1, Lemp;->h:Lemp;

    move-object v2, v1

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lkog;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v1, Lemp;->d:Lemp;

    :goto_0
    move-object v2, v1

    goto :goto_3

    :cond_5
    iget-boolean v2, v1, Lkog;->c:Z

    if-eqz v2, :cond_6

    sget-object v1, Lemp;->g:Lemp;

    goto :goto_0

    :cond_6
    iget-boolean v2, v1, Lkog;->f:Z

    if-eqz v2, :cond_7

    sget-object v1, Lemp;->h:Lemp;

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Lkog;->i()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v1, Lemp;->i:Lemp;

    move-object v2, v1

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Lkog;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_1
    sget-object v1, Lemp;->i:Lemp;

    move-object v2, v1

    goto :goto_3

    :cond_9
    iget-boolean v2, v1, Lkog;->j:Z

    if-eqz v2, :cond_a

    goto :goto_1

    :cond_a
    iget-boolean v2, v1, Lkog;->i:Z

    if-eqz v2, :cond_b

    goto :goto_1

    :cond_b
    invoke-virtual {v1}, Lkog;->j()Z

    move-result v2

    if-eqz v2, :cond_c

    :goto_2
    sget-object v1, Lemp;->i:Lemp;

    move-object v2, v1

    goto :goto_3

    :cond_c
    iget-boolean v2, v1, Lkog;->n:Z

    if-eqz v2, :cond_d

    goto :goto_2

    :cond_d
    iget-boolean v2, v1, Lkog;->o:Z

    if-eqz v2, :cond_e

    goto :goto_2

    :cond_e
    invoke-virtual {v1}, Lkog;->k()Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lemp;->i:Lemp;

    move-object v2, v1

    :goto_3
    iget-object v1, p0, Lfhb;->h:Lkaf;

    iget v3, v1, Lkaf;->a:I

    iget v4, v1, Lkaf;->b:I

    iget-boolean v6, p0, Lfhb;->c:Z

    iget-object v1, p0, Lfhb;->s:Lkog;

    iget-boolean v5, v1, Lkog;->g:Z

    if-eqz v5, :cond_f

    const-string v1, "lib_cpi/multi_cam_calibration.combined.proto.oriole"

    move-object v7, v1

    goto :goto_6

    :cond_f
    iget-boolean v5, v1, Lkog;->h:Z

    if-eqz v5, :cond_10

    :goto_4
    const-string v1, "lib_cpi/multi_cam_calibration.combined.proto.raven"

    :goto_5
    move-object v7, v1

    goto :goto_6

    :cond_10
    iget-boolean v5, v1, Lkog;->j:Z

    if-eqz v5, :cond_11

    const-string v1, "lib_cpi/multi_cam_calibration.combined.proto.bluejay"

    goto :goto_5

    :cond_11
    iget-boolean v5, v1, Lkog;->m:Z

    if-eqz v5, :cond_12

    const-string v1, "lib_cpi/multi_cam_calibration.combined.proto.panther"

    goto :goto_5

    :cond_12
    iget-boolean v5, v1, Lkog;->l:Z

    if-eqz v5, :cond_13

    const-string v1, "lib_cpi/multi_cam_calibration.combined.proto.cheetah"

    goto :goto_5

    :cond_13
    iget-boolean v1, v1, Lkog;->i:Z

    if-eqz v1, :cond_14

    goto :goto_4

    :cond_14
    const-string v1, ""

    goto :goto_5

    :goto_6
    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static/range {v2 .. v7}, Lemq;->i(Lemp;IIFZLjava/lang/String;)Ljad;

    move-result-object v1

    iput-object v1, p0, Lfhb;->e:Ljad;

    invoke-virtual {v1}, Ljad;->e()I

    move-result v2

    iput v2, p0, Lfhb;->v:I

    invoke-virtual {v1}, Ljad;->m()V

    iget-object v2, p0, Lfhb;->u:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, p0, Lfhb;->u:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfha;

    iget-wide v2, v2, Lfha;->a:J

    iget-object v4, p0, Lfhb;->u:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfha;

    iget-wide v4, v4, Lfha;->a:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lfhb;->u:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->size()I

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    :goto_7
    iget-object v2, p0, Lfhb;->u:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, p0, Lfhb;->u:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfha;

    iget v9, v2, Lfha;->b:F

    iget v10, v2, Lfha;->c:F

    iget-wide v11, v2, Lfha;->a:J

    const/4 v13, 0x0

    move-object v8, v1

    invoke-virtual/range {v8 .. v13}, Ljad;->l(FFJI)V

    goto :goto_7

    :cond_15
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lfhb;->l:Lkmn;

    const-string v1, "mv-eis"

    invoke-interface {v0, v1}, Lkmn;->a(Ljava/lang/String;)Lkmm;

    move-result-object v0

    iput-object v0, p0, Lfhb;->w:Lkmm;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfhb;->x:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfhb;->A:J

    iput-wide v0, p0, Lfhb;->C:J

    iput-wide v0, p0, Lfhb;->D:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :cond_16
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "EisFrameFeeder stabilization does not recognize this device. Aborting."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public final declared-synchronized f()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfhb;->m:Lkbc;

    const-string v1, "EisFrameFeeder#stop"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lfhb;->m:Lkbc;

    const-string v1, "flushFrames"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lfhb;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lfhb;->f:Ldxl;

    iget-object v2, p0, Lfhb;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldxl;->a(J)Lgrw;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lfhb;->y:Lgrw;

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lfhb;->y:Lgrw;

    :cond_2
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lfhb;->j(Lgrw;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lfhb;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lfhb;->h(J)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lfhb;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lfhb;->m:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, p0, Lfhb;->w:Lkmm;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lkmm;->close()V

    iput-object v2, p0, Lfhb;->w:Lkmm;

    :cond_5
    iget-object v0, p0, Lfhb;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lfhb;->e:Ljad;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljad;->f()V

    iput-object v2, p0, Lfhb;->e:Ljad;

    goto :goto_2

    :cond_6
    sget-object v2, Lfhb;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v3, 0x8f2

    invoke-interface {v2, v3}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const-string v3, "stop called with a null eisNativeWrapper"

    invoke-interface {v2, v3}, Lnah;->o(Ljava/lang/String;)V

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-boolean v1, p0, Lfhb;->x:Z

    iget-object v0, p0, Lfhb;->m:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
