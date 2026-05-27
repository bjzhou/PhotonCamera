.class public final Leji;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lkad;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:I

.field public final c:I

.field public d:Lcom/google/android/libraries/vision/opengl/Texture;

.field public e:Landroid/graphics/SurfaceTexture;

.field public f:Lejp;

.field public final g:Lnph;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Leir;

.field public final j:Leiz;

.field public final k:Leiv;

.field private final l:Landroid/content/Context;

.field private final m:[F

.field private final n:[F

.field private o:F

.field private p:F

.field private q:J

.field private final r:Ljava/util/ArrayList;

.field private final s:Ljuf;

.field private final t:Lehp;

.field private final u:Lejr;

.field private final v:Lekc;

.field private final w:Leik;

.field private final x:I

.field private final y:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private final z:Lehu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/imax/ImaxSceneRenderer"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Leji;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lehp;Lehu;Lejr;Leik;Leir;Leiz;Leiv;Lejh;Lejb;Leix;Leit;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lejs;->a:I

    iput v0, p0, Leji;->c:I

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Leji;->m:[F

    new-array v0, v0, [F

    iput-object v0, p0, Leji;->n:[F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Leji;->q:J

    new-instance v0, Loef;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Loef;-><init>(Leji;I)V

    iput-object v0, p0, Leji;->y:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iput-object p1, p0, Leji;->t:Lehp;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Leji;->g:Lnph;

    iput-object p2, p0, Leji;->z:Lehu;

    iget-object p1, p3, Lejr;->c:Lekc;

    iput-object p1, p0, Leji;->v:Lekc;

    iput-object p3, p0, Leji;->u:Lejr;

    iput-object p4, p0, Leji;->w:Leik;

    iput-object p5, p0, Leji;->i:Leir;

    iput-object p6, p0, Leji;->j:Leiz;

    iput-object p7, p0, Leji;->k:Leiv;

    iput-object p12, p0, Leji;->l:Landroid/content/Context;

    iget-object p1, p3, Lejr;->b:Lkli;

    invoke-interface {p1}, Lkli;->f()I

    move-result p1

    iput p1, p0, Leji;->x:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Leji;->r:Ljava/util/ArrayList;

    new-instance p2, Ljuf;

    invoke-direct {p2}, Ljuf;-><init>()V

    iput-object p2, p0, Leji;->s:Ljuf;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p12, 0x0

    invoke-direct {p2, p12}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Leji;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Leji;->q:J

    sget p2, Lejs;->a:I

    int-to-double v0, p2

    invoke-virtual {p3}, Lejr;->a()D

    move-result-wide p2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p2

    const-wide p2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, p2

    double-to-int p2, v0

    iput p2, p0, Leji;->b:I

    invoke-virtual {p4}, Leik;->k()Z

    move-result p2

    iput-boolean p2, p5, Leir;->h:Z

    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final a(F)F
    .locals 2

    iget-object v0, p0, Leji;->i:Leir;

    iget v0, v0, Leir;->d:F

    iget v1, p0, Leji;->o:F

    div-float/2addr v0, v1

    mul-float v0, v0, p1

    return v0
.end method

.method private final b(F)F
    .locals 2

    iget-object v0, p0, Leji;->i:Leir;

    iget v0, v0, Leir;->e:F

    iget v1, p0, Leji;->p:F

    div-float/2addr v0, v1

    mul-float v0, v0, p1

    return v0
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget-object v0, p0, Leji;->s:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    iget-object v0, p0, Leji;->r:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leiq;

    invoke-interface {v3}, Leiq;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    return-void
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10

    iget-object p1, p0, Leji;->s:Ljuf;

    invoke-virtual {p1}, Ljuf;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0xbe2

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object p1, p0, Leji;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Leji;->e:Landroid/graphics/SurfaceTexture;

    invoke-static {p1}, Llkj;->C(Ljava/lang/Object;)V

    iget-object v1, p0, Leji;->t:Lehp;

    invoke-virtual {v1}, Lehp;->d()V

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v1, p0, Leji;->m:[F

    invoke-virtual {p1, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v1

    iget-object p1, p0, Leji;->f:Lejp;

    iget-object v3, p0, Leji;->n:[F

    iget-object p1, p1, Lejp;->a:Lelh;

    invoke-virtual {p1, v3}, Lelh;->f([F)V

    iget-object p1, p0, Leji;->f:Lejp;

    iget-object v3, p0, Leji;->m:[F

    iget-object p1, p1, Lejp;->a:Lelh;

    invoke-virtual {p1, v3}, Lelh;->e([F)V

    iget-object p1, p0, Leji;->t:Lehp;

    iget-object v3, p0, Leji;->m:[F

    invoke-virtual {p1, v3, v1, v2}, Lehp;->a([FJ)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Leji;->q:J

    sub-long v3, v1, v3

    iput-wide v1, p0, Leji;->q:J

    iget-object p1, p0, Leji;->w:Leik;

    invoke-virtual {p1}, Leik;->g()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Leji;->i:Leir;

    iget v1, v1, Leir;->g:F

    sub-float v1, p1, v1

    const v2, 0x3e19999a    # 0.15f

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v2

    const v2, 0x397ecdd2    # 2.4300002E-4f

    mul-float p1, p1, v2

    long-to-float v2, v3

    const v3, 0x36eae18b    # 7.0E-6f

    add-float/2addr p1, v3

    mul-float v2, v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object v1, p0, Leji;->i:Leir;

    iget v2, v1, Leir;->g:F

    add-float/2addr v2, p1

    iput v2, v1, Leir;->g:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v2, v2, p1

    if-lez v2, :cond_2

    iput p1, v1, Leir;->g:F

    :cond_2
    iget-object v2, p0, Leji;->w:Leik;

    iget-object v3, v2, Leik;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    iget-object v2, v2, Leik;->a:Lekg;

    iget-object v2, v2, Lekg;->d:Lejt;

    invoke-interface {v2}, Lejt;->getCaptureProgress()F

    move-result v2

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Leir;->m:Z

    iget-object v1, p0, Leji;->i:Leir;

    iget-object v1, v1, Leir;->f:[F

    iget-object v2, p0, Leji;->w:Leik;

    iget-wide v2, v2, Leik;->p:D

    neg-double v2, v2

    double-to-float v2, v2

    invoke-static {v1, v0, v4, v4, v2}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    iget-object v1, p0, Leji;->i:Leir;

    iget-boolean v2, v1, Leir;->h:Z

    if-eqz v2, :cond_5

    iget v2, v1, Leir;->g:F

    iget v1, v1, Leir;->q:F

    add-float/2addr v2, v1

    add-float/2addr v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p0, Leji;->b:I

    int-to-float v2, v2

    iget v3, p0, Leji;->c:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    add-float/2addr v2, v2

    div-float/2addr v2, v3

    goto :goto_1

    :cond_5
    iget v2, v1, Leir;->g:F

    iget v1, v1, Leir;->p:F

    add-float/2addr v2, v1

    add-float/2addr v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Leji;->i:Leir;

    iget v2, v2, Leir;->a:F

    add-float/2addr v2, v2

    iget v3, p0, Leji;->b:I

    int-to-float v3, v3

    iget v4, p0, Leji;->c:I

    int-to-float v4, v4

    mul-float v4, v4, v1

    mul-float v2, v2, v3

    div-float/2addr v2, v4

    :goto_1
    iget-object v1, p0, Leji;->i:Leir;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, v1, Leir;->h:Z

    const v4, 0x3f666666    # 0.9f

    if-eqz v3, :cond_6

    mul-float v4, v4, v2

    iput v4, v1, Leir;->d:F

    iget v6, p0, Leji;->o:F

    div-float/2addr v2, v6

    iget v6, p0, Leji;->p:F

    mul-float v2, v2, v6

    iput v2, v1, Leir;->e:F

    goto :goto_2

    :cond_6
    mul-float v4, v4, v2

    iput v4, v1, Leir;->e:F

    iget v6, p0, Leji;->p:F

    div-float/2addr v2, v6

    iget v6, p0, Leji;->o:F

    mul-float v2, v2, v6

    iput v2, v1, Leir;->d:F

    move v9, v4

    move v4, v2

    move v2, v9

    :goto_2
    iget-object v6, p0, Leji;->w:Leik;

    iget-wide v6, v6, Leik;->f:D

    double-to-float v6, v6

    const/high16 v7, 0x43b40000    # 360.0f

    const/high16 v8, 0x3f000000    # 0.5f

    if-eqz v3, :cond_8

    iget v3, p0, Leji;->o:F

    div-float/2addr v6, v3

    mul-float v6, v6, v4

    iput v6, v1, Leir;->b:F

    iget-boolean v3, v1, Leir;->m:Z

    iget v4, v1, Leir;->g:F

    iget v6, p0, Leji;->p:F

    add-float/2addr v6, v7

    mul-float v4, v4, v6

    mul-float v2, v2, v8

    invoke-direct {p0, v4}, Leji;->b(F)F

    move-result v4

    mul-float v4, v4, v8

    sub-float/2addr p1, v2

    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object v2, p0, Leji;->w:Leik;

    iget-wide v6, v2, Leik;->g:D

    double-to-float v2, v6

    invoke-direct {p0, v2}, Leji;->b(F)F

    move-result v2

    sub-float/2addr p1, v2

    if-nez v3, :cond_7

    neg-float p1, p1

    :cond_7
    iput p1, v1, Leir;->c:F

    goto :goto_3

    :cond_8
    iget-boolean p1, v1, Leir;->m:Z

    iget v2, v1, Leir;->g:F

    iget v3, p0, Leji;->o:F

    add-float/2addr v3, v7

    mul-float v2, v2, v3

    iget v3, v1, Leir;->a:F

    mul-float v4, v4, v8

    sub-float/2addr v3, v4

    invoke-direct {p0, v2}, Leji;->a(F)F

    move-result v2

    mul-float v2, v2, v8

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Leji;->w:Leik;

    iget-wide v3, v3, Leik;->g:D

    double-to-float v3, v3

    invoke-direct {p0, v3}, Leji;->a(F)F

    move-result v3

    sub-float/2addr v2, v3

    if-nez p1, :cond_9

    neg-float v2, v2

    :cond_9
    iput v2, v1, Leir;->b:F

    iget-object p1, p0, Leji;->i:Leir;

    neg-float v1, v6

    iget v2, p0, Leji;->p:F

    div-float/2addr v1, v2

    iget v2, p1, Leir;->e:F

    mul-float v1, v1, v2

    iput v1, p1, Leir;->c:F

    :goto_3
    iget-object p1, p0, Leji;->i:Leir;

    iget-object v1, p1, Leir;->o:Lcom/google/android/libraries/vision/opengl/Texture;

    if-eqz v1, :cond_a

    iget-object v1, p0, Leji;->w:Leik;

    invoke-virtual {v1}, Leik;->j()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    :goto_4
    iput-boolean v5, p1, Leir;->n:Z

    iget-object p1, p0, Leji;->f:Lejp;

    invoke-virtual {p1}, Lejp;->b()V

    iget-object p1, p0, Leji;->i:Leir;

    iget v1, p1, Leir;->j:I

    iget p1, p1, Leir;->k:I

    invoke-static {v0, v0, v1, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object p1, p0, Leji;->r:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_5
    if-ge v0, v1, :cond_b

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leiq;

    invoke-interface {v2}, Leiq;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    return-void
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4

    iget-object p1, p0, Leji;->i:Leir;

    iput p2, p1, Leir;->j:I

    iput p3, p1, Leir;->k:I

    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p1, Leir;->a:F

    iget-object p1, p0, Leji;->l:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    mul-int/lit8 p1, p1, 0x5a

    iget-object v0, p0, Leji;->n:[F

    neg-int v1, p1

    int-to-float v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v3, v1}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    iget-object v0, p0, Leji;->w:Leik;

    iget v1, p0, Leji;->x:I

    sub-int/2addr v1, p1

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    iput v1, v0, Leik;->n:I

    iput p1, v0, Leik;->o:I

    iget-object p1, p0, Leji;->i:Leir;

    invoke-virtual {v0}, Leik;->k()Z

    move-result v0

    iput-boolean v0, p1, Leir;->h:Z

    iget-object p1, p0, Leji;->i:Leir;

    iget-boolean p1, p1, Leir;->h:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Leji;->u:Lejr;

    invoke-virtual {p1}, Lejr;->a()D

    move-result-wide v0

    double-to-float p1, v0

    iget-object v0, p0, Leji;->v:Lekc;

    iget v1, v0, Lekc;->b:I

    int-to-float v1, v1

    iget v0, v0, Lekc;->a:I

    int-to-float v0, v0

    mul-float p1, p1, v1

    div-float/2addr p1, v0

    iput p1, p0, Leji;->p:F

    iget-object p1, p0, Leji;->u:Lejr;

    invoke-virtual {p1}, Lejr;->a()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Leji;->o:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Leji;->u:Lejr;

    invoke-virtual {p1}, Lejr;->a()D

    move-result-wide v0

    double-to-float p1, v0

    iget-object v0, p0, Leji;->v:Lekc;

    iget v1, v0, Lekc;->b:I

    int-to-float v1, v1

    iget v0, v0, Lekc;->a:I

    int-to-float v0, v0

    mul-float p1, p1, v1

    div-float/2addr p1, v0

    iput p1, p0, Leji;->o:F

    iget-object p1, p0, Leji;->u:Lejr;

    invoke-virtual {p1}, Lejr;->a()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Leji;->p:F

    :goto_0
    iget-object p1, p0, Leji;->i:Leir;

    iget-boolean v0, p1, Leir;->h:Z

    if-eqz v0, :cond_1

    iget v0, p1, Leir;->k:I

    int-to-float v0, v0

    iget v1, p1, Leir;->j:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    iput v0, p1, Leir;->l:F

    iget v0, p0, Leji;->o:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    iput v0, p1, Leir;->p:F

    iget v0, p0, Leji;->p:F

    div-float/2addr v0, v1

    iput v0, p1, Leir;->q:F

    iget-object p1, p0, Leji;->t:Lehp;

    invoke-virtual {p1, p2, p3}, Lehp;->b(II)V

    iget-object p1, p0, Leji;->f:Lejp;

    invoke-virtual {p1, p2, p3}, Lejp;->c(II)V

    iget-object p1, p0, Leji;->r:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leiq;

    invoke-interface {v1, p2, p3}, Leiq;->c(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    new-instance p1, Lcom/google/android/libraries/vision/opengl/Texture;

    iget-object p2, p0, Leji;->v:Lekc;

    iget v0, p2, Lekc;->a:I

    iget p2, p2, Lekc;->b:I

    const v1, 0x8d65

    invoke-direct {p1, v0, p2, v1}, Lcom/google/android/libraries/vision/opengl/Texture;-><init>(III)V

    iput-object p1, p0, Leji;->d:Lcom/google/android/libraries/vision/opengl/Texture;

    new-instance p1, Lejp;

    iget-object p2, p0, Leji;->d:Lcom/google/android/libraries/vision/opengl/Texture;

    iget-object v0, p0, Leji;->i:Leir;

    invoke-direct {p1, p2, v0}, Lejp;-><init>(Lcom/google/android/libraries/vision/opengl/Texture;Leir;)V

    iput-object p1, p0, Leji;->f:Lejp;

    iget-object p1, p0, Leji;->e:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Leji;->e:Landroid/graphics/SurfaceTexture;

    :cond_0
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Leji;->d:Lcom/google/android/libraries/vision/opengl/Texture;

    invoke-static {p2}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/google/android/libraries/vision/opengl/Texture;->getName()I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iget-object p2, p0, Leji;->v:Lekc;

    iget v0, p2, Lekc;->a:I

    iget p2, p2, Lekc;->b:I

    invoke-virtual {p1, v0, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object p2, p0, Leji;->y:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object p1, p0, Leji;->e:Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Leji;->g:Lnph;

    invoke-virtual {p2, p1}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object p2, p0, Leji;->s:Ljuf;

    new-instance v0, Leid;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Leid;-><init>(Leji;Landroid/graphics/SurfaceTexture;I)V

    invoke-virtual {p2, v0}, Ljuf;->d(Lkad;)V

    iget-object p1, p0, Leji;->t:Lehp;

    iget-object p2, p0, Leji;->z:Lehu;

    invoke-virtual {p1, p2}, Lehp;->e(Lehu;)V

    iget-object p1, p0, Leji;->t:Lehp;

    iget-object p2, p0, Leji;->d:Lcom/google/android/libraries/vision/opengl/Texture;

    invoke-static {p2}, Llkj;->C(Ljava/lang/Object;)V

    iget-object v0, p0, Leji;->v:Lekc;

    invoke-virtual {p1, p2, v0}, Lehp;->c(Lcom/google/android/libraries/vision/opengl/Texture;Lekc;)V

    return-void
.end method
