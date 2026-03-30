.class public final Lqvl;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:Landroid/content/Context;

.field public static final c:Lrtm;

.field private static volatile j:Lqvl;

.field private static volatile k:Lqvl;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Lrtm;

.field public final f:Lqyc;

.field public final g:Lrtm;

.field public final h:Lqxj;

.field public final i:Lhwy;

.field private final l:Lrtm;

.field private final m:Lrtm;

.field private final n:Lrtm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lqvl;->c:Lrtm;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_4
    const/16 v1, 0x9

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    :goto_8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    const v0, 0x14

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Llwi;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Llwi;-><init>(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    sput-object v0, Lqvl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    const v1, 0x9

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Lqrg;->H(Lrtm;)Lrtm;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lrtm;Lrtm;Lrtm;Lrtm;Lrtm;)V
    .locals 2

    goto/32 :goto_1e

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_24

    nop

    nop

    :goto_1
    invoke-static {p4}, Lqrg;->H(Lrtm;)Lrtm;

    move-result-object p4

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    iput-object p1, p0, Lqvl;->d:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1a

    nop

    :goto_4
    iput-object p6, p0, Lqvl;->g:Lrtm;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1b

    nop

    nop

    :goto_6
    iput-object p4, p0, Lqvl;->e:Lrtm;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    iput-object p3, p0, Lqvl;->m:Lrtm;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    invoke-direct {v0, p1, p2, p5, p3}, Lqyc;-><init>(Landroid/content/Context;Lrtm;Lrtm;Lrtm;)V

    goto/32 :goto_22

    nop

    nop

    :goto_9
    invoke-static {p6}, Lqrg;->H(Lrtm;)Lrtm;

    move-result-object p6

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_d
    iput-object p5, p0, Lqvl;->n:Lrtm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    new-instance v0, Lqyc;

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

    :goto_f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

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

    :goto_10
    invoke-static {p5}, Lqrg;->H(Lrtm;)Lrtm;

    move-result-object p5

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_15
    invoke-static {p3}, Lqrg;->H(Lrtm;)Lrtm;

    move-result-object p3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    iput-object p2, p0, Lqvl;->l:Lrtm;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    iput-object p1, p0, Lqvl;->h:Lqxj;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p2}, Lqrg;->H(Lrtm;)Lrtm;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1c
    iput-object v0, p0, Lqvl;->i:Lhwy;

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

    :goto_1d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_20
    new-instance p1, Lqxj;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {p1, p4, p3}, Lqxj;-><init>(Lrtm;Lrtm;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-object v0, p0, Lqvl;->f:Lqyc;

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

    :goto_23
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v0, Lhwy;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_26
    invoke-direct {v0, v1, v1}, Lhwy;-><init>([B[B)V

    goto/32 :goto_1c

    nop

    nop

    nop
.end method

.method public static a(Landroid/content/Context;)Lqvl;
    .locals 7

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
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

    :goto_2
    sget-object v1, Lqvl;->a:Ljava/lang/Object;

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

    :goto_3
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xd

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

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

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    :try_start_0
    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    const-string v3, "Failed to get an entry point. Did you mark your interface with @SingletonEntryPoint?"

    nop

    nop

    nop

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    nop

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    const-string v3, "Given application context does not implement GeneratedComponentManager: "

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter v1

    nop

    :try_start_1
    sget-object v3, Lqvl;->j:Lqvl;

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    sget-object p0, Lqvl;->j:Lqvl;

    nop

    monitor-exit v1

    nop

    nop

    nop

    return-object p0

    nop

    nop

    :cond_2
    sget-object v3, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    instance-of v4, p0, Lqvk;

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_3

    nop

    nop

    nop

    nop

    move-object v3, p0

    nop

    nop

    nop

    nop

    check-cast v3, Lqvk;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lqvk;->a()Lrss;

    move-result-object v3

    nop

    nop

    nop

    nop

    :cond_3
    new-instance v5, Lqpd;

    nop

    const/4 v6, 0x7

    nop

    invoke-direct {v5, p0, v6}, Lqpd;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Lrss;->d(Lrtm;)Ljava/lang/Object;

    move-result-object p0

    nop

    check-cast p0, Lqvl;

    nop

    nop

    nop

    nop

    nop

    sput-object p0, Lqvl;->j:Lqvl;

    nop

    nop

    nop

    if-nez v2, :cond_4

    nop

    nop

    if-nez v4, :cond_4

    nop

    nop

    nop

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lqvl;->b()Lsul;

    move-result-object v3

    nop

    nop

    nop

    const-string v4, "Application doesn\'t implement PhenotypeApplication interface, falling back to globally set context. See go/phenotype-flag#process-stable-init for more info."

    nop

    nop

    nop

    nop

    nop

    new-array v0, v0, [Ljava/lang/Object;

    nop

    nop

    nop

    invoke-static {v2, v3, v4, v0}, Lqrf;->d(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    monitor-exit v1

    nop

    nop

    nop

    return-object p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :try_start_2
    const-class v1, Lqvk;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    nop

    instance-of v3, v2, Ltuj;

    nop

    nop

    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ltuj;

    nop

    nop

    nop

    invoke-interface {v2}, Ltuj;->a()Ljava/lang/Object;

    move-result-object v2

    nop
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    check-cast v1, Lqvk;

    nop

    invoke-interface {v1}, Lqvk;->a()Lrss;

    move-result-object v1

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    move v2, v0

    nop

    nop

    nop

    nop

    nop

    :catch_2
    :cond_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_f

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    :try_start_5
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lqvl;

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    throw p0

    nop

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    sget-object v0, Lqvl;->j:Lqvl;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public static c()V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lqvn;->a:Lqvm;

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lqvl;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lqvm;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_5
    sget-object v0, Lqvn;->a:Lqvm;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lqvm;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-static {}, Lqvn;->a()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop
.end method


# virtual methods
.method public final b()Lsul;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lsul;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lrtm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lqvl;->l:Lrtm;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final d()Lqnt;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lqvl;->m:Lrtm;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lqnt;

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

    :goto_3
    invoke-interface {p0}, Lrtm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final e()Lhdn;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lhdn;

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

    :goto_1
    iget-object p0, p0, Lqvl;->n:Lrtm;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    invoke-interface {p0}, Lrtm;->a()Ljava/lang/Object;

    move-result-object p0

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
.end method
