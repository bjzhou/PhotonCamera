.class public final Lxo;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private final g:La;

.field private final h:Lfdn;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, v0}, Lxo;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(I)V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1}, La;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Lfdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_5
    iput p1, p0, Lxo;->a:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    const v1, 0x9

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lxo;->g:La;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    :goto_b
    new-instance p1, La;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p1, v0, v1}, Lfdn;-><init>(I[B)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lxo;->h:Lfdn;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x8

    nop

    nop

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

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public static c(ILandroid/graphics/PorterDuff$Mode;)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 p0, p0, 0x1f

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    mul-int/lit8 p0, p0, 0x1f

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/2addr p0, p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method protected static final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method private static final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    const v1, 0x20

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    const v0, 0x18

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_6
    iget-object v0, p0, Lxo;->g:La;

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

    :goto_7
    throw p0

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lxo;->h:Lfdn;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    if-eqz p1, :cond_1

    nop

    iget v1, p0, Lxo;->e:I

    nop

    nop

    nop

    nop

    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    iput v1, p0, Lxo;->e:I

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object p1

    nop

    nop

    :cond_1
    :try_start_1
    iget p1, p0, Lxo;->f:I

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 p1, p1, 0x1

    nop

    nop

    iput p1, p0, Lxo;->f:I

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    :goto_11
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget v1, p0, Lxo;->c:I

    nop

    nop

    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    iput v1, p0, Lxo;->c:I

    nop

    nop

    nop

    iget v1, p0, Lxo;->b:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, p2}, Lxo;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    iput v1, p0, Lxo;->b:I

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lxo;->h:Lfdn;

    nop

    nop

    invoke-virtual {v1, p1, p2}, Lfdn;->V(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_0

    nop

    nop

    nop

    nop

    iget v1, p0, Lxo;->b:I

    nop

    invoke-static {p1, p2}, Lxo;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    nop

    nop

    iput v1, p0, Lxo;->b:I

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_6
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    nop

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    iget-object v3, p0, Lxo;->h:Lfdn;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v3, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lxo;->b:I

    nop

    nop

    nop

    nop

    invoke-static {v2, v1}, Lxo;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, -0x1

    nop

    nop

    iput v3, p0, Lxo;->b:I

    nop

    iget v3, p0, Lxo;->d:I

    nop

    add-int/lit8 v3, v3, 0x1

    nop

    iput v3, p0, Lxo;->d:I

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    const v0, 0x14

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

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_b
    monitor-exit v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    const v1, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lxo;->g:La;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_f
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    return-object p2

    nop

    :catchall_1
    move-exception p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    invoke-static {p1, p2}, Lxo;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_13
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lxo;->g:La;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_19
    if-nez p2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1b
    monitor-enter v0

    nop

    :try_start_2
    iget v1, p0, Lxo;->b:I

    nop

    nop

    if-ltz v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lxo;->h:Lfdn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lfdn;->W()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    iget v1, p0, Lxo;->b:I

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    :cond_4
    const-string v1, "LruCache.sizeOf() is reporting inconsistent results!"

    nop

    nop

    nop

    nop

    invoke-static {v1}, La;->aW(Ljava/lang/String;)V

    :cond_5
    iget v1, p0, Lxo;->b:I

    nop

    nop

    nop

    if-le v1, p1, :cond_7

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lxo;->h:Lfdn;

    nop

    invoke-virtual {v1}, Lfdn;->W()Z

    move-result v1

    nop

    if-eqz v1, :cond_6

    nop

    nop

    nop

    goto :goto_21

    nop

    nop

    :cond_6
    iget-object v1, p0, Lxo;->h:Lfdn;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lfdn;->a:Ljava/lang/Object;

    nop

    check-cast v1, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lrkm;->at(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/util/Map$Entry;

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v2, v1}, Lxo;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1d
    iget p1, p0, Lxo;->a:I

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_1e

    nop

    nop

    nop

    :cond_7
    :goto_21
    goto/32 :goto_f

    nop

    nop

    :goto_22
    monitor-exit v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_d

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget v2, p0, Lxo;->e:I

    nop

    nop

    nop

    nop

    nop

    iget v3, p0, Lxo;->f:I

    nop

    nop

    nop

    nop

    add-int/2addr v3, v2

    nop

    nop

    nop

    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    mul-int/lit8 v2, v2, 0x64

    nop

    nop

    nop

    nop

    nop

    div-int/2addr v2, v3

    nop

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    :cond_1
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lxo;->a:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",hits="

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lxo;->e:I

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",misses="

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lxo;->f:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",hitRate="

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%]"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    const-string v0, "LruCache[maxSize="

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    iget-object v1, p0, Lxo;->g:La;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x15

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    monitor-exit v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method
