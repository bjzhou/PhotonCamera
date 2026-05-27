.class public final Ldjm;
.super Ljava/lang/Object;


# static fields
.field private static final c:Lnak;

.field private static d:Lkaf;


# instance fields
.field public final a:Lkaf;

.field public final b:I

.field private final e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/data/GlideFilmstripManager"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldjm;->c:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldhi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldjm;->e:Landroid/content/Context;

    sget-object p1, Ldho;->f:Ldhk;

    invoke-interface {p2, p1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v0, Lkaf;

    invoke-direct {v0, p1, p1}, Lkaf;-><init>(II)V

    iput-object v0, p0, Ldjm;->a:Lkaf;

    sget-object p1, Ldho;->g:Ldhk;

    invoke-interface {p2, p1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Ldjm;->b:I

    return-void
.end method

.method public static d(Lkaf;DLkaf;)Lkaf;
    .locals 6

    iget v0, p0, Lkaf;->a:I

    iget v1, p0, Lkaf;->b:I

    mul-int v2, v0, v1

    int-to-double v2, v2

    cmpg-double v4, v2, p1

    if-gez v4, :cond_1

    iget v2, p3, Lkaf;->a:I

    if-ge v0, v2, :cond_1

    iget v0, p3, Lkaf;->b:I

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lkaf;->b()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    iget v0, p0, Lkaf;->a:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    iget v0, p0, Lkaf;->b:I

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    iget p1, p3, Lkaf;->a:I

    if-gt v1, p1, :cond_3

    iget v0, p3, Lkaf;->b:I

    if-le p2, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lkaf;

    invoke-direct {p0, v1, p2}, Lkaf;-><init>(II)V

    return-object p0

    :cond_3
    :goto_1
    iget p2, p0, Lkaf;->a:I

    int-to-double v0, p2

    iget p2, p3, Lkaf;->b:I

    int-to-double v2, p2

    iget p2, p0, Lkaf;->b:I

    int-to-double v4, p2

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    cmpl-double v4, p1, v2

    if-lez v4, :cond_4

    move-wide p1, v2

    goto :goto_2

    :cond_4
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    new-instance v2, Lkaf;

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    iget v0, p3, Lkaf;->a:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget p0, p0, Lkaf;->b:I

    int-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    iget p0, p3, Lkaf;->b:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-direct {v2, v0, p0}, Lkaf;-><init>(II)V

    return-object v2
.end method

.method public static e()Lkaf;
    .locals 14

    sget-object v0, Ldjm;->d:Lkaf;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v9

    const/4 v10, 0x2

    new-array v1, v10, [I

    const/4 v11, 0x1

    invoke-static {v9, v1, v0, v1, v11}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    const/16 v1, 0x9

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    new-array v12, v11, [Landroid/opengl/EGLConfig;

    new-array v13, v11, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, v9

    move-object v4, v12

    move-object v7, v13

    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    aget v1, v13, v0

    if-nez v1, :cond_0

    sget-object v0, Ldjm;->c:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "No EGL configurations found!"

    const/16 v2, 0x3a4

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    aget-object v1, v12, v0

    const/16 v2, 0x3057

    const/16 v3, 0x3056

    const/16 v4, 0x40

    const/16 v5, 0x3038

    filled-new-array {v2, v4, v3, v4, v5}, [I

    move-result-object v2

    invoke-static {v9, v1, v2, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v2

    const/16 v3, 0x3098

    filled-new-array {v3, v10, v5}, [I

    move-result-object v3

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v9, v1, v4, v3, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-static {v9, v2, v2, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    new-array v3, v11, [I

    const/16 v4, 0xd33

    invoke-static {v4, v3, v0}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v0, v3, v0

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v9, v3, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    invoke-static {v9, v2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    invoke-static {v9, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lkaf;

    const/16 v1, 0x800

    invoke-direct {v0, v1, v1}, Lkaf;-><init>(II)V

    sput-object v0, Ldjm;->d:Lkaf;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1000

    if-le v1, v2, :cond_2

    new-instance v0, Lkaf;

    invoke-direct {v0, v2, v2}, Lkaf;-><init>(II)V

    sput-object v0, Ldjm;->d:Lkaf;

    goto :goto_1

    :cond_2
    new-instance v1, Lkaf;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lkaf;-><init>(II)V

    sput-object v1, Ldjm;->d:Lkaf;

    :cond_3
    :goto_1
    sget-object v0, Ldjm;->d:Lkaf;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x303f
        0x308e
        0x3029
        0x0
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data
.end method

.method public static final f()Lbzp;
    .locals 4

    new-instance v0, Lbzp;

    invoke-direct {v0}, Lbzp;-><init>()V

    sget-object v1, Lbxk;->a:Lbqe;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbzg;->y(Lbqe;Ljava/lang/Object;)Lbzg;

    move-result-object v0

    check-cast v0, Lbzp;

    return-object v0
.end method


# virtual methods
.method public final a()Lbpb;
    .locals 1

    iget-object v0, p0, Ldjm;->e:Landroid/content/Context;

    invoke-static {v0}, Lbol;->c(Landroid/content/Context;)Lbpd;

    move-result-object v0

    invoke-virtual {v0}, Lbpd;->b()Lbpb;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbpb;
    .locals 1

    iget-object v0, p0, Ldjm;->e:Landroid/content/Context;

    invoke-static {v0}, Lbol;->c(Landroid/content/Context;)Lbpd;

    move-result-object v0

    invoke-virtual {v0}, Lbpd;->c()Lbpb;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lbqb;Lkaf;)Lbzp;
    .locals 3

    iget v0, p0, Ldjm;->b:I

    int-to-double v0, v0

    invoke-static {}, Ldjm;->e()Lkaf;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Ldjm;->d(Lkaf;DLkaf;)Lkaf;

    move-result-object p2

    new-instance v0, Lbzp;

    invoke-direct {v0}, Lbzp;-><init>()V

    invoke-virtual {v0, p1}, Lbzg;->z(Lbqb;)Lbzg;

    move-result-object p1

    check-cast p1, Lbzp;

    invoke-virtual {p1}, Lbzg;->K()Lbzg;

    move-result-object p1

    check-cast p1, Lbzp;

    invoke-virtual {p1}, Lbzg;->q()Lbzg;

    move-result-object p1

    check-cast p1, Lbzp;

    iget v0, p2, Lkaf;->a:I

    iget p2, p2, Lkaf;->b:I

    invoke-virtual {p1, v0, p2}, Lbzg;->u(II)Lbzg;

    move-result-object p1

    check-cast p1, Lbzp;

    return-object p1
.end method
