.class public Llhy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Likm;
.implements Lilg;
.implements Lilh;
.implements Lilq;


# static fields
.field private static final e:Lsdb;


# instance fields
.field protected final a:Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;

.field protected final b:Lije;

.field protected final c:Lpdf;

.field protected final d:Lnpr;

.field private final f:Llgc;

.field private final g:Lfxj;

.field private final h:Lpck;

.field private final i:Ljava/util/concurrent/Executor;

.field private final j:Ljava/util/HashMap;

.field private final k:Liof;

.field private final l:Liof;


# direct methods
.method private final 51550bab6b6440a4fd45f825c221b363m(Llhz;Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p1, Llhz;->q:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Llhz;->g()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    goto/32 :goto_d

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

    :goto_6
    goto :goto_a

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Llhz;->g()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;->close()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_1

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    :try_start_0
    sget-object p2, Llhy;->e:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    nop

    nop

    invoke-interface {p2, p0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p0

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    const/16 p2, 0xe7e

    nop

    nop

    nop

    invoke-interface {p0, p2}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    const-string p2, "Trying to set a result for an already aborted shot."

    nop

    nop

    nop

    invoke-interface {p0, p2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    const/4 p2, 0x0

    nop

    nop

    nop

    :goto_d
    :try_start_1
    iget-object p0, p0, Llhy;->l:Liof;

    nop

    iget-object v0, p1, Llhz;->t:Llko;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Llxa;->j()Llxm;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {p2}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p2

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0, p2}, Liof;->g(Llxm;Lrss;)V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v4, 0x0

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

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    aput-object v0, v1, v3

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

    :goto_7
    const/4 v1, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sput-object v0, Llhy;->e:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    const/16 v3, 0x25

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v0, Lsdb;

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

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    const-string v0, "lhy"

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    const/4 v3, 0x0

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

    nop

    :goto_11
    const v1, 0x5

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop
.end method

.method public constructor <init>(Liof;Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;Llgc;Lije;Lfxj;Lkxj;Lnpr;Ljava/util/concurrent/Executor;Lpdf;Liof;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object v0, p0, Llhy;->j:Ljava/util/HashMap;

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p9, p0, Llhy;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    iput-object p2, p0, Llhy;->a:Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    iput-object p7, p0, Llhy;->d:Lnpr;

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
    iput-object p5, p0, Llhy;->g:Lfxj;

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

    nop

    :goto_6
    iput-object p3, p0, Llhy;->f:Llgc;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p4, p0, Llhy;->b:Lije;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Llhy;->l:Liof;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p8, p0, Llhy;->i:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    iput-object p1, p0, Llhy;->h:Lpck;

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
    iget-object p1, p6, Lkxj;->b:Lpck;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p10, p0, Llhy;->k:Liof;

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

    nop

    :goto_f
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Llxm;)V
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, v1, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    iget-object v2, v2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0, v1}, Liof;->g(Llxm;Lrss;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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
    iget-object v0, v0, Llko;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_20

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_29

    nop

    nop

    :goto_12
    iget-object p0, p0, Llhy;->l:Liof;

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

    :goto_13
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Llxa;->j()Llxm;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    invoke-interface {v2}, Llxa;->j()Llxm;

    move-result-object v2

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

    :goto_16
    if-nez v2, :cond_2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1e

    nop

    nop

    :goto_1a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, v1, Linb;->w:Llko;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1c
    const-string v1, "Shot has been aborted %s"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1d
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1e
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Llhz;->b()V

    :goto_20
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v1, Linb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p1, Llhz;->t:Llko;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v0, Llhy;->e:Lsdb;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast p1, Llhz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/16 v1, 0xe78

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_29
    iget-object p1, p0, Llhy;->j:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2b
    if-nez p1, :cond_4

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_19

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Llhy;->j:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Linb;Lpge;)V
    .locals 8

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1, p0, p2}, Loel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2
    sget-object p1, Lsed;->a:Lsdr;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "%s_%02d.pd"

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_11

    nop

    nop

    nop

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p1, Llhz;->t:Llko;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0}, Lprw;->close()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v1, Loel;

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

    :goto_a
    const/16 v2, 0x9

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/io/File;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    invoke-interface {p1}, Llxa;->n()Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0}, Lprw;->close()V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_f
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    nop

    nop

    nop

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {p0}, Lprw;->g()Ljava/util/List;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    nop

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lprv;

    nop

    nop

    invoke-interface {v1}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    nop

    nop

    new-array v4, v3, [B

    nop

    nop

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-interface {p0}, Lprw;->a()I

    move-result v5

    nop

    nop

    const/16 v6, 0x1003

    nop

    nop

    nop

    if-ne v5, v6, :cond_3

    nop

    nop

    nop

    invoke-interface {v1}, Lprv;->getRowStride()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    nop

    nop

    :cond_3
    invoke-interface {p0}, Lprw;->c()I

    move-result v5

    nop

    invoke-interface {v1}, Lprv;->getPixelStride()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    mul-int/2addr v5, v6

    nop

    nop

    nop

    :goto_12
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-ge v6, v3, :cond_4

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    invoke-interface {v1}, Lprv;->getRowStride()I

    move-result v7

    nop

    nop

    add-int/2addr v6, v7

    nop

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    nop

    nop

    :cond_4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    throw p1

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_17
    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    invoke-direct {v1, v2}, Lkzo;-><init>(I)V

    goto/32 :goto_29

    nop

    nop

    :goto_19
    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p0}, Lprw;->close()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, p2}, Llhz;->c(Lpge;)V

    goto/32 :goto_33

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1d
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    :goto_21
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_23
    goto :goto_1f

    nop

    nop

    :catch_0
    move-exception p1

    nop

    :try_start_3
    sget-object p2, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->a:Lsdb;

    nop

    nop

    invoke-virtual {p2}, Lscs;->b()Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    sget-object v1, Lsed;->a:Lsdr;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "CAM_DynDepthUtils"

    nop

    nop

    nop

    nop

    invoke-interface {p2, v1, v2}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    check-cast p2, Lscz;

    nop

    invoke-interface {p2, p1}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    const/16 p2, 0x4a8

    nop

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string p2, "IOException while saving Depth debug image %s"

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {p1, p2, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast p1, Llhz;

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

    :goto_25
    goto/32 :goto_22

    nop

    nop

    :goto_26
    if-nez v1, :cond_6

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v1, Lkzo;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1, v1}, Lrss;->b(Lrsk;)Lrss;

    move-result-object p1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

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

    nop

    :goto_2c
    iget-object v0, p0, Llhy;->j:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    :catchall_0
    move-exception p2

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_15

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_28

    nop

    nop

    :goto_31
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p1}, Lrss;->h()Z

    move-result v1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_33
    iget v0, p1, Llhz;->r:I

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v1}, Loel;->g()Lprw;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v1, :cond_7

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2f

    nop

    nop

    :goto_36
    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_37
    goto :goto_38

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_38
    throw p2

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_39
    add-int/lit8 v0, v0, -0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast v1, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {p2}, Lpge;->close()V

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3c
    return-void

    nop

    :goto_3d
    goto/32 :goto_25

    nop

    nop

    :goto_3e
    iget-object p0, p0, Llhy;->f:Llgc;

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

    nop

    :goto_3f
    const v0, 0x20

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_40
    iget-object p1, p1, Llko;->d:Ljava/lang/Object;

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

    nop

    :goto_41
    if-nez p0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_8
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_43
    const-string v1, "payload_depth"

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop
.end method

