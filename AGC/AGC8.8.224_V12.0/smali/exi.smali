.class public final Lexi;
.super Ljava/lang/Object;


# static fields
.field public static final a:F

.field public static final b:F


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Ljava/util/Map;

.field public e:Lewl;

.field public f:Lewl;

.field public g:Lexu;

.field public h:Lext;

.field public final i:[F

.field public final j:[F

.field public final k:[F

.field public l:[F

.field public m:F

.field public n:F

.field public o:F

.field public p:Z

.field public q:Lexs;

.field public final r:Lexh;

.field public s:Z

.field public t:Z

.field public u:F

.field public v:J

.field public final w:[F

.field public x:Lexg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {v0}, Lexi;->f(F)F

    move-result v0

    sput v0, Lexi;->a:F

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lexi;->f(F)F

    move-result v0

    sput v0, Lexi;->b:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lexi;->d:Ljava/util/Map;

    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lexi;->i:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lexi;->j:[F

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lexi;->k:[F

    const/4 v1, 0x0

    iput-object v1, p0, Lexi;->l:[F

    const/4 v2, 0x0

    iput v2, p0, Lexi;->o:F

    const/4 v2, 0x0

    iput-boolean v2, p0, Lexi;->p:Z

    iput-object v1, p0, Lexi;->q:Lexs;

    new-instance v1, Lexh;

    invoke-direct {v1}, Lexh;-><init>()V

    iput-object v1, p0, Lexi;->r:Lexh;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lexi;->s:Z

    iput-boolean v1, p0, Lexi;->t:Z

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lexi;->u:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lexi;->v:J

    new-array v0, v0, [F

    iput-object v0, p0, Lexi;->w:[F

    iput-object p1, p0, Lexi;->c:Landroid/content/Context;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static c([F)V
    .locals 4

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x3

    aget v3, p0, v2

    div-float/2addr v1, v3

    aput v1, p0, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    div-float/2addr v1, v3

    aput v1, p0, v0

    const/4 v0, 0x2

    aget v1, p0, v0

    div-float/2addr v1, v3

    aput v1, p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p0, v2

    return-void
.end method

.method private static f(F)F
    .locals 1

    const v0, 0x3c8efa35

    mul-float p0, p0, v0

    return p0
.end method

.method private static g([F[F)V
    .locals 4

    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, p1, v0

    aget v0, p0, v0

    const/4 v2, 0x4

    aput v0, p1, v2

    aget v0, p0, v2

    const/4 v2, 0x5

    aput v0, p1, v2

    aget v0, p0, v2

    const/4 v2, 0x6

    aput v0, p1, v2

    const/4 v0, 0x7

    aput v1, p1, v0

    aget v2, p0, v2

    const/16 v3, 0x8

    aput v2, p1, v3

    aget v0, p0, v0

    const/16 v2, 0x9

    aput v0, p1, v2

    aget p0, p0, v3

    const/16 v0, 0xa

    aput p0, p1, v0

    const/16 p0, 0xb

    aput v1, p1, p0

    const/16 p0, 0xc

    aput v1, p1, p0

    const/16 p0, 0xd

    aput v1, p1, p0

    const/16 p0, 0xe

    aput v1, p1, p0

    const/16 p0, 0xf

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p1, p0

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    sget-object v0, Lewr;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lewr;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetTargets()[Lcom/google/android/apps/lightcycle/panorama/NewTarget;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x10

    new-array v0, v0, [F

    iget-object v2, p0, Lexi;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    iget-object v4, v3, Lcom/google/android/apps/lightcycle/panorama/NewTarget;->orientation:[F

    invoke-static {v4, v0}, Lexi;->g([F[F)V

    iget-object v4, p0, Lexi;->d:Ljava/util/Map;

    iget v3, v3, Lcom/google/android/apps/lightcycle/panorama/NewTarget;->key:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "State is not ready."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final b([F)V
    .locals 4

    invoke-virtual {p0}, Lexi;->d()V

    sget-object v0, Lewr;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lewr;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->InitTargets([F)[Lcom/google/android/apps/lightcycle/panorama/NewTarget;

    move-result-object p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    const/16 v1, 0x10

    new-array v1, v1, [F

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/google/android/apps/lightcycle/panorama/NewTarget;->orientation:[F

    invoke-static {v2, v1}, Lexi;->g([F[F)V

    iget-object v2, p0, Lexi;->d:Ljava/util/Map;

    aget-object v3, p1, v0

    iget v3, v3, Lcom/google/android/apps/lightcycle/panorama/NewTarget;->key:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lexi;->s:Z

    iput-boolean p1, p0, Lexi;->t:Z

    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lexi;->u:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lexi;->v:J

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "State is not ready."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lexi;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lewr;->a:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->ResetTargets()V

    return-void
.end method

.method public final e(I)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lexi;->p:Z

    return-void
.end method
