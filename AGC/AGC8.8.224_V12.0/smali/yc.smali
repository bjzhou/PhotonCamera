.class public final Lyc;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Lyd;

.field public static c:J

.field private static l:I


# instance fields
.field public d:Z

.field public e:I

.field f:[Lyb;

.field public g:Z

.field public h:Z

.field i:I

.field public j:I

.field public final k:Landroidx/wear/ambient/AmbientDelegate;

.field private m:I

.field private n:I

.field private o:[Z

.field private p:I

.field private q:[Lyh;

.field private r:I

.field private final s:Lyb;

.field private t:Lyb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lyc;->a:Z

    const/16 v0, 0x3e8

    sput v0, Lyc;->l:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lyc;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyc;->d:Z

    iput v0, p0, Lyc;->e:I

    const/16 v1, 0x20

    iput v1, p0, Lyc;->m:I

    iput v1, p0, Lyc;->n:I

    const/4 v2, 0x0

    iput-object v2, p0, Lyc;->f:[Lyb;

    iput-boolean v0, p0, Lyc;->g:Z

    iput-boolean v0, p0, Lyc;->h:Z

    new-array v3, v1, [Z

    iput-object v3, p0, Lyc;->o:[Z

    const/4 v3, 0x1

    iput v3, p0, Lyc;->i:I

    iput v0, p0, Lyc;->j:I

    iput v1, p0, Lyc;->p:I

    sget v3, Lyc;->l:I

    new-array v3, v3, [Lyh;

    iput-object v3, p0, Lyc;->q:[Lyh;

    iput v0, p0, Lyc;->r:I

    new-array v0, v1, [Lyb;

    iput-object v0, p0, Lyc;->f:[Lyb;

    invoke-direct {p0}, Lyc;->t()V

    new-instance v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-direct {v0}, Landroidx/wear/ambient/AmbientDelegate;-><init>()V

    iput-object v0, p0, Lyc;->k:Landroidx/wear/ambient/AmbientDelegate;

    new-instance v1, Lyg;

    invoke-direct {v1, v0, v2, v2}, Lyg;-><init>(Landroidx/wear/ambient/AmbientDelegate;[B[B)V

    iput-object v1, p0, Lyc;->s:Lyb;

    new-instance v1, Lyb;

    invoke-direct {v1, v0, v2, v2}, Lyb;-><init>(Landroidx/wear/ambient/AmbientDelegate;[B[B)V

    iput-object v1, p0, Lyc;->t:Lyb;

    return-void
.end method

.method public static final o(Ljava/lang/Object;)I
    .locals 1

    check-cast p0, Lym;

    iget-object p0, p0, Lym;->i:Lyh;

    if-eqz p0, :cond_0

    iget p0, p0, Lyh;->f:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final q(Lyb;)V
    .locals 7

    iget-boolean v0, p1, Lyb;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lyb;->a:Lyh;

    iget p1, p1, Lyb;->b:F

    invoke-virtual {v0, p0, p1}, Lyh;->d(Lyc;F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lyc;->f:[Lyb;

    iget v1, p0, Lyc;->j:I

    aput-object p1, v0, v1

    iget-object v0, p1, Lyb;->a:Lyh;

    iput v1, v0, Lyh;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lyc;->j:I

    invoke-virtual {v0, p0, p1}, Lyh;->e(Lyc;Lyb;)V

    :goto_0
    iget-boolean p1, p0, Lyc;->d:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lyc;->j:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lyc;->f:[Lyb;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WTF"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lyc;->f:[Lyb;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    iget-boolean v2, v1, Lyb;->d:Z

    if-eqz v2, :cond_5

    iget-object v2, v1, Lyb;->a:Lyh;

    iget v3, v1, Lyb;->b:F

    invoke-virtual {v2, p0, v3}, Lyh;->d(Lyc;F)V

    iget-object v2, p0, Lyc;->k:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v2, v2, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v2, Lmrj;

    invoke-virtual {v2, v1}, Lmrj;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lyc;->f:[Lyb;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    :goto_2
    iget v4, p0, Lyc;->j:I

    if-ge v1, v4, :cond_3

    iget-object v3, p0, Lyc;->f:[Lyb;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v3, v1

    aput-object v5, v3, v4

    iget-object v3, v5, Lyb;->a:Lyh;

    iget v5, v3, Lyh;->d:I

    if-ne v5, v1, :cond_2

    iput v4, v3, Lyh;->d:I

    :cond_2
    add-int/lit8 v3, v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_2

    :cond_3
    if-ge v3, v4, :cond_4

    iget-object v1, p0, Lyc;->f:[Lyb;

    aput-object v2, v1, v3

    :cond_4
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lyc;->j:I

    add-int/lit8 v0, v0, -0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iput-boolean p1, p0, Lyc;->d:Z

    :cond_7
    return-void
.end method

.method private final r()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lyc;->j:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lyc;->f:[Lyb;

    aget-object v1, v1, v0

    iget-object v2, v1, Lyb;->a:Lyh;

    iget v1, v1, Lyb;->b:F

    iput v1, v2, Lyh;->f:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final s()V
    .locals 6

    iget v0, p0, Lyc;->m:I

    add-int/2addr v0, v0

    iput v0, p0, Lyc;->m:I

    iget-object v1, p0, Lyc;->f:[Lyb;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyb;

    iput-object v0, p0, Lyc;->f:[Lyb;

    iget-object v0, p0, Lyc;->k:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v1, v0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iget v2, p0, Lyc;->m:I

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lyh;

    iput-object v1, v0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iget v0, p0, Lyc;->m:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lyc;->o:[Z

    iput v0, p0, Lyc;->n:I

    iput v0, p0, Lyc;->p:I

    sget-object v1, Lyc;->b:Lyd;

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lyd;->f:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lyd;->f:J

    int-to-long v2, v0

    iget-wide v4, v1, Lyd;->q:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lyd;->q:J

    sget-object v0, Lyc;->b:Lyd;

    iget-wide v1, v0, Lyd;->q:J

    iput-wide v1, v0, Lyd;->z:J

    :cond_0
    return-void
.end method

.method private final t()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lyc;->j:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lyc;->f:[Lyb;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lyc;->k:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v2, v2, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v2, Lmrj;

    invoke-virtual {v2, v1}, Lmrj;->d(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lyc;->f:[Lyb;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final u(Lyb;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lyc;->b:Lyd;

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    iget-wide v6, v2, Lyd;->j:J

    add-long/2addr v6, v3

    iput-wide v6, v2, Lyd;->j:J

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v6, v0, Lyc;->i:I

    if-ge v2, v6, :cond_1

    iget-object v6, v0, Lyc;->o:[Z

    aput-boolean v5, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_1
    if-nez v2, :cond_d

    sget-object v7, Lyc;->b:Lyd;

    if-eqz v7, :cond_2

    iget-wide v8, v7, Lyd;->k:J

    add-long/2addr v8, v3

    iput-wide v8, v7, Lyd;->k:J

    :cond_2
    const/4 v7, 0x1

    add-int/2addr v6, v7

    iget v8, v0, Lyc;->i:I

    add-int/2addr v8, v8

    if-ge v6, v8, :cond_d

    iget-object v8, v1, Lyb;->a:Lyh;

    if-eqz v8, :cond_3

    iget-object v9, v0, Lyc;->o:[Z

    iget v8, v8, Lyh;->c:I

    aput-boolean v7, v9, v8

    :cond_3
    iget-object v8, v0, Lyc;->o:[Z

    invoke-virtual {v1, v8}, Lyb;->k([Z)Lyh;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v9, v0, Lyc;->o:[Z

    iget v10, v8, Lyh;->c:I

    aget-boolean v11, v9, v10

    if-eqz v11, :cond_4

    return-void

    :cond_4
    aput-boolean v7, v9, v10

    :cond_5
    if-eqz v8, :cond_c

    const/4 v9, -0x1

    const v10, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v11, 0x0

    const/4 v12, -0x1

    :goto_2
    iget v13, v0, Lyc;->j:I

    if-ge v11, v13, :cond_9

    iget-object v13, v0, Lyc;->f:[Lyb;

    aget-object v13, v13, v11

    iget-object v14, v13, Lyb;->a:Lyh;

    iget v14, v14, Lyh;->n:I

    if-ne v14, v7, :cond_6

    goto :goto_4

    :cond_6
    iget-boolean v14, v13, Lyb;->d:Z

    if-nez v14, :cond_8

    iget-object v14, v13, Lyb;->e:Lya;

    iget v15, v14, Lya;->e:I

    if-eq v15, v9, :cond_8

    :goto_3
    if-eq v15, v9, :cond_8

    iget v7, v14, Lya;->a:I

    if-ge v5, v7, :cond_8

    iget-object v7, v14, Lya;->b:[I

    aget v7, v7, v15

    iget v3, v8, Lyh;->c:I

    if-ne v7, v3, :cond_7

    iget-object v3, v13, Lyb;->e:Lya;

    invoke-virtual {v3, v8}, Lya;->a(Lyh;)F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_8

    iget v4, v13, Lyb;->b:F

    neg-float v4, v4

    div-float/2addr v4, v3

    cmpg-float v3, v4, v10

    if-gez v3, :cond_8

    move v10, v4

    move v12, v11

    goto :goto_4

    :cond_7
    iget-object v3, v14, Lya;->c:[I

    aget v15, v3, v15

    add-int/lit8 v5, v5, 0x1

    const-wide/16 v3, 0x1

    const/4 v7, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    add-int/lit8 v11, v11, 0x1

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto :goto_2

    :cond_9
    if-ltz v12, :cond_b

    iget-object v3, v0, Lyc;->f:[Lyb;

    aget-object v3, v3, v12

    iget-object v4, v3, Lyb;->a:Lyh;

    iput v9, v4, Lyh;->d:I

    sget-object v4, Lyc;->b:Lyd;

    if-eqz v4, :cond_a

    iget-wide v9, v4, Lyd;->l:J

    const-wide/16 v13, 0x1

    add-long/2addr v9, v13

    iput-wide v9, v4, Lyd;->l:J

    goto :goto_5

    :cond_a
    const-wide/16 v13, 0x1

    :goto_5
    invoke-virtual {v3, v8}, Lyb;->b(Lyh;)V

    iget-object v4, v3, Lyb;->a:Lyh;

    iput v12, v4, Lyh;->d:I

    invoke-virtual {v4, v0, v3}, Lyh;->e(Lyc;Lyb;)V

    goto :goto_6

    :cond_b
    const-wide/16 v13, 0x1

    goto :goto_6

    :cond_c
    move-wide v13, v3

    const/4 v2, 0x1

    :goto_6
    move-wide v3, v13

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_d
    return-void
.end method

.method private final v(I)Lyh;
    .locals 3

    iget-object v0, p0, Lyc;->k:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Lmrj;

    invoke-virtual {v0}, Lmrj;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyh;

    if-nez v0, :cond_0

    new-instance v0, Lyh;

    invoke-direct {v0, p1}, Lyh;-><init>(I)V

    iput p1, v0, Lyh;->n:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lyh;->c()V

    iput p1, v0, Lyh;->n:I

    :goto_0
    iget p1, p0, Lyc;->r:I

    sget v1, Lyc;->l:I

    if-lt p1, v1, :cond_1

    add-int/2addr v1, v1

    sput v1, Lyc;->l:I

    iget-object p1, p0, Lyc;->q:[Lyh;

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lyh;

    iput-object p1, p0, Lyc;->q:[Lyh;

    :cond_1
    iget-object p1, p0, Lyc;->q:[Lyh;

    iget v1, p0, Lyc;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lyc;->r:I

    aput-object v0, p1, v1

    return-object v0
.end method


# virtual methods
.method public final a()Lyb;
    .locals 5

    iget-object v0, p0, Lyc;->k:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v0, Lmrj;

    invoke-virtual {v0}, Lmrj;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyb;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lyb;

    iget-object v2, p0, Lyc;->k:Landroidx/wear/ambient/AmbientDelegate;

    invoke-direct {v0, v2, v1, v1}, Lyb;-><init>(Landroidx/wear/ambient/AmbientDelegate;[B[B)V

    sget-wide v1, Lyc;->c:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lyc;->c:J

    goto :goto_0

    :cond_0
    iput-object v1, v0, Lyb;->a:Lyh;

    iget-object v1, v0, Lyb;->e:Lya;

    invoke-virtual {v1}, Lya;->f()V

    const/4 v1, 0x0

    iput v1, v0, Lyb;->b:F

    const/4 v1, 0x0

    iput-boolean v1, v0, Lyb;->d:Z

    :goto_0
    sget v1, Lyh;->a:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lyh;->a:I

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lyh;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v0, p0, Lyc;->i:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lyc;->n:I

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lyc;->s()V

    :cond_1
    check-cast p1, Lym;

    iget-object v0, p1, Lym;->i:Lyh;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lym;->i()V

    iget-object v0, p1, Lym;->i:Lyh;

    goto :goto_0

    :cond_2
    :goto_0
    iget p1, v0, Lyh;->c:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_4

    iget v3, p0, Lyc;->e:I

    if-gt p1, v3, :cond_3

    iget-object v3, p0, Lyc;->k:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v3, v3, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    check-cast v3, [Lyh;

    aget-object v3, v3, p1

    if-nez v3, :cond_5

    :cond_3
    if-eq p1, v2, :cond_4

    invoke-virtual {v0}, Lyh;->c()V

    :cond_4
    iget p1, p0, Lyc;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Lyc;->e:I

    iget v2, p0, Lyc;->i:I

    add-int/2addr v2, v1

    iput v2, p0, Lyc;->i:I

    iput p1, v0, Lyh;->c:I

    iput v1, v0, Lyh;->n:I

    iget-object v1, p0, Lyc;->k:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v1, v1, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    check-cast v1, [Lyh;

    aput-object v0, v1, p1

    :cond_5
    return-object v0
.end method

.method public final c()Lyh;
    .locals 5

    sget-object v0, Lyc;->b:Lyd;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lyd;->o:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lyd;->o:J

    :cond_0
    iget v0, p0, Lyc;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lyc;->n:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lyc;->s()V

    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lyc;->v(I)Lyh;

    move-result-object v0

    iget v1, p0, Lyc;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lyc;->e:I

    iget v2, p0, Lyc;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lyc;->i:I

    iput v1, v0, Lyh;->c:I

    iget-object v2, p0, Lyc;->k:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v2, v2, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    check-cast v2, [Lyh;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public final d(Lyh;Lyh;IFLyh;Lyh;II)V
    .locals 4

    invoke-virtual {p0}, Lyc;->a()Lyb;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_0

    iget-object p3, v0, Lyb;->e:Lya;

    invoke-virtual {p3, p1, v1}, Lya;->g(Lyh;F)V

    iget-object p1, v0, Lyb;->e:Lya;

    invoke-virtual {p1, p6, v1}, Lya;->g(Lyh;F)V

    iget-object p1, v0, Lyb;->e:Lya;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-virtual {p1, p2, p3}, Lya;->g(Lyh;F)V

    goto/16 :goto_0

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, p4, v2

    if-nez v2, :cond_2

    iget-object p4, v0, Lyb;->e:Lya;

    invoke-virtual {p4, p1, v1}, Lya;->g(Lyh;F)V

    iget-object p1, v0, Lyb;->e:Lya;

    invoke-virtual {p1, p2, v3}, Lya;->g(Lyh;F)V

    iget-object p1, v0, Lyb;->e:Lya;

    invoke-virtual {p1, p5, v3}, Lya;->g(Lyh;F)V

    iget-object p1, v0, Lyb;->e:Lya;

    invoke-virtual {p1, p6, v1}, Lya;->g(Lyh;F)V

    if-gtz p3, :cond_1

    if-lez p7, :cond_6

    :cond_1
    neg-int p1, p3

    add-int/2addr p1, p7

    int-to-float p1, p1

    iput p1, v0, Lyb;->b:F

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_3

    iget-object p4, v0, Lyb;->e:Lya;

    invoke-virtual {p4, p1, v3}, Lya;->g(Lyh;F)V

    iget-object p1, v0, Lyb;->e:Lya;

    invoke-virtual {p1, p2, v1}, Lya;->g(Lyh;F)V

    int-to-float p1, p3

    iput p1, v0, Lyb;->b:F

    goto :goto_0

    :cond_3
    cmpl-float v2, p4, v1

    if-ltz v2, :cond_4

    iget-object p1, v0, Lyb;->e:Lya;

    invoke-virtual {p1, p6, v3}, Lya;->g(Lyh;F)V

    iget-object p1, v0, Lyb;->e:Lya;

    invoke-virtual {p1, p5, v1}, Lya;->g(Lyh;F)V

    neg-int p1, p7

    int-to-float p1, p1

    iput p1, v0, Lyb;->b:F

    goto :goto_0

    :cond_4
    iget-object v2, v0, Lyb;->e:Lya;

    sub-float/2addr v1, p4

    invoke-virtual {v2, p1, v1}, Lya;->g(Lyh;F)V

    iget-object p1, v0, Lyb;->e:Lya;

    neg-float v2, v1

    invoke-virtual {p1, p2, v2}, Lya;->g(Lyh;F)V

    iget-object p1, v0, Lyb;->e:Lya;

    neg-float p2, p4

    invoke-virtual {p1, p5, p2}, Lya;->g(Lyh;F)V

    iget-object p1, v0, Lyb;->e:Lya;

    invoke-virtual {p1, p6, p4}, Lya;->g(Lyh;F)V

    if-gtz p3, :cond_5

    if-lez p7, :cond_6

    :cond_5
    neg-int p1, p3

    int-to-float p2, p7

    mul-float p2, p2, p4

    int-to-float p1, p1

    mul-float p1, p1, v1

    add-float/2addr p1, p2

    iput p1, v0, Lyb;->b:F

    :cond_6
    :goto_0
    const/16 p1, 0x8

    if-eq p8, p1, :cond_7

    invoke-virtual {v0, p0, p8}, Lyb;->f(Lyc;I)V

    :cond_7
    invoke-virtual {p0, v0}, Lyc;->e(Lyb;)V

    return-void
.end method

.method public final e(Lyb;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lyc;->b:Lyd;

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_0

    iget-wide v5, v2, Lyd;->h:J

    add-long/2addr v5, v3

    iput-wide v5, v2, Lyd;->h:J

    iget-boolean v5, v1, Lyb;->d:Z

    if-eqz v5, :cond_0

    iget-wide v5, v2, Lyd;->i:J

    add-long/2addr v5, v3

    iput-wide v5, v2, Lyd;->i:J

    :cond_0
    iget v2, v0, Lyc;->j:I

    const/4 v5, 0x1

    add-int/2addr v2, v5

    iget v6, v0, Lyc;->p:I

    if-ge v2, v6, :cond_1

    iget v2, v0, Lyc;->i:I

    add-int/2addr v2, v5

    iget v6, v0, Lyc;->n:I

    if-lt v2, v6, :cond_2

    :cond_1
    invoke-direct/range {p0 .. p0}, Lyc;->s()V

    :cond_2
    iget-boolean v2, v1, Lyb;->d:Z

    if-nez v2, :cond_21

    iget-object v2, v0, Lyc;->f:[Lyb;

    array-length v2, v2

    const/4 v6, -0x1

    if-nez v2, :cond_3

    goto :goto_5

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_9

    iget-object v8, v1, Lyb;->e:Lya;

    iget v8, v8, Lya;->a:I

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_5

    iget-object v10, v1, Lyb;->e:Lya;

    invoke-virtual {v10, v9}, Lya;->d(I)Lyh;

    move-result-object v10

    iget v11, v10, Lyh;->d:I

    if-ne v11, v6, :cond_4

    iget-boolean v11, v10, Lyh;->g:Z

    if-nez v11, :cond_4

    iget-boolean v10, v10, Lyh;->m:Z

    goto :goto_2

    :cond_4
    iget-object v11, v1, Lyb;->c:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    iget-object v8, v1, Lyb;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_8

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_7

    iget-object v10, v1, Lyb;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyh;

    iget-boolean v11, v10, Lyh;->g:Z

    if-eqz v11, :cond_6

    invoke-virtual {v1, v0, v10, v5}, Lyb;->c(Lyc;Lyh;Z)V

    goto :goto_4

    :cond_6
    iget-boolean v11, v10, Lyh;->m:Z

    iget-object v11, v0, Lyc;->f:[Lyb;

    iget v10, v10, Lyh;->d:I

    aget-object v10, v11, v10

    invoke-virtual {v1, v0, v10, v5}, Lyb;->d(Lyc;Lyb;Z)V

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    iget-object v8, v1, Lyb;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_8
    const/4 v2, 0x1

    goto :goto_0

    :cond_9
    iget-object v2, v1, Lyb;->a:Lyh;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lyb;->e:Lya;

    iget v2, v2, Lya;->a:I

    if-nez v2, :cond_a

    iput-boolean v5, v1, Lyb;->d:Z

    iput-boolean v5, v0, Lyc;->d:Z

    :cond_a
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lyb;->e()Z

    move-result v2

    if-nez v2, :cond_20

    iget v2, v1, Lyb;->b:F

    const/4 v8, 0x0

    cmpg-float v9, v2, v8

    if-gez v9, :cond_b

    neg-float v2, v2

    iput v2, v1, Lyb;->b:F

    iget-object v2, v1, Lyb;->e:Lya;

    iget v9, v2, Lya;->e:I

    const/4 v10, 0x0

    :goto_6
    if-eq v9, v6, :cond_b

    iget v11, v2, Lya;->a:I

    if-ge v10, v11, :cond_b

    iget-object v11, v2, Lya;->d:[F

    aget v12, v11, v9

    neg-float v12, v12

    aput v12, v11, v9

    iget-object v11, v2, Lya;->c:[I

    aget v9, v11, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_b
    iget-object v2, v1, Lyb;->e:Lya;

    iget v2, v2, Lya;->a:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_7
    if-ge v10, v2, :cond_12

    iget-object v7, v1, Lyb;->e:Lya;

    invoke-virtual {v7, v10}, Lya;->b(I)F

    move-result v7

    iget-object v6, v1, Lyb;->e:Lya;

    invoke-virtual {v6, v10}, Lya;->d(I)Lyh;

    move-result-object v6

    iget v9, v6, Lyh;->n:I

    if-ne v9, v5, :cond_e

    if-nez v11, :cond_c

    invoke-static {v6}, Lyb;->l(Lyh;)Z

    move-result v14

    move-object v11, v6

    move v13, v7

    goto :goto_8

    :cond_c
    cmpl-float v9, v13, v7

    if-lez v9, :cond_d

    invoke-static {v6}, Lyb;->l(Lyh;)Z

    move-result v14

    move-object v11, v6

    move v13, v7

    goto :goto_8

    :cond_d
    if-nez v14, :cond_11

    invoke-static {v6}, Lyb;->l(Lyh;)Z

    move-result v9

    if-eqz v9, :cond_11

    move-object v11, v6

    move v13, v7

    const/4 v14, 0x1

    goto :goto_8

    :cond_e
    if-nez v11, :cond_11

    cmpg-float v9, v7, v8

    if-gez v9, :cond_11

    if-nez v12, :cond_f

    invoke-static {v6}, Lyb;->l(Lyh;)Z

    move-result v16

    move-object v12, v6

    move v15, v7

    goto :goto_8

    :cond_f
    cmpl-float v9, v15, v7

    if-lez v9, :cond_10

    invoke-static {v6}, Lyb;->l(Lyh;)Z

    move-result v16

    move-object v12, v6

    move v15, v7

    goto :goto_8

    :cond_10
    if-nez v16, :cond_11

    invoke-static {v6}, Lyb;->l(Lyh;)Z

    move-result v9

    if-eqz v9, :cond_11

    move-object v12, v6

    move v15, v7

    const/16 v16, 0x1

    :cond_11
    :goto_8
    add-int/lit8 v10, v10, 0x1

    const/4 v6, -0x1

    goto :goto_7

    :cond_12
    if-nez v11, :cond_13

    move-object v11, v12

    :cond_13
    if-nez v11, :cond_14

    const/4 v2, 0x1

    goto :goto_9

    :cond_14
    invoke-virtual {v1, v11}, Lyb;->b(Lyh;)V

    const/4 v2, 0x0

    :goto_9
    iget-object v6, v1, Lyb;->e:Lya;

    iget v6, v6, Lya;->a:I

    if-nez v6, :cond_15

    iput-boolean v5, v1, Lyb;->d:Z

    :cond_15
    if-eqz v2, :cond_1d

    sget-object v2, Lyc;->b:Lyd;

    if-eqz v2, :cond_16

    iget-wide v6, v2, Lyd;->p:J

    add-long/2addr v6, v3

    iput-wide v6, v2, Lyd;->p:J

    :cond_16
    iget v2, v0, Lyc;->i:I

    add-int/2addr v2, v5

    iget v6, v0, Lyc;->n:I

    if-lt v2, v6, :cond_17

    invoke-direct/range {p0 .. p0}, Lyc;->s()V

    :cond_17
    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lyc;->v(I)Lyh;

    move-result-object v2

    iget v6, v0, Lyc;->e:I

    add-int/2addr v6, v5

    iput v6, v0, Lyc;->e:I

    iget v7, v0, Lyc;->i:I

    add-int/2addr v7, v5

    iput v7, v0, Lyc;->i:I

    iput v6, v2, Lyh;->c:I

    iget-object v7, v0, Lyc;->k:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v7, v7, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    check-cast v7, [Lyh;

    aput-object v2, v7, v6

    iput-object v2, v1, Lyb;->a:Lyh;

    iget v6, v0, Lyc;->j:I

    invoke-direct/range {p0 .. p1}, Lyc;->q(Lyb;)V

    iget v7, v0, Lyc;->j:I

    add-int/2addr v6, v5

    if-ne v7, v6, :cond_1d

    iget-object v6, v0, Lyc;->t:Lyb;

    const/4 v7, 0x0

    iput-object v7, v6, Lyb;->a:Lyh;

    iget-object v7, v6, Lyb;->e:Lya;

    invoke-virtual {v7}, Lya;->f()V

    const/4 v7, 0x0

    :goto_a
    iget-object v9, v1, Lyb;->e:Lya;

    iget v10, v9, Lya;->a:I

    if-ge v7, v10, :cond_18

    invoke-virtual {v9, v7}, Lya;->d(I)Lyh;

    move-result-object v9

    iget-object v10, v1, Lyb;->e:Lya;

    invoke-virtual {v10, v7}, Lya;->b(I)F

    move-result v10

    iget-object v11, v6, Lyb;->e:Lya;

    invoke-virtual {v11, v9, v10, v5}, Lya;->e(Lyh;FZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_18
    iget-object v6, v0, Lyc;->t:Lyb;

    invoke-direct {v0, v6}, Lyc;->u(Lyb;)V

    iget v6, v2, Lyh;->d:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1c

    iget-object v6, v1, Lyb;->a:Lyh;

    if-ne v6, v2, :cond_1a

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v2}, Lyb;->a([ZLyh;)Lyh;

    move-result-object v2

    if-eqz v2, :cond_1a

    sget-object v6, Lyc;->b:Lyd;

    if-eqz v6, :cond_19

    iget-wide v9, v6, Lyd;->l:J

    add-long/2addr v9, v3

    iput-wide v9, v6, Lyd;->l:J

    :cond_19
    invoke-virtual {v1, v2}, Lyb;->b(Lyh;)V

    :cond_1a
    iget-boolean v2, v1, Lyb;->d:Z

    if-nez v2, :cond_1b

    iget-object v2, v1, Lyb;->a:Lyh;

    invoke-virtual {v2, v0, v1}, Lyh;->e(Lyc;Lyb;)V

    :cond_1b
    iget-object v2, v0, Lyc;->k:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v2, v2, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v2, Lmrj;

    invoke-virtual {v2, v1}, Lmrj;->d(Ljava/lang/Object;)V

    iget v2, v0, Lyc;->j:I

    const/4 v3, -0x1

    add-int/2addr v2, v3

    iput v2, v0, Lyc;->j:I

    const/4 v7, 0x1

    goto :goto_b

    :cond_1c
    const/4 v7, 0x1

    goto :goto_b

    :cond_1d
    const/4 v7, 0x0

    :goto_b
    iget-object v2, v1, Lyb;->a:Lyh;

    if-eqz v2, :cond_1f

    iget v2, v2, Lyh;->n:I

    if-eq v2, v5, :cond_1e

    iget v2, v1, Lyb;->b:F

    cmpg-float v2, v2, v8

    if-ltz v2, :cond_1f

    :cond_1e
    if-nez v7, :cond_1f

    goto :goto_c

    :cond_1f
    return-void

    :cond_20
    return-void

    :cond_21
    :goto_c
    invoke-direct/range {p0 .. p1}, Lyc;->q(Lyb;)V

    return-void
.end method

.method public final f(Lyh;I)V
    .locals 5

    sget-object v0, Lyc;->b:Lyd;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lyd;->J:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lyd;->J:J

    :cond_0
    iget v0, p1, Lyh;->d:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    int-to-float p2, p2

    invoke-virtual {p1, p0, p2}, Lyh;->d(Lyc;F)V

    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Lyc;->e:I

    add-int/2addr p2, v2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lyc;->k:Landroidx/wear/ambient/AmbientDelegate;

    iget-object p2, p2, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    check-cast p2, [Lyh;

    aget-object p2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    if-eq v0, v1, :cond_6

    iget-object v1, p0, Lyc;->f:[Lyb;

    aget-object v0, v1, v0

    iget-boolean v1, v0, Lyb;->d:Z

    if-eqz v1, :cond_3

    int-to-float p1, p2

    iput p1, v0, Lyb;->b:F

    return-void

    :cond_3
    iget-object v1, v0, Lyb;->e:Lya;

    iget v1, v1, Lya;->a:I

    if-nez v1, :cond_4

    iput-boolean v2, v0, Lyb;->d:Z

    int-to-float p1, p2

    iput p1, v0, Lyb;->b:F

    return-void

    :cond_4
    invoke-virtual {p0}, Lyc;->a()Lyb;

    move-result-object v0

    if-gez p2, :cond_5

    neg-int p2, p2

    int-to-float p2, p2

    iput p2, v0, Lyb;->b:F

    iget-object p2, v0, Lyb;->e:Lya;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v1}, Lya;->g(Lyh;F)V

    goto :goto_1

    :cond_5
    int-to-float p2, p2

    iput p2, v0, Lyb;->b:F

    iget-object p2, v0, Lyb;->e:Lya;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p2, p1, v1}, Lya;->g(Lyh;F)V

    :goto_1
    invoke-virtual {p0, v0}, Lyc;->e(Lyb;)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lyc;->a()Lyb;

    move-result-object v0

    iput-object p1, v0, Lyb;->a:Lyh;

    int-to-float p2, p2

    iput p2, p1, Lyh;->f:F

    iput p2, v0, Lyb;->b:F

    iput-boolean v2, v0, Lyb;->d:Z

    invoke-virtual {p0, v0}, Lyc;->e(Lyb;)V

    return-void
.end method

.method public final g(Lyh;Lyh;II)V
    .locals 3

    invoke-virtual {p0}, Lyc;->a()Lyb;

    move-result-object v0

    invoke-virtual {p0}, Lyc;->c()Lyh;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lyh;->e:I

    invoke-virtual {v0, p1, p2, v1, p3}, Lyb;->h(Lyh;Lyh;Lyh;I)V

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Lyb;->e:Lya;

    invoke-virtual {p1, v1}, Lya;->a(Lyh;)F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1, p4}, Lyc;->i(Lyb;II)V

    :cond_0
    invoke-virtual {p0, v0}, Lyc;->e(Lyb;)V

    return-void
.end method

.method public final h(Lyh;Lyh;II)V
    .locals 3

    invoke-virtual {p0}, Lyc;->a()Lyb;

    move-result-object v0

    invoke-virtual {p0}, Lyc;->c()Lyh;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lyh;->e:I

    invoke-virtual {v0, p1, p2, v1, p3}, Lyb;->i(Lyh;Lyh;Lyh;I)V

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Lyb;->e:Lya;

    invoke-virtual {p1, v1}, Lya;->a(Lyh;)F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1, p4}, Lyc;->i(Lyb;II)V

    :cond_0
    invoke-virtual {p0, v0}, Lyc;->e(Lyb;)V

    return-void
.end method

.method final i(Lyb;II)V
    .locals 0

    invoke-virtual {p0, p3}, Lyc;->p(I)Lyh;

    move-result-object p3

    int-to-float p2, p2

    iget-object p1, p1, Lyb;->e:Lya;

    invoke-virtual {p1, p3, p2}, Lya;->g(Lyh;F)V

    return-void
.end method

.method public final j()V
    .locals 6

    sget-object v0, Lyc;->b:Lyd;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v3, v0, Lyd;->g:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lyd;->g:J

    :cond_0
    iget-object v3, p0, Lyc;->s:Lyb;

    invoke-virtual {v3}, Lyb;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lyc;->r()V

    return-void

    :cond_1
    iget-boolean v4, p0, Lyc;->h:Z

    if-eqz v4, :cond_6

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-wide v4, v0, Lyd;->s:J

    add-long/2addr v4, v1

    iput-wide v4, v0, Lyd;->s:J

    goto :goto_0

    :cond_2
    :goto_0
    iget v0, p0, Lyc;->j:I

    if-ge v3, v0, :cond_4

    iget-object v0, p0, Lyc;->f:[Lyb;

    aget-object v0, v0, v3

    iget-boolean v0, v0, Lyb;->d:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lyc;->s:Lyb;

    invoke-virtual {p0, v0}, Lyc;->l(Lyb;)V

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    sget-object v0, Lyc;->b:Lyd;

    if-eqz v0, :cond_5

    iget-wide v3, v0, Lyd;->r:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lyd;->r:J

    :cond_5
    invoke-direct {p0}, Lyc;->r()V

    return-void

    :cond_6
    invoke-virtual {p0, v3}, Lyc;->l(Lyb;)V

    return-void
.end method

.method public final k()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lyc;->k:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v3, v2, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    check-cast v3, [Lyh;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lyh;->c()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v2, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    iget-object v2, p0, Lyc;->q:[Lyh;

    iget v3, p0, Lyc;->r:I

    array-length v4, v2

    if-le v3, v4, :cond_2

    move v3, v4

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    move-object v6, v1

    check-cast v6, Lmrj;

    iget v7, v6, Lmrj;->a:I

    const/16 v8, 0x100

    if-ge v7, v8, :cond_3

    iget-object v8, v6, Lmrj;->b:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    aput-object v5, v8, v7

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmrj;->a:I

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iput v0, p0, Lyc;->r:I

    iget-object v1, p0, Lyc;->k:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v1, v1, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput v0, p0, Lyc;->e:I

    iget-object v1, p0, Lyc;->s:Lyb;

    check-cast v1, Lyg;

    iput v0, v1, Lyg;->f:I

    const/4 v3, 0x0

    iput v3, v1, Lyg;->b:F

    const/4 v1, 0x1

    iput v1, p0, Lyc;->i:I

    const/4 v1, 0x0

    :goto_2
    iget v3, p0, Lyc;->j:I

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lyc;->f:[Lyb;

    aget-object v3, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lyc;->t()V

    iput v0, p0, Lyc;->j:I

    new-instance v0, Lyb;

    iget-object v1, p0, Lyc;->k:Landroidx/wear/ambient/AmbientDelegate;

    invoke-direct {v0, v1, v2, v2}, Lyb;-><init>(Landroidx/wear/ambient/AmbientDelegate;[B[B)V

    iput-object v0, p0, Lyc;->t:Lyb;

    return-void
.end method

.method final l(Lyb;)V
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lyc;->b:Lyd;

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    iget-wide v4, v1, Lyd;->v:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lyd;->v:J

    iget-wide v4, v1, Lyd;->w:J

    iget v6, v0, Lyc;->i:I

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lyd;->w:J

    sget-object v1, Lyc;->b:Lyd;

    iget-wide v4, v1, Lyd;->x:J

    iget v6, v0, Lyc;->j:I

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lyd;->x:J

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget v5, v0, Lyc;->j:I

    if-ge v4, v5, :cond_f

    iget-object v5, v0, Lyc;->f:[Lyb;

    aget-object v5, v5, v4

    iget-object v6, v5, Lyb;->a:Lyh;

    iget v6, v6, Lyh;->n:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move-wide v6, v2

    goto/16 :goto_a

    :cond_1
    iget v5, v5, Lyb;->b:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_e

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-nez v4, :cond_f

    sget-object v4, Lyc;->b:Lyd;

    if-eqz v4, :cond_2

    iget-wide v8, v4, Lyd;->m:J

    add-long/2addr v8, v2

    iput-wide v8, v4, Lyd;->m:J

    :cond_2
    add-int/2addr v5, v7

    const/4 v4, -0x1

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    :goto_2
    iget v13, v0, Lyc;->j:I

    if-ge v9, v13, :cond_a

    iget-object v13, v0, Lyc;->f:[Lyb;

    aget-object v13, v13, v9

    iget-object v14, v13, Lyb;->a:Lyh;

    iget v14, v14, Lyh;->n:I

    if-ne v14, v7, :cond_3

    goto :goto_6

    :cond_3
    iget-boolean v14, v13, Lyb;->d:Z

    if-nez v14, :cond_9

    iget v14, v13, Lyb;->b:F

    cmpg-float v14, v14, v6

    if-gez v14, :cond_9

    iget-object v14, v13, Lyb;->e:Lya;

    iget v14, v14, Lya;->a:I

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v14, :cond_9

    iget-object v1, v13, Lyb;->e:Lya;

    invoke-virtual {v1, v15}, Lya;->d(I)Lyh;

    move-result-object v1

    iget-object v7, v13, Lyb;->e:Lya;

    invoke-virtual {v7, v1}, Lya;->a(Lyh;)F

    move-result v7

    cmpg-float v16, v7, v6

    if-gtz v16, :cond_5

    :cond_4
    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_4
    const/16 v2, 0x9

    if-ge v6, v2, :cond_4

    iget-object v2, v1, Lyh;->h:[F

    aget v2, v2, v6

    div-float/2addr v2, v7

    cmpg-float v3, v2, v8

    if-gez v3, :cond_6

    if-eq v6, v12, :cond_7

    :cond_6
    if-le v6, v12, :cond_8

    :cond_7
    iget v11, v1, Lyh;->c:I

    move v8, v2

    move v12, v6

    move v10, v9

    :cond_8
    add-int/lit8 v6, v6, 0x1

    const-wide/16 v2, 0x1

    goto :goto_4

    :goto_5
    add-int/lit8 v15, v15, 0x1

    const-wide/16 v2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_3

    :cond_9
    :goto_6
    add-int/lit8 v9, v9, 0x1

    const-wide/16 v2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_2

    :cond_a
    if-eq v10, v4, :cond_c

    iget-object v1, v0, Lyc;->f:[Lyb;

    aget-object v1, v1, v10

    iget-object v2, v1, Lyb;->a:Lyh;

    iput v4, v2, Lyh;->d:I

    sget-object v2, Lyc;->b:Lyd;

    if-eqz v2, :cond_b

    iget-wide v3, v2, Lyd;->l:J

    const-wide/16 v6, 0x1

    add-long/2addr v3, v6

    iput-wide v3, v2, Lyd;->l:J

    goto :goto_7

    :cond_b
    const-wide/16 v6, 0x1

    :goto_7
    iget-object v2, v0, Lyc;->k:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v2, v2, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    check-cast v2, [Lyh;

    aget-object v2, v2, v11

    invoke-virtual {v1, v2}, Lyb;->b(Lyh;)V

    iget-object v2, v1, Lyb;->a:Lyh;

    iput v10, v2, Lyh;->d:I

    invoke-virtual {v2, v0, v1}, Lyh;->e(Lyc;Lyb;)V

    const/4 v1, 0x0

    goto :goto_8

    :cond_c
    const-wide/16 v6, 0x1

    const/4 v1, 0x1

    :goto_8
    iget v2, v0, Lyc;->i:I

    div-int/lit8 v2, v2, 0x2

    if-le v5, v2, :cond_d

    const/4 v2, 0x0

    goto :goto_9

    :cond_d
    const/4 v2, 0x1

    :goto_9
    const/4 v3, 0x1

    xor-int/2addr v2, v3

    or-int v4, v2, v1

    move-wide v2, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_e
    move-wide v6, v2

    :goto_a
    add-int/lit8 v4, v4, 0x1

    move-wide v2, v6

    goto/16 :goto_0

    :cond_f
    invoke-direct/range {p0 .. p1}, Lyc;->u(Lyb;)V

    invoke-direct/range {p0 .. p0}, Lyc;->r()V

    return-void
.end method

.method public final m(Lyh;Lyh;II)V
    .locals 5

    sget-object v0, Lyc;->b:Lyd;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lyd;->J:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lyd;->J:J

    :cond_0
    const/16 v0, 0x8

    if-ne p4, v0, :cond_3

    iget-boolean p4, p2, Lyh;->g:Z

    if-eqz p4, :cond_2

    iget p4, p1, Lyh;->d:I

    const/4 v1, -0x1

    if-eq p4, v1, :cond_1

    const/16 p4, 0x8

    goto :goto_0

    :cond_1
    iget p2, p2, Lyh;->f:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Lyh;->d(Lyc;F)V

    return-void

    :cond_2
    const/16 p4, 0x8

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lyc;->a()Lyb;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz p3, :cond_6

    if-gez p3, :cond_4

    neg-int p3, p3

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    int-to-float p3, p3

    iput p3, v1, Lyb;->b:F

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    iget-object p3, v1, Lyb;->e:Lya;

    invoke-virtual {p3, p1, v2}, Lya;->g(Lyh;F)V

    iget-object p1, v1, Lyb;->e:Lya;

    invoke-virtual {p1, p2, v3}, Lya;->g(Lyh;F)V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object p3, v1, Lyb;->e:Lya;

    invoke-virtual {p3, p1, v3}, Lya;->g(Lyh;F)V

    iget-object p1, v1, Lyb;->e:Lya;

    invoke-virtual {p1, p2, v2}, Lya;->g(Lyh;F)V

    :goto_3
    if-eq p4, v0, :cond_7

    invoke-virtual {v1, p0, p4}, Lyb;->f(Lyc;I)V

    :cond_7
    invoke-virtual {p0, v1}, Lyc;->e(Lyb;)V

    return-void
.end method

.method public final n(Lyh;Lyh;Lyh;Lyh;F)V
    .locals 7

    invoke-virtual {p0}, Lyc;->a()Lyb;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lyb;->g(Lyh;Lyh;Lyh;Lyh;F)V

    invoke-virtual {p0, v6}, Lyc;->e(Lyb;)V

    return-void
.end method

.method public final p(I)Lyh;
    .locals 5

    sget-object v0, Lyc;->b:Lyd;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lyd;->n:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lyd;->n:J

    :cond_0
    iget v0, p0, Lyc;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lyc;->n:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lyc;->s()V

    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lyc;->v(I)Lyh;

    move-result-object v0

    iget v1, p0, Lyc;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lyc;->e:I

    iget v2, p0, Lyc;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lyc;->i:I

    iput v1, v0, Lyh;->c:I

    iput p1, v0, Lyh;->e:I

    iget-object p1, p0, Lyc;->k:Landroidx/wear/ambient/AmbientDelegate;

    iget-object p1, p1, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    check-cast p1, [Lyh;

    aput-object v0, p1, v1

    iget-object p1, p0, Lyc;->s:Lyb;

    check-cast p1, Lyg;

    iget-object v1, p1, Lyg;->g:Lyf;

    iput-object v0, v1, Lyf;->a:Lyh;

    iget-object v1, v1, Lyf;->a:Lyh;

    iget-object v1, v1, Lyh;->i:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v1, v0, Lyh;->i:[F

    iget v2, v0, Lyh;->e:I

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-virtual {p1, v0}, Lyg;->m(Lyh;)V

    return-object v0
.end method