.method public final c(Linb;Lcom/google/googlex/gcam/BurstSpec;Lpro;)V
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p1, Linb;->w:Llko;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    iget-object p2, p0, Llhy;->j:Ljava/util/HashMap;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Llhy;->j:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Llhy;->l:Liof;

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

    :goto_4
    invoke-virtual {p0, p1}, Liof;->f(Llxm;)V

    goto/32 :goto_16

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_7
    iget-object v2, p1, Linb;->w:Llko;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p1, Llko;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    invoke-direct {v0, v2, v1, p2, p3}, Llhz;-><init>(Llko;Lijd;Lcom/google/googlex/gcam/BurstSpec;Lpro;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1}, Llxa;->j()Llxm;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    xor-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Llhy;->b:Lije;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Llhz;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Lije;->a()Lijd;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    const v1, 0x1b

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
    return-void

    nop

    :goto_17
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_3

    nop

    nop
.end method

.method public final d(Linb;IJLpro;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p3, p3, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    invoke-interface {p3}, Llxa;->j()Llxm;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p3, p1, Linb;->w:Llko;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string p1, "Shot hasn\'t been started yet!"

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

    :goto_7
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Llhz;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    :goto_c
    iget-object p0, p0, Llhz;->l:Lsuu;

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
    iget-object p0, p0, Llhy;->j:Ljava/util/HashMap;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    throw p0

    nop

    nop

    nop

    :goto_f
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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
.end method

.method public final dm(Linb;)V
    .locals 0

    goto/32 :goto_1

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

    nop

    nop

    :goto_1
    iget-object p1, p1, Linb;->w:Llko;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-interface {p1}, Llxa;->j()Llxm;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iget-object p1, p1, Llko;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Llhy;->a(Llxm;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final dn(Linb;Lilk;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iget-object p1, p1, Llko;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

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
    iget-object p1, p1, Linb;->w:Llko;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Llhy;->a(Llxm;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1}, Llxa;->j()Llxm;

    move-result-object p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic do(Linb;Lmjq;Lscn;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final dp(Linb;Landroid/graphics/Bitmap;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    sget-object p0, Llhy;->e:Lsdb;

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
    iget-object p0, p0, Llhz;->m:Lsuu;

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

    :goto_3
    invoke-interface {p0, p1, p2}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p2, p1, Linb;->w:Llko;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p2, p2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    check-cast p0, Lscz;

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

    :goto_7
    invoke-virtual {p0, p3}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p0, Llhz;

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
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Llhy;->j:Ljava/util/HashMap;

    nop

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

    :goto_c
    const-string p1, "Couldn\'t find inflight shot, already processed? %s"

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

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p2}, Llxa;->j()Llxm;

    move-result-object p2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 p1, 0xe7d

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final synthetic e(Llhz;Linb;)V
    .locals 5

    goto/32 :goto_7

    nop

    nop

    :goto_0
    iget-object p1, p0, Llhy;->j:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1f

    nop

    nop

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

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

    :goto_4
    sget-object v0, Landroidx/wear/widget/xrA/fuyPMnCeXU;->LBbHf:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_7
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v3, p0, Llhy;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v4, "depth"

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v3, p1, Llhz;->l:Lsuu;

    nop

    nop

    invoke-virtual {v3}, Lsuu;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Ljava/lang/Integer;

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lpge;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    iget-object v3, p0, Llhy;->f:Llgc;

    nop

    new-instance v4, Loel;

    nop

    nop

    nop

    invoke-direct {v4, v3, v1}, Loel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v4, p1}, Llhy;->f(Loel;Llhz;)Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    move-result-object v2

    nop
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Llhy;->j:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, p1, v2}, Llhy;->51550bab6b6440a4fd45f825c221b363m(Llhz;Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;)V

    goto/32 :goto_d

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Llhz;->f()Ljava/util/List;

    move-result-object v1

    nop

    goto/32 :goto_3

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

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

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

    :goto_13
    return-void

    nop

    nop

    :goto_14
    goto/32 :goto_1e

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, p1, v2}, Llhy;->51550bab6b6440a4fd45f825c221b363m(Llhz;Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;)V

    goto/32 :goto_0

    nop

    nop

    :goto_19
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Llhy;->c:Lpdf;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Llhz;->b()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    throw v0

    nop

    nop

    :goto_1d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Llhy;->c:Lpdf;

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

    nop

    :goto_20
    goto :goto_16

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p1}, Llhz;->b()V

    sget-object v3, Llhy;->e:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lscs;->b()Lsdo;

    move-result-object v3

    nop

    invoke-interface {v3, v1}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    const/16 v3, 0xe7a

    nop

    nop

    nop

    invoke-interface {v1, v3}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    check-cast v1, Lscz;

    nop

    invoke-interface {v1, v0}, Lscz;->s(Ljava/lang/String;)V

    goto :goto_21

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v1

    nop

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    sget-object v3, Llhy;->e:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v3}, Lscs;->b()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v1}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    const/16 v3, 0xe79

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lscz;->s(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_21
    goto/32 :goto_f

    nop

    nop
.end method

.method protected f(Loel;Llhz;)Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;
    .locals 11

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v2}, Llxa;->j()Llxm;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, p2, Llhz;->t:Llko;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v1}, Lprw;->close()V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_4
    iget-object p0, p0, Llhy;->c:Lpdf;

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    :goto_6
    invoke-interface {v0}, Lprw;->close()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_d

    nop

    nop

    :goto_8
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_9
    invoke-static {}, Lnpr;->j()V

    :try_start_0
    iget-object v2, p2, Llhz;->m:Lsuu;

    nop

    nop

    invoke-virtual {v2}, Lsuu;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Lcom/google/googlex/gcam/ShotMetadata;

    nop

    iget-object v3, p0, Llhy;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v4, "ddepth#process"

    nop

    nop

    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, p0, Llhy;->h:Lpck;

    nop

    nop

    nop

    iget-object v4, p0, Llhy;->g:Lfxj;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lfxj;->b()Lpcg;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lpcg;->ordinal()I

    move-result v7

    nop

    iget-object p2, p2, Llhz;->s:Lijd;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v9, p2, Lijd;->i:Z

    nop

    iget-object p1, p1, Loel;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpge;->d()Lpro;

    move-result-object v10

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v5, v3

    nop

    nop

    nop

    nop

    invoke-direct/range {v5 .. v10}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;-><init>(Lpck;IZZLpro;)V

    iget-object p1, p0, Llhy;->a:Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->b(Lprw;Lprw;Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;Lcom/google/googlex/gcam/ShotMetadata;)Z

    move-result p1

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v2, v2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Loel;->g()Lprw;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v1}, Lprw;->close()V

    :goto_d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Llhy;->c:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_12
    const v1, 0x9

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Loel;->j()Lprw;

    move-result-object v0

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

    :goto_14
    invoke-interface {v0}, Lprw;->close()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Llhy;->c:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v1}, Lprw;->close()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_17

    nop

    nop

    :goto_1c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_5

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p2}, Llhz;->g()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v1, :cond_3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    :goto_24
    if-nez v1, :cond_4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_26
    if-nez v0, :cond_5

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_28

    nop

    nop

    :goto_27
    iget-object p0, p0, Llhy;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_28
    invoke-interface {v0}, Lprw;->close()V

    :goto_29
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v1}, Lprw;->close()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2b
    throw p1

    nop

    :catch_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v0}, Lprw;->close()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2d
    const v0, 0x4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_18

    nop

    nop

    nop
.end method

.method public final g(Llxm;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Linc;->a(Lilg;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0}, Linc;->c(Lilh;)V

    goto/32 :goto_8

    nop

    nop

    :goto_2
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    const v0, 0x1f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p0}, Linc;->f(Lilq;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1}, Liof;->c(Llxm;)Linc;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Llim;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Llhy;->k:Liof;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, p0, v1}, Llim;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x1

    nop

    nop

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
.end method

.method public final h(Linb;)Z
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    new-instance v2, Lkss;

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

    :goto_3
    const-string v0, "Shot hasn\'t been started yet! shotId = %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Linb;->a()I

    move-result p1

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
    const/16 v3, 0xb

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v2, p0, v0, p1, v3}, Lkss;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x12

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

    :goto_9
    iget-object v0, p0, Llhy;->j:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_a
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    :goto_c
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_e
    sget-object p0, Llhy;->e:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    const v1, 0x20

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v0, Llhz;

    nop

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

    nop

    :goto_11
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    const/16 v0, 0xe7f

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0, v0, p1}, Lscz;->t(Ljava/lang/String;I)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v1, p0, Llhy;->i:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_1a
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return p0

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic i(Linb;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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

    nop

    :goto_1
    return p0

    nop
.end method
