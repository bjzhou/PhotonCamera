.class public final Lfrh;
.super Ljava/lang/Object;

# interfaces
.implements Lfsr;


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Lfkk;

.field private final d:Lebl;

.field private final e:Lhmb;

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;

.field private volatile g:I

.field private volatile h:F

.field private volatile i:I

.field private volatile j:F

.field private volatile k:Z

.field private final l:Ldhi;

.field private volatile m:I

.field private final n:Lmrd;


# direct methods
.method public constructor <init>(Ldxl;Lkli;Ldhi;Lfkk;Lebl;Lhmb;Lmrd;[B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p8, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p8, p0, Lfrh;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x1

    iput v0, p0, Lfrh;->m:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lfrh;->k:Z

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_MAX_ANALOG_SENSITIVITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lkli;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lfrh;->a:I

    sget-object p2, Ldhw;->x:Ldhj;

    invoke-interface {p3, p2}, Ldhi;->l(Ldhj;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Ldho;->a:Ldhk;

    invoke-interface {p3}, Ldhi;->e()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lfrh;->b:Z

    iput-object p4, p0, Lfrh;->c:Lfkk;

    iput-object p5, p0, Lfrh;->d:Lebl;

    iput-object p6, p0, Lfrh;->e:Lhmb;

    iput-object p7, p0, Lfrh;->n:Lmrd;

    iput-object p3, p0, Lfrh;->l:Ldhi;

    new-instance p2, Lfrg;

    invoke-direct {p2, p8}, Lfrg;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    sget-object p3, Lnnv;->a:Lnnv;

    invoke-virtual {p1, p2, p3}, Ldxl;->c(Ldxm;Ljava/util/concurrent/Executor;)Lkad;

    return-void
.end method

.method private final b(Lgrw;I)Z
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p1, Lgrw;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    int-to-long v2, p2

    cmp-long p2, v0, v2

    iget p1, p1, Lgrw;->f:I

    if-ltz p2, :cond_0

    iget p2, p0, Lfrh;->a:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private static final c(Lgrw;F)Z
    .locals 1

    iget-object v0, p0, Lgrw;->t:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object p0, p0, Lgrw;->o:Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    cmpl-float p0, v0, p1

    if-ltz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 5

    iget-object v0, p0, Lfrh;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgrw;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lfrh;->k:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lfrh;->k:Z

    :cond_0
    iget v0, p0, Lfrh;->m:I

    return v0

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lfrh;->k:Z

    iget-object v2, p0, Lfrh;->c:Lfkk;

    invoke-virtual {v2}, Lfkk;->c()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_2

    iput v3, p0, Lfrh;->m:I

    return v3

    :cond_2
    iget-object v2, p0, Lfrh;->d:Lebl;

    iget-object v2, v2, Lebl;->b:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lfrh;->e:Lhmb;

    invoke-virtual {v2}, Lhmb;->a()Ljvs;

    move-result-object v2

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lfrh;->n:Lmrd;

    invoke-virtual {v2}, Lmrd;->g()Ljvs;

    move-result-object v2

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lfrh;->l:Ldhi;

    sget-object v4, Ldhq;->X:Ldhj;

    invoke-interface {v2, v4}, Ldhi;->l(Ldhj;)Z

    move-result v2

    const/16 v4, 0x42

    if-eq v1, v2, :cond_4

    const/16 v2, 0x21

    goto :goto_0

    :cond_4
    const/16 v2, 0x42

    :goto_0
    iput v2, p0, Lfrh;->g:I

    const v2, 0x3f99999a    # 1.2f

    iput v2, p0, Lfrh;->h:F

    iget-boolean v2, p0, Lfrh;->b:Z

    if-eqz v2, :cond_5

    iput v4, p0, Lfrh;->i:I

    const/high16 v2, 0x40400000    # 3.0f

    iput v2, p0, Lfrh;->j:F

    goto :goto_1

    :cond_5
    iget v2, p0, Lfrh;->g:I

    iput v2, p0, Lfrh;->i:I

    iget v2, p0, Lfrh;->h:F

    iput v2, p0, Lfrh;->j:F

    :goto_1
    iget v2, p0, Lfrh;->h:F

    invoke-static {v0, v2}, Lfrh;->c(Lgrw;F)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lfrh;->g:I

    invoke-direct {p0, v0, v2}, Lfrh;->b(Lgrw;I)Z

    move-result v2

    if-eqz v2, :cond_6

    iput v3, p0, Lfrh;->m:I

    goto :goto_2

    :cond_6
    iget v2, p0, Lfrh;->j:F

    invoke-static {v0, v2}, Lfrh;->c(Lgrw;F)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lfrh;->i:I

    invoke-direct {p0, v0, v2}, Lfrh;->b(Lgrw;I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    iput v0, p0, Lfrh;->m:I

    goto :goto_2

    :cond_7
    iput v1, p0, Lfrh;->m:I

    :goto_2
    iget v0, p0, Lfrh;->m:I

    return v0

    :cond_8
    :goto_3
    iput v1, p0, Lfrh;->m:I

    return v1
.end method
