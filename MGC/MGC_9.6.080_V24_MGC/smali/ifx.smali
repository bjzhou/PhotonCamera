.class public final Lifx;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Lrss;

.field public final c:Lrss;

.field public final d:Lifr;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Loxv;

.field public g:Lify;

.field public h:Likv;

.field public i:Ligg;

.field public j:I

.field public final k:Ljava/util/Map;

.field public final l:Ljava/util/Set;

.field public final m:Ljava/util/Set;

.field public final n:Ljava/util/Map;

.field public final o:Ljava/util/List;

.field public p:Llxm;

.field public q:Ligc;

.field public final r:Lhoh;

.field public s:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field public final t:Lnkn;

.field private final u:Lsys;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "ifx"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    sput-object v0, Lifx;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/jni/serengeti/SerengetiNative;Lsys;Lnkn;Lrss;Lrss;Lhoh;Lifr;Ljava/util/concurrent/Executor;Lhhg;)V
    .locals 0

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lifx;->k:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p8, p0, Lifx;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p7, p0, Lifx;->d:Lifr;

    nop

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

    :goto_5
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lifx;->o:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    :goto_a
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lifx;->l:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p3, p0, Lifx;->t:Lnkn;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lifx;->n:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    new-instance p1, Ljava/util/LinkedHashMap;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    invoke-direct {p1, p3}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p1, p0, Lifx;->m:Ljava/util/Set;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance p1, Ljava/util/LinkedHashSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    :goto_14
    new-instance p1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p2}, Lcom/google/android/apps/camera/jni/serengeti/SerengetiNative;->nativeInitialize(Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object p4, p0, Lifx;->b:Lrss;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_1a
    const/4 p3, -0x1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    new-instance p1, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object p5, p0, Lifx;->c:Lrss;

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

    nop

    :goto_1e
    iput-object p2, p0, Lifx;->u:Lsys;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1f
    iput-object p1, p0, Lifx;->f:Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_20
    new-instance p1, Ljava/util/LinkedHashSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_21
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_d

    nop

    nop

    :goto_24
    iput-object p6, p0, Lifx;->r:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public static final b(Linb;Lifx;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Llko;->d:Ljava/lang/Object;

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

    :goto_1
    iget-object p1, p1, Lifx;->h:Likv;

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

    nop

    :goto_2
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    :goto_8
    invoke-interface {p1, p0}, Likv;->m(Linb;)V

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v1, Lhtt;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Linb;->a()I

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    iput-object v0, p1, Lifx;->p:Llxm;

    nop

    nop

    :try_start_0
    iget-object v0, p0, Linb;->w:Llko;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Llko;->d:Ljava/lang/Object;

    nop

    invoke-interface {v0}, Llxa;->G()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_10
    invoke-direct {v1}, Lhtt;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

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

    :goto_12
    iget-object v0, p0, Linb;->w:Llko;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0, v1}, Llxa;->b(Ljava/lang/Throwable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    const v1, 0x1d

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Llxm;)V
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_1
    check-cast v2, Linb;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p0, Lifx;->a:Lsdb;

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

    nop

    :goto_3
    iget-object v2, v2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    const/16 v2, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5
    iget-object v2, v2, Linb;->w:Llko;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v1, Linb;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    new-instance v0, Libm;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lifx;->o:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    invoke-interface {v2}, Llxa;->j()Llxm;

    move-result-object v2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x5

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0, v0}, Lsdo;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_16
    invoke-direct {v0, v1, p0, v2}, Libm;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p1, p0, Lifx;->e:Ljava/util/concurrent/Executor;

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

    nop

    :goto_18
    if-eqz v1, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    :goto_1a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v2, :cond_2

    nop

    goto/32 :goto_11

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v0, "cancelCapturingShot called on unknown %s"

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p0, v0, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_f

    nop

    nop

    :goto_20
    const/16 v0, 0x5b1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_21
    invoke-virtual {v2, p1}, Llxm;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_22
    goto/16 :goto_b

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_24
    move-object v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_25
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_26
    check-cast p0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

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

    :goto_28
    if-nez v1, :cond_3

    nop

    goto/32 :goto_23

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lifx;->o:Ljava/util/List;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lifx;->n:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lifx;->n:Ljava/util/Map;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    iget-object v0, p0, Lifx;->m:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v1, Liga;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1}, Liga;->close()V

    goto/32 :goto_7

    nop

    nop

    :goto_17
    if-nez v1, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_18
    iput-object v0, p0, Lifx;->p:Llxm;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(I)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Liga;->run()V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Liga;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

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

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_8
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

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
    iget-object v0, p0, Lifx;->m:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lifx;->n:Ljava/util/Map;

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

.method public final e()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lifx;->i:Ligg;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop
.end method
