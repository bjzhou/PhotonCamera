.class public final Lak;
.super Ljava/lang/Object;


# static fields
.field private static h:I


# instance fields
.field a:I

.field public final b:Laj;

.field public c:[Lai;

.field public d:[Z

.field public e:I

.field public f:I

.field public final g:Landroidx/wear/ambient/AmbientDelegate;

.field private i:I

.field private j:I

.field private k:I

.field private l:[Lal;

.field private m:I

.field private n:[Lai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e8

    sput v0, Lak;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lak;->a:I

    new-instance v1, Laj;

    invoke-direct {v1}, Laj;-><init>()V

    iput-object v1, p0, Lak;->b:Laj;

    const/16 v1, 0x20

    iput v1, p0, Lak;->i:I

    iput v1, p0, Lak;->j:I

    const/4 v2, 0x0

    iput-object v2, p0, Lak;->c:[Lai;

    new-array v3, v1, [Z

    iput-object v3, p0, Lak;->d:[Z

    const/4 v3, 0x1

    iput v3, p0, Lak;->e:I

    iput v0, p0, Lak;->f:I

    iput v1, p0, Lak;->k:I

    sget v3, Lak;->h:I

    new-array v3, v3, [Lal;

    iput-object v3, p0, Lak;->l:[Lal;

    iput v0, p0, Lak;->m:I

    new-array v0, v1, [Lai;

    iput-object v0, p0, Lak;->n:[Lai;

    new-array v0, v1, [Lai;

    iput-object v0, p0, Lak;->c:[Lai;

    invoke-direct {p0}, Lak;->r()V

    new-instance v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-direct {v0, v2}, Landroidx/wear/ambient/AmbientDelegate;-><init>([B)V

    iput-object v0, p0, Lak;->g:Landroidx/wear/ambient/AmbientDelegate;

    return-void
.end method

.method public static b(Lak;Lal;Lal;IFLal;Lal;IZ)Lai;
    .locals 9

    invoke-virtual {p0}, Lak;->a()Lai;

    move-result-object v8

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lai;->d(Lal;Lal;IFLal;Lal;I)V

    if-eqz p8, :cond_0

    invoke-virtual {p0}, Lak;->d()Lal;

    move-result-object v0

    invoke-virtual {p0}, Lak;->d()Lal;

    move-result-object v1

    const/4 v2, 0x4

    iput v2, v0, Lal;->c:I

    iput v2, v1, Lal;->c:I

    invoke-virtual {v8, v0, v1}, Lai;->c(Lal;Lal;)V

    :cond_0
    return-object v8
.end method

.method public static c(Lak;Lal;Lal;IZ)Lai;
    .locals 1

    invoke-virtual {p0}, Lak;->a()Lai;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lai;->h(Lal;Lal;I)V

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lak;->k(Lai;I)V

    :cond_0
    return-object v0
.end method

.method public static final p(Ljava/lang/Object;)I
    .locals 1

    check-cast p0, Lam;

    iget-object p0, p0, Lam;->f:Lal;

    if-eqz p0, :cond_0

    iget p0, p0, Lal;->d:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final q()V
    .locals 3

    iget v0, p0, Lak;->i:I

    add-int/2addr v0, v0

    iput v0, p0, Lak;->i:I

    iget-object v1, p0, Lak;->c:[Lai;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai;

    iput-object v0, p0, Lak;->c:[Lai;

    iget-object v0, p0, Lak;->g:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v1, v0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iget v2, p0, Lak;->i:I

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lal;

    iput-object v1, v0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iget v0, p0, Lak;->i:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lak;->d:[Z

    iput v0, p0, Lak;->j:I

    iput v0, p0, Lak;->k:I

    iget-object v0, p0, Lak;->b:Laj;

    iget-object v0, v0, Laj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private final r()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lak;->c:[Lai;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lak;->g:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v2, v2, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v2, Lend;

    invoke-virtual {v2, v1}, Lend;->k(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lak;->c:[Lai;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final s(I)Lal;
    .locals 3

    iget-object v0, p0, Lak;->g:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Lend;

    invoke-virtual {v0}, Lend;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lal;

    if-nez v0, :cond_0

    new-instance v0, Lal;

    invoke-direct {v0, p1}, Lal;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lal;->b()V

    iput p1, v0, Lal;->h:I

    :goto_0
    iget p1, p0, Lak;->m:I

    sget v1, Lak;->h:I

    if-lt p1, v1, :cond_1

    add-int/2addr v1, v1

    sput v1, Lak;->h:I

    iget-object p1, p0, Lak;->l:[Lal;

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lal;

    iput-object p1, p0, Lak;->l:[Lal;

    :cond_1
    iget-object p1, p0, Lak;->l:[Lal;

    iget v1, p0, Lak;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lak;->m:I

    aput-object v0, p1, v1

    return-object v0
.end method


# virtual methods
.method public final a()Lai;
    .locals 3

    iget-object v0, p0, Lak;->g:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v0, Lend;

    invoke-virtual {v0}, Lend;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lai;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lai;

    iget-object v2, p0, Lak;->g:Landroidx/wear/ambient/AmbientDelegate;

    invoke-direct {v0, v2, v1, v1, v1}, Lai;-><init>(Landroidx/wear/ambient/AmbientDelegate;[B[B[B)V

    goto :goto_0

    :cond_0
    iput-object v1, v0, Lai;->a:Lal;

    iget-object v1, v0, Lai;->d:Lah;

    const/4 v2, -0x1

    iput v2, v1, Lah;->e:I

    iput v2, v1, Lah;->f:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Lah;->g:Z

    iput v2, v1, Lah;->a:I

    const/4 v1, 0x0

    iput v1, v0, Lai;->b:F

    iput-boolean v2, v0, Lai;->e:Z

    :goto_0
    return-object v0
.end method

.method public final d()Lal;
    .locals 3

    iget v0, p0, Lak;->e:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lak;->j:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lak;->q()V

    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lak;->s(I)Lal;

    move-result-object v0

    iget v1, p0, Lak;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lak;->a:I

    iget v2, p0, Lak;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lak;->e:I

    iput v1, v0, Lal;->a:I

    iget-object v2, p0, Lak;->g:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v2, v2, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    check-cast v2, [Lal;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public final e(Ljava/lang/Object;)Lal;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v0, p0, Lak;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lak;->j:I

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lak;->q()V

    :cond_1
    check-cast p1, Lam;

    iget-object v0, p1, Lam;->f:Lal;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lam;->e()V

    iget-object v0, p1, Lam;->f:Lal;

    goto :goto_0

    :cond_2
    :goto_0
    iget p1, v0, Lal;->a:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_4

    iget v3, p0, Lak;->a:I

    if-gt p1, v3, :cond_3

    iget-object v3, p0, Lak;->g:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v3, v3, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    check-cast v3, [Lal;

    aget-object v3, v3, p1

    if-nez v3, :cond_5

    :cond_3
    if-eq p1, v2, :cond_4

    invoke-virtual {v0}, Lal;->b()V

    :cond_4
    iget p1, p0, Lak;->a:I

    add-int/2addr p1, v1

    iput p1, p0, Lak;->a:I

    iget v2, p0, Lak;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lak;->e:I

    iput p1, v0, Lal;->a:I

    iput v1, v0, Lal;->h:I

    iget-object v1, p0, Lak;->g:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v1, v1, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    check-cast v1, [Lal;

    aput-object v0, v1, p1

    :cond_5
    return-object v0
.end method

.method public final f()Lal;
    .locals 3

    iget v0, p0, Lak;->e:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lak;->j:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lak;->q()V

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lak;->s(I)Lal;

    move-result-object v0

    iget v1, p0, Lak;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lak;->a:I

    iget v2, p0, Lak;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lak;->e:I

    iput v1, v0, Lal;->a:I

    iget-object v2, p0, Lak;->g:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v2, v2, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    check-cast v2, [Lal;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public final g(Lai;)V
    .locals 12

    iget v0, p0, Lak;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lak;->k:I

    if-ge v0, v2, :cond_0

    iget v0, p0, Lak;->e:I

    add-int/2addr v0, v1

    iget v2, p0, Lak;->j:I

    if-lt v0, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lak;->q()V

    :cond_1
    iget-boolean v0, p1, Lai;->e:Z

    const/4 v2, 0x0

    if-nez v0, :cond_14

    iget v0, p0, Lak;->f:I

    const/4 v3, -0x1

    if-lez v0, :cond_5

    iget-object v0, p1, Lai;->d:Lah;

    iget-object v4, p0, Lak;->c:[Lai;

    iget v5, v0, Lah;->e:I

    const/4 v6, 0x0

    :goto_0
    if-eq v5, v3, :cond_4

    iget v7, v0, Lah;->a:I

    if-ge v6, v7, :cond_4

    iget-object v7, v0, Lah;->h:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v7, v7, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iget-object v8, v0, Lah;->b:[I

    aget v8, v8, v5

    check-cast v7, [Lal;

    aget-object v7, v7, v8

    iget v8, v7, Lal;->b:I

    if-eq v8, v3, :cond_3

    iget-object v6, v0, Lah;->d:[F

    aget v5, v6, v5

    invoke-virtual {v0, v7}, Lah;->c(Lal;)F

    iget v6, v7, Lal;->b:I

    aget-object v6, v4, v6

    iget-boolean v7, v6, Lai;->e:Z

    if-nez v7, :cond_2

    iget-object v7, v6, Lai;->d:Lah;

    iget v8, v7, Lah;->e:I

    const/4 v9, 0x0

    :goto_1
    if-eq v8, v3, :cond_2

    iget v10, v7, Lah;->a:I

    if-ge v9, v10, :cond_2

    iget-object v10, v0, Lah;->h:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v10, v10, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iget-object v11, v7, Lah;->b:[I

    aget v11, v11, v8

    check-cast v10, [Lal;

    aget-object v10, v10, v11

    iget-object v11, v7, Lah;->d:[F

    aget v11, v11, v8

    mul-float v11, v11, v5

    invoke-virtual {v0, v10, v11}, Lah;->e(Lal;F)V

    iget-object v10, v7, Lah;->c:[I

    aget v8, v10, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    iget v7, p1, Lai;->b:F

    iget v8, v6, Lai;->b:F

    mul-float v8, v8, v5

    add-float/2addr v7, v8

    iput v7, p1, Lai;->b:F

    iget-object v5, v6, Lai;->a:Lal;

    invoke-virtual {v5, p1}, Lal;->a(Lai;)V

    iget v5, v0, Lah;->e:I

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    iget-object v7, v0, Lah;->c:[I

    aget v5, v7, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lai;->d:Lah;

    iget v0, v0, Lah;->a:I

    if-nez v0, :cond_5

    iput-boolean v1, p1, Lai;->e:Z

    :cond_5
    iget v0, p1, Lai;->b:F

    const/4 v4, 0x0

    cmpg-float v5, v0, v4

    if-gez v5, :cond_6

    neg-float v0, v0

    iput v0, p1, Lai;->b:F

    iget-object v0, p1, Lai;->d:Lah;

    iget v5, v0, Lah;->e:I

    const/4 v6, 0x0

    :goto_2
    if-eq v5, v3, :cond_6

    iget v7, v0, Lah;->a:I

    if-ge v6, v7, :cond_6

    iget-object v7, v0, Lah;->d:[F

    aget v8, v7, v5

    neg-float v8, v8

    aput v8, v7, v5

    iget-object v7, v0, Lah;->c:[I

    aget v5, v7, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p1, Lai;->d:Lah;

    iget v5, v0, Lah;->e:I

    const/4 v6, 0x0

    move-object v7, v6

    const/4 v8, 0x0

    :goto_3
    if-eq v5, v3, :cond_e

    iget v9, v0, Lah;->a:I

    if-ge v8, v9, :cond_e

    iget-object v9, v0, Lah;->d:[F

    aget v10, v9, v5

    cmpg-float v11, v10, v4

    if-gez v11, :cond_8

    const v11, -0x457ced91    # -0.001f

    cmpl-float v11, v10, v11

    if-lez v11, :cond_7

    aput v4, v9, v5

    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    goto :goto_4

    :cond_8
    const v11, 0x3a83126f    # 0.001f

    cmpg-float v11, v10, v11

    if-gez v11, :cond_9

    aput v4, v9, v5

    const/4 v10, 0x0

    goto :goto_4

    :cond_9
    :goto_4
    cmpl-float v9, v10, v4

    if-eqz v9, :cond_d

    iget-object v9, v0, Lah;->h:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v9, v9, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iget-object v11, v0, Lah;->b:[I

    aget v11, v11, v5

    check-cast v9, [Lal;

    aget-object v9, v9, v11

    iget v11, v9, Lal;->h:I

    if-ne v11, v1, :cond_b

    cmpg-float v10, v10, v4

    if-gez v10, :cond_a

    move-object v6, v9

    goto :goto_6

    :cond_a
    if-nez v7, :cond_d

    move-object v7, v9

    goto :goto_5

    :cond_b
    cmpg-float v10, v10, v4

    if-gez v10, :cond_d

    if-eqz v6, :cond_c

    iget v10, v9, Lal;->c:I

    iget v11, v6, Lal;->c:I

    if-ge v10, v11, :cond_d

    :cond_c
    move-object v6, v9

    :cond_d
    :goto_5
    iget-object v9, v0, Lah;->c:[I

    aget v5, v9, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_e
    if-nez v7, :cond_f

    goto :goto_6

    :cond_f
    move-object v6, v7

    :goto_6
    if-eqz v6, :cond_10

    invoke-virtual {p1, v6}, Lai;->a(Lal;)V

    :cond_10
    iget-object v0, p1, Lai;->d:Lah;

    iget v0, v0, Lah;->a:I

    if-nez v0, :cond_11

    iput-boolean v1, p1, Lai;->e:Z

    :cond_11
    iget-object v0, p1, Lai;->a:Lal;

    if-eqz v0, :cond_13

    iget v0, v0, Lal;->h:I

    if-eq v0, v1, :cond_12

    iget v0, p1, Lai;->b:F

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_13

    :cond_12
    goto :goto_7

    :cond_13
    return-void

    :cond_14
    :goto_7
    iget-object v0, p0, Lak;->c:[Lai;

    iget v3, p0, Lak;->f:I

    aget-object v0, v0, v3

    if-eqz v0, :cond_15

    iget-object v3, p0, Lak;->g:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v3, v3, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v3, Lend;

    invoke-virtual {v3, v0}, Lend;->k(Ljava/lang/Object;)V

    :cond_15
    iget-boolean v0, p1, Lai;->e:Z

    if-nez v0, :cond_16

    invoke-virtual {p1}, Lai;->b()V

    :cond_16
    iget-object v0, p0, Lak;->c:[Lai;

    iget v3, p0, Lak;->f:I

    aput-object p1, v0, v3

    iget-object v0, p1, Lai;->a:Lal;

    iput v3, v0, Lal;->b:I

    add-int/2addr v3, v1

    iput v3, p0, Lak;->f:I

    iget v0, v0, Lal;->g:I

    if-lez v0, :cond_1a

    :goto_8
    iget-object v1, p0, Lak;->n:[Lai;

    array-length v3, v1

    if-ge v3, v0, :cond_17

    add-int/2addr v3, v3

    new-array v1, v3, [Lai;

    iput-object v1, p0, Lak;->n:[Lai;

    goto :goto_8

    :cond_17
    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_18

    iget-object v4, p1, Lai;->a:Lal;

    iget-object v4, v4, Lal;->f:[Lai;

    aget-object v4, v4, v3

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_18
    :goto_a
    if-ge v2, v0, :cond_1a

    aget-object v3, v1, v2

    if-eq v3, p1, :cond_19

    iget-object v4, v3, Lai;->d:Lah;

    invoke-virtual {v4, v3, p1}, Lah;->g(Lai;Lai;)V

    invoke-virtual {v3}, Lai;->b()V

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final h(Lal;I)V
    .locals 2

    iget v0, p1, Lal;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lak;->c:[Lai;

    aget-object v0, v1, v0

    iget-boolean v1, v0, Lai;->e:Z

    if-eqz v1, :cond_0

    int-to-float p1, p2

    iput p1, v0, Lai;->b:F

    return-void

    :cond_0
    invoke-virtual {p0}, Lak;->a()Lai;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lai;->g(Lal;I)V

    invoke-virtual {p0, v0}, Lak;->g(Lai;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lak;->a()Lai;

    move-result-object v0

    iput-object p1, v0, Lai;->a:Lal;

    int-to-float p2, p2

    iput p2, p1, Lal;->d:F

    iput p2, v0, Lai;->b:F

    const/4 p1, 0x1

    iput-boolean p1, v0, Lai;->e:Z

    invoke-virtual {p0, v0}, Lak;->g(Lai;)V

    return-void
.end method

.method public final i(Lal;Lal;II)V
    .locals 2

    invoke-virtual {p0}, Lak;->a()Lai;

    move-result-object v0

    invoke-virtual {p0}, Lak;->f()Lal;

    move-result-object v1

    iput p4, v1, Lal;->c:I

    invoke-virtual {v0, p1, p2, v1, p3}, Lai;->i(Lal;Lal;Lal;I)V

    invoke-virtual {p0, v0}, Lak;->g(Lai;)V

    return-void
.end method

.method public final j(Lal;Lal;II)V
    .locals 2

    invoke-virtual {p0}, Lak;->a()Lai;

    move-result-object v0

    invoke-virtual {p0}, Lak;->f()Lal;

    move-result-object v1

    iput p4, v1, Lal;->c:I

    invoke-virtual {v0, p1, p2, v1, p3}, Lai;->j(Lal;Lal;Lal;I)V

    invoke-virtual {p0, v0}, Lak;->g(Lai;)V

    return-void
.end method

.method public final k(Lai;I)V
    .locals 1

    invoke-virtual {p0}, Lak;->d()Lal;

    move-result-object v0

    int-to-float p2, p2

    iget-object p1, p1, Lai;->d:Lah;

    invoke-virtual {p1, v0, p2}, Lah;->f(Lal;F)V

    return-void
.end method

.method public final l()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lak;->g:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v3, v2, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    check-cast v3, [Lal;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lal;->b()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v2, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    iget-object v2, p0, Lak;->l:[Lal;

    iget v3, p0, Lak;->m:I

    array-length v4, v2

    if-le v3, v4, :cond_2

    move v3, v4

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    move-object v6, v1

    check-cast v6, Lend;

    iget v7, v6, Lend;->a:I

    const/16 v8, 0x100

    if-ge v7, v8, :cond_3

    iget-object v8, v6, Lend;->b:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    aput-object v5, v8, v7

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lend;->a:I

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iput v0, p0, Lak;->m:I

    iget-object v1, p0, Lak;->g:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v1, v1, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput v0, p0, Lak;->a:I

    iget-object v1, p0, Lak;->b:Laj;

    iget-object v1, v1, Laj;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x1

    iput v1, p0, Lak;->e:I

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lak;->f:I

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lak;->c:[Lai;

    aget-object v2, v2, v1

    iput-boolean v0, v2, Lai;->c:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lak;->r()V

    iput v0, p0, Lak;->f:I

    return-void
.end method

.method public final m(Lal;Lal;IFLal;Lal;I)V
    .locals 9

    invoke-virtual {p0}, Lak;->a()Lai;

    move-result-object v8

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lai;->d(Lal;Lal;IFLal;Lal;I)V

    invoke-virtual {p0}, Lak;->d()Lal;

    move-result-object v0

    invoke-virtual {p0}, Lak;->d()Lal;

    move-result-object v1

    const/4 v2, 0x4

    iput v2, v0, Lal;->c:I

    iput v2, v1, Lal;->c:I

    invoke-virtual {v8, v0, v1}, Lai;->c(Lal;Lal;)V

    move-object v0, p0

    invoke-virtual {p0, v8}, Lak;->g(Lai;)V

    return-void
.end method

.method public final n(Lal;Lal;II)V
    .locals 1

    invoke-virtual {p0}, Lak;->a()Lai;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lai;->h(Lal;Lal;I)V

    invoke-virtual {p0}, Lak;->d()Lal;

    move-result-object p1

    invoke-virtual {p0}, Lak;->d()Lal;

    move-result-object p2

    iput p4, p1, Lal;->c:I

    iput p4, p2, Lal;->c:I

    invoke-virtual {v0, p1, p2}, Lai;->c(Lal;Lal;)V

    invoke-virtual {p0, v0}, Lak;->g(Lai;)V

    return-void
.end method

.method public final o(Laj;)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lak;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_c

    iget-object v3, v0, Lak;->c:[Lai;

    aget-object v3, v3, v2

    iget-object v6, v3, Lai;->a:Lal;

    iget v6, v6, Lal;->h:I

    if-ne v6, v5, :cond_0

    move-object/from16 v1, p1

    goto/16 :goto_7

    :cond_0
    iget v3, v3, Lai;->b:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_b

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v10, 0x0

    :goto_1
    iget v11, v0, Lak;->f:I

    if-ge v6, v11, :cond_8

    iget-object v11, v0, Lak;->c:[Lai;

    aget-object v11, v11, v6

    iget-object v12, v11, Lai;->a:Lal;

    iget v12, v12, Lal;->h:I

    if-ne v12, v5, :cond_1

    goto :goto_5

    :cond_1
    iget v12, v11, Lai;->b:F

    cmpg-float v12, v12, v4

    if-gez v12, :cond_7

    const/4 v12, 0x1

    :goto_2
    iget v13, v0, Lak;->e:I

    if-ge v12, v13, :cond_7

    iget-object v13, v0, Lak;->g:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v13, v13, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    check-cast v13, [Lal;

    aget-object v13, v13, v12

    iget-object v14, v11, Lai;->d:Lah;

    invoke-virtual {v14, v13}, Lah;->a(Lal;)F

    move-result v14

    cmpg-float v15, v14, v4

    if-gtz v15, :cond_3

    :cond_2
    goto :goto_4

    :cond_3
    const/4 v15, 0x0

    :goto_3
    const/4 v1, 0x6

    if-ge v15, v1, :cond_2

    iget-object v1, v13, Lal;->e:[F

    aget v1, v1, v15

    div-float/2addr v1, v14

    cmpg-float v16, v1, v9

    if-gez v16, :cond_4

    if-eq v15, v10, :cond_5

    :cond_4
    if-le v15, v10, :cond_6

    :cond_5
    move v9, v1

    move v7, v6

    move v8, v12

    move v10, v15

    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_7
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    if-eq v7, v3, :cond_a

    iget-object v1, v0, Lak;->c:[Lai;

    aget-object v1, v1, v7

    iget-object v6, v1, Lai;->a:Lal;

    iput v3, v6, Lal;->b:I

    iget-object v6, v0, Lak;->g:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v6, v6, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    check-cast v6, [Lal;

    aget-object v6, v6, v8

    invoke-virtual {v1, v6}, Lai;->a(Lal;)V

    iget-object v6, v1, Lai;->a:Lal;

    iput v7, v6, Lal;->b:I

    const/4 v6, 0x0

    :goto_6
    iget v7, v0, Lak;->f:I

    if-ge v6, v7, :cond_9

    iget-object v7, v0, Lak;->c:[Lai;

    aget-object v7, v7, v6

    invoke-virtual {v7, v1}, Lai;->k(Lai;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Laj;->a(Lak;)V

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v10, 0x0

    goto :goto_1

    :cond_a
    const/4 v1, 0x0

    goto :goto_8

    :cond_b
    move-object/from16 v1, p1

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x0

    :goto_8
    iget v2, v0, Lak;->f:I

    if-ge v1, v2, :cond_f

    iget-object v2, v0, Lak;->c:[Lai;

    aget-object v2, v2, v1

    iget-object v3, v2, Lai;->a:Lal;

    iget v3, v3, Lal;->h:I

    if-ne v3, v5, :cond_d

    goto :goto_9

    :cond_d
    iget v2, v2, Lai;->b:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_e

    goto :goto_a

    :cond_e
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    :goto_a
    return-void
.end method
