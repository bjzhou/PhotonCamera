.class public final Lixe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnwz;
.implements Lnbg;
.implements Ljpv;
.implements Ljps;
.implements Ljpq;


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field public final b:Lowu;

.field public final c:Ljph;

.field public final d:Ljava/util/PriorityQueue;

.field public e:Lpqs;

.field public f:Lrtm;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Lnbh;

.field public l:Lnbe;

.field public m:Lj$/util/Optional;

.field public n:Z

.field public final o:Loyd;

.field public final p:Loyd;

.field public q:Lixf;

.field public final r:Lpqv;

.field public final s:Lows;

.field public t:I

.field public u:Lhoh;

.field private final v:Landroid/os/Handler;

.field private final w:Ljava/util/Set;

.field private x:Ljava/lang/Runnable;

.field private y:Z


# direct methods
.method private final 1a36313b7ed15ba14e0acb4da569b8b7m(Lixf;)Z
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    sget-object v0, Lixe;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Lixe;->y:Z

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return v2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-object p0, p0, Lixe;->w:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lixf;->c()Lixg;

    move-result-object p1

    nop

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    if-eqz p0, :cond_2

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return v2

    nop

    :cond_2
    monitor-exit v0

    nop

    nop

    const/4 p0, 0x1

    nop

    nop

    return p0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xf

    nop

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

    nop

    :goto_8
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method private final 33b3102b6558811a7b7629a1e8e59bd2m()V
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_7
    sget-object v0, Lixe;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lixe;->q:Lixf;

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lixe;->b:Lowu;

    nop

    nop

    nop

    new-instance v3, Litt;

    nop

    nop

    nop

    const/16 v4, 0x9

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v1, v4}, Litt;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Lowu;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lixe;->q:Lixf;

    nop

    nop

    nop

    invoke-interface {v1}, Lixf;->n()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lixe;->d:Ljava/util/PriorityQueue;

    nop

    iget-object v2, p0, Lixe;->q:Lixf;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x0

    nop

    iput-object v1, p0, Lixe;->q:Lixf;

    nop

    iget-object v1, p0, Lixe;->v:Landroid/os/Handler;

    nop

    nop

    nop

    iget-object v2, p0, Lixe;->x:Ljava/lang/Runnable;

    nop

    nop

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lixe;->v:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lixe;->x:Ljava/lang/Runnable;

    nop

    nop

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lixe;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Lowu;Lows;Landroid/os/Handler;Ljph;Lpqv;Loyd;Loyd;)V
    .locals 3

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    const/16 v2, 0xd

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lixe;->b:Lowu;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Lixe;->v:Landroid/os/Handler;

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

    :goto_7
    iput-boolean v0, p0, Lixe;->y:Z

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_9
    iput-object p4, p0, Lixe;->c:Ljph;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/util/PriorityQueue;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1d

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, v2}, Lvl;-><init>(I)V

    goto/32 :goto_18

    nop

    nop

    :goto_10
    iput-object v1, p0, Lixe;->m:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    iput-boolean v0, p0, Lixe;->n:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p7, p0, Lixe;->o:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lixe;->w:Ljava/util/Set;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    iput-boolean v0, p0, Lixe;->g:Z

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_15
    new-instance v0, Ljava/util/HashSet;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v1, p0, Lixe;->l:Lnbe;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v1, Lnbe;->b:Lnbe;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-boolean v0, p0, Lixe;->h:Z

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0xc

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    new-instance v1, Lvl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1f
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_20
    iput-boolean v0, p0, Lixe;->i:Z

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_22
    iput-object p5, p0, Lixe;->r:Lpqv;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v0, p0, Lixe;->d:Ljava/util/PriorityQueue;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_24
    iput v1, p0, Lixe;->t:I

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v1, Lnbh;->a:Lnbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_26
    iput-object p6, p0, Lixe;->p:Loyd;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_27
    iput-object p2, p0, Lixe;->s:Lows;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v1, p0, Lixe;->k:Lnbh;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-boolean v0, p0, Lixe;->j:Z

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method

