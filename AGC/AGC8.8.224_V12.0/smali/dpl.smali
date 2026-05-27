.class public final Ldpl;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Landroid/view/View;

.field public final d:[[I

.field public final e:Ljvs;

.field public final f:Ljvs;

.field public final g:[[I

.field public h:J

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Lkoj;

.field public o:Landroid/graphics/Rect;

.field public p:Lhxz;

.field public q:Ljvs;

.field public r:Lkaf;

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/faceannouncer/FaceAnnouncer"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldpl;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljvs;Ljvs;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [[I

    const v2, 0x7f14055d

    const v3, 0x7f14055f

    const v4, 0x7f14055e

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1400ff

    const v4, 0x7f14046c

    const v5, 0x7f14025e

    filled-new-array {v5, v2, v4}, [I

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const v2, 0x7f14009d

    const v5, 0x7f14009f

    const v6, 0x7f14009e

    filled-new-array {v6, v2, v5}, [I

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iput-object v1, p0, Ldpl;->d:[[I

    new-array v1, v0, [[I

    const v2, 0x7f14031b

    const v6, 0x7f14031d

    const v7, 0x7f14031c

    filled-new-array {v7, v2, v6}, [I

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f140318

    const v6, 0x7f140319

    filled-new-array {v2, v3, v6}, [I

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f140315

    const v6, 0x7f140317

    const v7, 0x7f140316

    filled-new-array {v7, v2, v6}, [I

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Ldpl;->g:[[I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Ldpl;->h:J

    const/4 v1, -0x1

    iput v1, p0, Ldpl;->i:I

    iput v1, p0, Ldpl;->j:I

    iput-boolean v4, p0, Ldpl;->k:Z

    iput-boolean v3, p0, Ldpl;->l:Z

    iput-boolean v3, p0, Ldpl;->m:Z

    iput v4, p0, Ldpl;->s:I

    sget-object v1, Lhxz;->f:Lhxz;

    iput-object v1, p0, Ldpl;->p:Lhxz;

    new-array v1, v3, [Lhyb;

    invoke-static {v1}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v1

    iput-object v1, p0, Ldpl;->q:Ljvs;

    new-instance v1, Lkaf;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Lkaf;-><init>(II)V

    iput-object v1, p0, Ldpl;->r:Lkaf;

    iput-object p1, p0, Ldpl;->b:Landroid/content/Context;

    iput-object p2, p0, Ldpl;->c:Landroid/view/View;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Ldpl;->e:Ljvs;

    iput-object p4, p0, Ldpl;->f:Ljvs;

    return-void
.end method

.method public static final f(IZ)I
    .locals 0

    if-eqz p1, :cond_0

    neg-int p0, p0

    :cond_0
    const/16 p1, -0x4b

    if-ge p0, p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x4b

    if-le p0, p1, :cond_2

    const/4 p0, 0x2

    :goto_0
    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static final g(III)I
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    mul-int p0, p0, p2

    div-int/2addr p0, p1

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    if-lt p0, p2, :cond_2

    add-int/lit8 p2, p2, -0x1

    return p2

    :cond_2
    move v0, p0

    :goto_0
    return v0
.end method

.method private final h()F
    .locals 8

    iget-object v0, p0, Ldpl;->n:Lkoj;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Ldpl;->s:I

    return v2

    :cond_0
    iget-object v0, v0, Lkoj;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Ldpl;->o:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Ldpl;->o:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    iget-boolean v4, p0, Ldpl;->l:Z

    const v5, 0x3d4ccccd    # 0.05f

    if-nez v4, :cond_3

    cmpl-float v1, v3, v2

    if-eqz v1, :cond_2

    div-float v1, v0, v3

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    float-to-int v0, v0

    float-to-int v1, v3

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Ldpl;->g(III)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    int-to-float v0, v0

    return v0

    :cond_2
    :goto_0
    return v5

    :cond_3
    iget-object v4, p0, Ldpl;->r:Lkaf;

    iget v6, v4, Lkaf;->a:I

    int-to-float v6, v6

    iget v4, v4, Lkaf;->b:I

    int-to-float v4, v4

    div-float/2addr v6, v4

    const v4, -0x401c7454    # -1.7777f

    add-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v6, 0x3ccccccd    # 0.025f

    cmpg-float v7, v4, v6

    if-gtz v7, :cond_4

    const/high16 v7, 0x41d00000    # 26.0f

    goto :goto_1

    :cond_4
    const/high16 v7, 0x420c0000    # 35.0f

    :goto_1
    cmpg-float v4, v4, v6

    if-gtz v4, :cond_5

    const/high16 v4, 0x41600000    # 14.0f

    goto :goto_2

    :cond_5
    const/high16 v4, 0x41900000    # 18.0f

    :goto_2
    const/4 v6, 0x0

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_6

    div-float v2, v0, v3

    cmpl-float v2, v2, v5

    if-lez v2, :cond_6

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v0, v2

    div-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Ldpl;->s:I

    if-eqz v2, :cond_b

    const/4 v3, 0x2

    if-eq v2, v1, :cond_7

    const/4 v6, 0x2

    :cond_7
    int-to-float v0, v0

    cmpl-float v1, v0, v7

    if-ltz v1, :cond_8

    sub-float v1, v0, v7

    int-to-float v2, v6

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_a

    iput v3, p0, Ldpl;->s:I

    goto :goto_5

    :cond_8
    cmpg-float v1, v0, v4

    if-gez v1, :cond_9

    sub-float/2addr v4, v0

    int-to-float v1, v6

    cmpl-float v1, v4, v1

    if-lez v1, :cond_a

    const/4 v1, 0x4

    goto :goto_4

    :cond_9
    const/4 v1, 0x3

    :goto_4
    iput v1, p0, Ldpl;->s:I

    :cond_a
    :goto_5
    return v0

    :cond_b
    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public final a(Z)Ljava/lang/String;
    .locals 7

    invoke-direct {p0}, Ldpl;->h()F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    iget-object p1, p0, Ldpl;->b:Landroid/content/Context;

    const v0, 0x7f140194

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    const-string v2, ""

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    iget-boolean v1, p0, Ldpl;->l:Z

    const v3, 0x7f140190

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Ldpl;->d()Z

    move-result p1

    if-nez p1, :cond_2

    return-object v2

    :cond_2
    iget-object p1, p0, Ldpl;->r:Lkaf;

    iget v1, p1, Lkaf;->a:I

    int-to-float v1, v1

    iget p1, p1, Lkaf;->b:I

    int-to-float p1, p1

    div-float/2addr v1, p1

    const p1, -0x401c7454    # -1.7777f

    add-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v1, 0x3ccccccd    # 0.025f

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_3

    const/high16 v2, 0x41d00000    # 26.0f

    goto :goto_0

    :cond_3
    const/high16 v2, 0x420c0000    # 35.0f

    :goto_0
    cmpg-float p1, p1, v1

    if-gtz p1, :cond_4

    const/high16 p1, 0x41600000    # 14.0f

    goto :goto_1

    :cond_4
    const/high16 p1, 0x41900000    # 18.0f

    :goto_1
    cmpl-float v1, v0, v2

    if-ltz v1, :cond_5

    iget-object p1, p0, Ldpl;->b:Landroid/content/Context;

    const v0, 0x7f140195

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    cmpg-float p1, v0, p1

    if-gez p1, :cond_6

    iget-object p1, p0, Ldpl;->b:Landroid/content/Context;

    const v0, 0x7f140196

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    iget-object p1, p0, Ldpl;->b:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "%s."

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const/high16 v1, 0x42480000    # 50.0f

    const-string v6, ". "

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_8

    iget-object p1, p0, Ldpl;->b:Landroid/content/Context;

    const v1, 0x7f140197

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_8
    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_9

    if-eqz p1, :cond_9

    iget-object p1, p0, Ldpl;->b:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_9
    :goto_3
    iget-object p1, p0, Ldpl;->b:Landroid/content/Context;

    new-array v1, v5, [Ljava/lang/Object;

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    const v0, 0x7f140193

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldpl;->k:Z

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldpl;->k:Z

    return-void
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Ldpl;->p:Lhxz;

    sget-object v1, Lhxz;->a:Lhxz;

    invoke-virtual {v0, v1}, Lhxz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldpl;->p:Lhxz;

    sget-object v1, Lhxz;->g:Lhxz;

    invoke-virtual {v0, v1}, Lhxz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldpl;->p:Lhxz;

    sget-object v1, Lhxz;->h:Lhxz;

    invoke-virtual {v0, v1}, Lhxz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final e()I
    .locals 1

    invoke-direct {p0}, Ldpl;->h()F

    iget v0, p0, Ldpl;->s:I

    return v0
.end method