.method private final b1051a9d8893542362ad09051775f8f6m(Lixf;Ljava/lang/Runnable;)V
    .locals 8

    goto/32 :goto_e

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_8
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    sget-object p2, Lixe;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter p2

    nop

    :try_start_0
    iget-object v0, p0, Lixe;->b:Lowu;

    nop

    nop

    nop

    nop

    new-instance v7, Lhfj;

    nop

    nop

    nop

    nop

    const/4 v5, 0x6

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    move-object v1, v7

    nop

    nop

    nop

    move-object v2, p0

    nop

    nop

    nop

    move-object v3, p1

    nop

    nop

    nop

    nop

    invoke-direct/range {v1 .. v6}, Lhfj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[S)V

    invoke-virtual {v0, v7}, Lowu;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lixe;->v:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lixe;->x:Ljava/lang/Runnable;

    nop

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_2

    nop

    iget-object p1, p0, Lixe;->v:Landroid/os/Handler;

    nop

    iget-object p0, p0, Lixe;->x:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    monitor-exit p2

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit p2

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v4, Lixb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    iget-boolean v0, p0, Lixe;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v4, p0, p2, v0}, Lixb;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lixf;)Lpci;
    .locals 6

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lixc;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    :goto_8
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter v0

    nop

    :try_start_1
    new-instance v1, Ljava/util/Date;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-interface {p1, v1}, Lixf;->j(Ljava/util/Date;)V

    iget-object v1, p0, Lixe;->d:Ljava/util/PriorityQueue;

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lixe;->q:Lixf;

    nop

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    const/16 v2, 0x14

    nop

    if-eqz v1, :cond_1

    nop

    nop

    monitor-enter v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lixe;->q:Lixf;

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    invoke-interface {v1}, Lixf;->o()Z

    move-result v1

    nop

    if-nez v1, :cond_0

    nop

    iget-object v1, p0, Lixe;->v:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lixe;->x:Ljava/lang/Runnable;

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lixe;->v:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lixe;->x:Ljava/lang/Runnable;

    nop

    iget-object v4, p0, Lixe;->q:Lixf;

    nop

    nop

    invoke-interface {v4}, Lixf;->b()I

    move-result v4

    nop

    nop

    int-to-long v4, v4

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lixe;->q:Lixf;

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lixe;->b:Lowu;

    nop

    nop

    new-instance v4, Libm;

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    invoke-direct {v4, p0, v1, v2, v5}, Libm;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    invoke-virtual {v3, v4}, Lowu;->execute(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p0

    nop

    nop

    nop

    nop

    :cond_1
    :goto_a
    new-instance v1, Lhig;

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, p1, v2}, Lhig;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    monitor-exit v0

    nop

    nop

    nop

    return-object v1

    nop

    :cond_2
    invoke-interface {p1}, Lixf;->n()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lixe;->1a36313b7ed15ba14e0acb4da569b8b7m(Lixf;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    iget-object v1, p0, Lixe;->q:Lixf;

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    invoke-interface {p1}, Lixf;->r()I

    move-result v1

    nop

    nop

    nop

    invoke-static {v1}, Liyl;->h(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lixe;->q:Lixf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lixf;->r()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Liyl;->h(I)I

    move-result v2

    nop

    nop

    nop

    nop

    if-le v1, v2, :cond_3

    nop

    nop

    nop

    iget-object v1, p0, Lixe;->q:Lixf;

    nop

    invoke-interface {v1}, Lixf;->m()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    :cond_3
    new-instance p0, Lixa;

    nop

    const/4 p1, 0x0

    nop

    nop

    invoke-direct {p0, p1}, Lixa;-><init>(I)V

    monitor-exit v0

    nop

    nop

    return-object p0

    nop

    nop

    nop

    :cond_4
    iget-object v1, p0, Lixe;->d:Ljava/util/PriorityQueue;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lixe;->1a36313b7ed15ba14e0acb4da569b8b7m(Lixf;)Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lixe;->q:Lixf;

    nop

    nop

    nop

    if-nez v1, :cond_5

    nop

    nop

    invoke-virtual {p0, p1}, Lixe;->i(Lixf;)V

    goto :goto_b

    nop

    nop

    nop

    nop

    :cond_5
    iget-object v1, p0, Lixe;->d:Ljava/util/PriorityQueue;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_7

    nop

    nop

    iget-object v1, p0, Lixe;->q:Lixf;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lixf;->m()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    iget-object v1, p0, Lixe;->q:Lixf;

    nop

    new-instance v2, Lgbg;

    nop

    nop

    nop

    const/16 v3, 0xc

    nop

    invoke-direct {v2, v3}, Lgbg;-><init>(I)V

    invoke-direct {p0, v1, v2}, Lixe;->b1051a9d8893542362ad09051775f8f6m(Lixf;Ljava/lang/Runnable;)V

    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_6
    invoke-direct {p0}, Lixe;->33b3102b6558811a7b7629a1e8e59bd2m()V

    invoke-virtual {p0, p1}, Lixe;->i(Lixf;)V

    :cond_7
    :goto_b
    monitor-exit v0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_c
    sget-object v0, Lixe;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_f
    if-lez v0, :cond_8

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_8
    goto/32 :goto_1

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    :goto_11
    invoke-direct {v0, p0, p1, v1}, Lixc;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final cX()V
    .locals 6

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lixe;->d:Ljava/util/PriorityQueue;

    nop

    const/4 v2, 0x0

    nop

    nop

    new-array v3, v2, [Lixf;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, [Lixf;

    nop

    nop

    nop

    nop

    nop

    array-length v3, v1

    nop

    nop

    :goto_1
    if-ge v2, v3, :cond_1

    nop

    nop

    nop

    nop

    aget-object v4, v1, v2

    nop

    nop

    invoke-interface {v4}, Lixf;->p()Z

    move-result v5

    nop

    nop

    if-nez v5, :cond_0

    nop

    nop

    nop

    invoke-virtual {p0, v4}, Lixe;->f(Lixf;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto :goto_1

    nop

    nop

    nop

    :cond_1
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lixe;->y:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Lixe;->33b3102b6558811a7b7629a1e8e59bd2m()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Lixe;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    const v1, 0x7

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

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_2
    goto/32 :goto_6

    nop

    :goto_f
    throw p0

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final cY()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lixe;->i(Lixf;)V

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x6

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-boolean v0, p0, Lixe;->y:Z

    nop

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

    :goto_d
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lixe;->e()Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop
.end method

.method public final d(Lixg;)Lpci;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x9

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0, p1, v1}, Lixc;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lixc;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_4

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Lixe;->g(Lixg;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1e

    nop

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
.end method

.method public final synthetic dI(Lnbh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final dP(Lnbe;Lnbh;)V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Lixe;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x13

    nop

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

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lixe;->f:Lrtm;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Lnbs;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lnbs;->d:Lnca;

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lnca;->M()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto :goto_8

    nop

    :cond_0
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :cond_1
    :goto_8
    iput-boolean v2, p0, Lixe;->i:Z

    nop

    nop

    nop

    nop

    nop

    iput-object p2, p0, Lixe;->k:Lnbh;

    nop

    iput-object p1, p0, Lixe;->l:Lnbe;

    nop

    iget-object p1, p0, Lixe;->b:Lowu;

    nop

    new-instance p2, Litt;

    nop

    nop

    const/16 v1, 0xb

    nop

    nop

    nop

    invoke-direct {p2, p0, v1}, Litt;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Lowu;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x4

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
.end method

.method public final e()Lrss;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x1

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

    nop

    :goto_1
    goto/32 :goto_4

    nop

    :goto_2
    goto/32 :goto_5

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

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v0, Lixe;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    :goto_d
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v1, p0, Lixe;->y:Z

    nop

    if-eqz v1, :cond_1

    nop

    nop

    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-object p0

    nop

    nop

    :cond_1
    new-instance v1, Ljava/util/PriorityQueue;

    nop

    iget-object v2, p0, Lixe;->d:Ljava/util/PriorityQueue;

    nop

    invoke-direct {v1, v2}, Ljava/util/PriorityQueue;-><init>(Ljava/util/PriorityQueue;)V

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lixf;

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    invoke-direct {p0, v2}, Lixe;->1a36313b7ed15ba14e0acb4da569b8b7m(Lixf;)Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-object p0

    nop

    nop

    nop

    nop

    :cond_2
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lixf;

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    :cond_3
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final f(Lixf;)V
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lixe;->q:Lixf;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lixe;->q:Lixf;

    nop

    invoke-interface {v1}, Lixf;->m()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lixe;->q:Lixf;

    nop

    new-instance v2, Lixb;

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    invoke-direct {v2, p0, p1, v3}, Lixb;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {p0, v1, v2}, Lixe;->b1051a9d8893542362ad09051775f8f6m(Lixf;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    nop

    iput-boolean p1, p0, Lixe;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    nop

    :cond_1
    invoke-direct {p0}, Lixe;->33b3102b6558811a7b7629a1e8e59bd2m()V

    iget-object v1, p0, Lixe;->d:Ljava/util/PriorityQueue;

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lixe;->e()Lrss;

    move-result-object p1

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Lixe;->i(Lixf;)V

    goto :goto_7

    nop

    :cond_2
    iget-object p0, p0, Lixe;->d:Ljava/util/PriorityQueue;

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_7
    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Lixe;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xa

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

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final g(Lixg;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lixe;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

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

    :goto_4
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lixe;->w:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lixe;->q:Lixf;

    nop

    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lixe;->w:Ljava/util/Set;

    nop

    nop

    nop

    invoke-interface {p1}, Lixf;->c()Lixg;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    nop

    if-eqz p1, :cond_1

    nop

    nop

    nop

    invoke-direct {p0}, Lixe;->33b3102b6558811a7b7629a1e8e59bd2m()V

    invoke-virtual {p0}, Lixe;->e()Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Lixe;->i(Lixf;)V

    :cond_1
    monitor-exit v0

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final h(Lixg;)V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_6
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lixe;->w:Ljava/util/Set;

    nop

    nop

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lixe;->e()Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lixe;->q:Lixf;

    nop

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    invoke-direct {p0}, Lixe;->33b3102b6558811a7b7629a1e8e59bd2m()V

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    invoke-virtual {p0, p1}, Lixe;->i(Lixf;)V

    :cond_1
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xa

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x17

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    sget-object v0, Lixe;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final i(Lixf;)V
    .locals 4

    goto/32 :goto_2

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lixe;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Lixe;->b:Lowu;

    nop

    new-instance v2, Lixb;

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    invoke-direct {v2, p0, p1, v3}, Lixb;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lowu;->execute(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lixe;->q:Lixf;

    nop

    nop

    nop

    invoke-interface {p1}, Lixf;->o()Z

    move-result v1

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    new-instance v1, Litt;

    nop

    nop

    const/16 v2, 0xa

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Litt;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lixe;->x:Ljava/lang/Runnable;

    nop

    iget-object p0, p0, Lixe;->v:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lixf;->b()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    int-to-long v2, p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final j()V
    .locals 10

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    :goto_1
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lixe;->q:Lixf;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    iget v2, p0, Lixe;->t:I

    nop

    nop

    iget-boolean v3, p0, Lixe;->h:Z

    nop

    iget-boolean v4, p0, Lixe;->i:Z

    nop

    nop

    nop

    iget-boolean v5, p0, Lixe;->j:Z

    nop

    nop

    iget-object v6, p0, Lixe;->k:Lnbh;

    nop

    nop

    nop

    iget-object v7, p0, Lixe;->l:Lnbe;

    nop

    nop

    iget-object v8, p0, Lixe;->m:Lj$/util/Optional;

    nop

    nop

    nop

    iget-boolean v9, p0, Lixe;->n:Z

    nop

    nop

    nop

    invoke-interface/range {v1 .. v9}, Lixf;->s(IZZZLnbh;Lnbe;Lj$/util/Optional;Z)V

    :cond_0
    monitor-exit v0

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lixe;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    const v0, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k(I)V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    :goto_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iput p1, p0, Lixe;->t:I

    nop

    iget-object p1, p0, Lixe;->b:Lowu;

    nop

    new-instance v1, Litt;

    nop

    nop

    nop

    nop

    const/16 v2, 0xb

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Litt;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Lowu;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lixe;->u:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v1, Lhnz;->q:Lhmn;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    const v1, 0x1c

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

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_c
    sget-object v0, Lixe;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    :goto_10
    throw p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method
