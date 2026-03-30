.class public abstract Lqvy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/lang/Object;

.field public static final synthetic d:I

.field private static volatile e:Lqvx;

.field private static volatile f:Z

.field private static final g:Lqwh;

.field private static final h:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final b:Lqvw;

.field final c:Ljava/lang/String;

.field private i:Ljava/lang/Object;

.field private volatile j:I

.field private volatile k:Ljava/lang/Object;

.field private final l:Z

.field private volatile m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_7

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

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_1
    invoke-direct {v1, v2}, Lqxo;-><init>(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lqvy;->g:Lqwh;

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

    :goto_6
    new-instance v1, Lqxo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    const v0, 0x18

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

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

    nop

    :goto_9
    new-instance v0, Lqwh;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    invoke-direct {v0, v1}, Lqwh;-><init>(Lqwi;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    :goto_c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    sput-object v0, Lqvy;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x4

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sput-object v0, Lqvy;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

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
.end method

.method public constructor <init>(Lqvw;Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    iget-object v0, p1, Lqvw;->a:Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string p1, ""

    nop

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

    nop

    :goto_7
    throw p0

    nop

    :goto_8
    iput-boolean p1, p0, Lqvy;->m:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string p1, "Must pass a valid SharedPreferences file name or ContentProvider URI"

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

    :goto_a
    iput-object p1, p0, Lqvy;->i:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lqvy;->b:Lqvw;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    iput v0, p0, Lqvy;->j:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    iput-boolean p1, p0, Lqvy;->l:Z

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

    :goto_10
    iput-object p2, p0, Lqvy;->c:Ljava/lang/String;

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

    nop

    :goto_11
    if-nez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lqvw;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lqvy;->b:Lqvw;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p2, p0, Lqvy;->c:Ljava/lang/String;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    iput v0, p0, Lqvy;->j:I

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

    :goto_4
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_6
    iput-boolean p1, p0, Lqvy;->m:Z

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    iput-boolean p4, p0, Lqvy;->l:Z

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

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p1, 0x0

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

    nop

    :goto_a
    iput-object p3, p0, Lqvy;->i:Ljava/lang/Object;

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

    :goto_b
    return-void

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

    nop

    nop

    :goto_d
    const-string p1, "Must pass a valid SharedPreferences file name or ContentProvider URI"

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
    new-instance p0, Ljava/lang/IllegalArgumentException;

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
    iget-object v0, p1, Lqvw;->a:Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    throw p0

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    goto :goto_7

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lqvy;->c:Ljava/lang/String;

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

    :goto_5
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public static e()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/32 :goto_1

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

    nop

    :goto_2
    sget-object v0, Lqvy;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static f(Landroid/content/Context;)V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    :try_start_0
    sget-object v1, Lqvy;->e:Lqvx;

    nop

    nop

    nop

    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    monitor-enter v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lqvy;->e:Lqvx;

    nop

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    nop

    if-eqz v2, :cond_1

    nop

    move-object p0, v2

    nop

    :cond_1
    if-eqz v1, :cond_2

    nop

    nop

    nop

    iget-object v2, v1, Lqvx;->a:Landroid/content/Context;

    nop

    if-eq v2, p0, :cond_4

    nop

    nop

    nop

    nop

    :cond_2
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    invoke-static {}, Lqvb;->a()V

    invoke-static {}, Lqwa;->a()V

    invoke-static {}, Lqvg;->a()V

    :cond_3
    new-instance v1, Lqpd;

    nop

    nop

    nop

    nop

    const/16 v2, 0xc

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Lqpd;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1}, Lqrg;->H(Lrtm;)Lrtm;

    move-result-object v1

    nop

    nop

    nop

    nop

    new-instance v2, Lqvx;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, v1}, Lqvx;-><init>(Landroid/content/Context;Lrtm;)V

    sput-object v2, Lqvy;->e:Lqvx;

    nop

    nop

    invoke-static {}, Lqvy;->e()V

    :cond_4
    monitor-exit v0

    nop

    nop

    nop

    goto :goto_3

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

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    nop

    nop

    nop

    nop

    :cond_5
    :goto_3
    monitor-exit v0

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_6
    goto/32 :goto_9

    nop

    :goto_5
    sget-object v0, Lqvy;->e:Lqvx;

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

    :goto_6
    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x7

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Lqvy;->a:Ljava/lang/Object;

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

    nop

    :goto_11
    if-eqz p0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

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

    nop

    :goto_13
    const v1, 0x9

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final b()Ljava/lang/Object;
    .locals 12

    goto/32 :goto_35

    nop

    nop

    :goto_0
    goto/16 :goto_24

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lqvy;->k:Ljava/lang/Object;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_4

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    :try_start_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    const-string v6, "Unable to read GServices for: "

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    const-string v6, "GservicesLoader"

    nop

    nop

    nop

    invoke-static {v6, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_3
    move-object v1, v4

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v1, :cond_16

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1}, Lqvy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    :goto_7
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "Attempt to access PhenotypeFlag not via codegen. All new PhenotypeFlags must be accessed through codegen APIs. If you believe you are seeing this error by mistake, you can add your flag to the exemption list located at //java/com/google/android/libraries/phenotype/client/lockdown/flags.textproto. Send the addition CL to ph-reviews@. See go/phenotype-android-codegen for information about generated code. See go/ph-lockdown for more information about this error."

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    sget-object v0, Lqvy;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_a
    invoke-static {v1, v0}, Lrrf;->y(ZLjava/lang/Object;)V

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    if-nez v6, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    :try_start_1
    monitor-exit v7

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v0

    nop

    nop

    :cond_3
    iget-object v0, v2, Lqvx;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    sget v0, Lqwa;->a:I

    nop

    nop

    nop

    nop

    nop

    sget v0, Lpvb;->a:I

    nop

    nop

    throw v4

    nop

    :cond_4
    :goto_e
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_11
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lt v2, v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_5
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v2, Lqvy;->g:Lqwh;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_14
    throw v0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean v0, p0, Lqvy;->l:Z

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    iget-boolean v0, v2, Lqwh;->a:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    iget v2, p0, Lqvy;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lqvy;->c:Ljava/lang/String;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1c
    monitor-enter p0

    nop

    nop

    nop

    :try_start_3
    iget v2, p0, Lqvy;->j:I

    nop

    nop

    if-ge v2, v0, :cond_4

    nop

    nop

    sget-object v2, Lqvy;->e:Lqvx;

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Lrsa;->a:Lrsa;

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v2, Lqvx;->b:Lrtm;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lrss;

    nop

    nop

    invoke-virtual {v3}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    if-eqz v5, :cond_6

    nop

    nop

    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lqop;

    nop

    iget-object v6, p0, Lqvy;->b:Lqvw;

    nop

    iget-object v7, v6, Lqvw;->a:Landroid/net/Uri;

    nop

    iget-object v6, v6, Lqvw;->c:Ljava/lang/String;

    nop

    iget-object v8, p0, Lqvy;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v7, v6, v8}, Lqop;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    goto :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_6
    move-object v5, v4

    nop

    nop

    :goto_1d
    const/4 v6, 0x0

    nop

    if-eqz v2, :cond_7

    nop

    nop

    nop

    nop

    move v7, v1

    nop

    nop

    nop

    nop

    nop

    goto :goto_1e

    nop

    nop

    nop

    nop

    :cond_7
    move v7, v6

    nop

    nop

    nop

    :goto_1e
    const-string v8, "Must call PhenotypeFlagInitializer.maybeInit() first"

    nop

    invoke-static {v7, v8}, Lrrf;->y(ZLjava/lang/Object;)V

    iget-object v7, p0, Lqvy;->b:Lqvw;

    nop

    nop

    nop

    nop

    iget-object v7, v7, Lqvw;->a:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_3

    nop

    nop

    nop

    iget-object v8, v2, Lqvx;->a:Landroid/content/Context;

    nop

    sget-object v9, Lqvi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    const-string v9, "com.google.android.gms.phenotype"

    nop

    nop

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    nop

    if-nez v9, :cond_9

    nop

    nop

    const-string v1, "PhenotypeClientHelper"

    nop

    nop

    nop

    nop

    nop

    const-string v6, " is an unsupported authority. Only com.google.android.gms.phenotype authority is supported."

    nop

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_21

    nop

    nop

    :cond_9
    sget-object v7, Lqvi;->a:Lrss;

    nop

    nop

    invoke-virtual {v7}, Lrss;->h()Z

    move-result v7

    nop

    nop

    nop

    if-eqz v7, :cond_a

    nop

    sget-object v1, Lqvi;->a:Lrss;

    nop

    nop

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    goto/16 :goto_20

    nop

    :cond_a
    sget-object v7, Lqvi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v7

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sget-object v9, Lqvi;->a:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Lrss;->h()Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_b

    nop

    nop

    nop

    nop

    sget-object v1, Lqvi;->a:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    nop

    monitor-exit v7

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_20

    nop

    nop

    nop

    :cond_b
    const-string v9, "com.google.android.gms"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    nop

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    nop

    if-nez v9, :cond_c

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    nop

    nop

    const-string v10, "com.google.android.gms.phenotype"

    nop

    nop

    nop

    nop

    const/high16 v11, 0x10000000

    nop

    nop

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v9

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_d

    nop

    nop

    const-string v10, "com.google.android.gms"

    nop

    nop

    nop

    nop

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    nop

    nop

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    nop

    if-eqz v9, :cond_d

    nop

    nop

    :cond_c
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string v9, "com.google.android.gms"

    nop

    nop

    nop

    invoke-virtual {v8, v9, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    nop

    nop

    and-int/lit16 v8, v8, 0x81

    nop

    nop

    if-eqz v8, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto :goto_1f

    nop

    nop

    nop

    nop

    nop

    :catch_1
    :cond_d
    move v1, v6

    nop

    :goto_1f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v1

    nop

    nop

    nop

    sput-object v1, Lqvi;->a:Lrss;

    nop

    nop

    nop

    monitor-exit v7

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    sget-object v1, Lqvi;->a:Lrss;

    nop

    nop

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v1, :cond_8

    nop

    iget-object v1, p0, Lqvy;->b:Lqvw;

    nop

    iget-boolean v1, v1, Lqvw;->f:Z

    nop

    nop

    nop

    if-eqz v1, :cond_e

    nop

    nop

    iget-object v1, v2, Lqvx;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v2, Lqvx;->a:Landroid/content/Context;

    nop

    nop

    nop

    iget-object v7, p0, Lqvy;->b:Lqvw;

    nop

    iget-object v7, v7, Lqvw;->a:Landroid/net/Uri;

    nop

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-static {v6, v7}, Lqvj;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    invoke-static {v6}, Lqvj;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-static {v1, v6}, Lqvb;->c(Landroid/content/ContentResolver;Landroid/net/Uri;)Lqvb;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto :goto_21

    nop

    :cond_e
    iget-object v1, v2, Lqvx;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    nop

    iget-object v6, p0, Lqvy;->b:Lqvw;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v6, Lqvw;->a:Landroid/net/Uri;

    nop

    nop

    nop

    invoke-static {v1, v6}, Lqvb;->c(Landroid/content/ContentResolver;Landroid/net/Uri;)Lqvb;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz v1, :cond_12

    nop

    nop

    invoke-virtual {p0}, Lqvy;->d()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v1, Lqvb;->f:Ljava/util/Map;

    nop

    nop

    if-nez v7, :cond_10

    nop

    nop

    nop

    iget-object v7, v1, Lqvb;->e:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v7

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v8, v1, Lqvb;->f:Ljava/util/Map;

    nop

    nop

    nop

    if-nez v8, :cond_f

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v8

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    new-instance v9, Lquz;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v9, v1}, Lquz;-><init>(Lqvb;)V

    invoke-static {v9}, Lqrf;->e(Lqvd;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    check-cast v9, Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_22
    :try_start_a
    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_23
    goto :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_24
    :try_start_b
    iput-object v9, v1, Lqvb;->f:Ljava/util/Map;

    nop

    nop

    nop

    move-object v8, v9

    nop

    nop

    nop

    goto :goto_26

    nop

    nop

    :goto_25
    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    nop

    nop

    nop

    nop

    :cond_f
    :goto_26
    monitor-exit v7

    nop

    nop

    nop

    nop

    move-object v7, v8

    nop

    nop

    nop

    nop

    goto :goto_27

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    monitor-exit v7

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_10
    :goto_27
    if-nez v7, :cond_11

    nop

    nop

    nop

    nop

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    nop

    :cond_11
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    nop

    if-eqz v1, :cond_12

    nop

    nop

    invoke-virtual {p0, v1}, Lqvy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto :goto_28

    nop

    nop

    nop

    nop

    :cond_12
    move-object v1, v4

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v1, :cond_18

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lqvy;->b:Lqvw;

    nop

    nop

    nop

    iget-boolean v1, v1, Lqvw;->d:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_16

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v2, Lqvx;->a:Landroid/content/Context;

    nop

    nop

    nop

    const-class v2, Lqvg;

    nop

    nop

    nop

    monitor-enter v2

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    sget-object v6, Lqvg;->a:Lqvg;

    nop

    nop

    nop

    if-nez v6, :cond_14

    nop

    const-string v6, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    nop

    nop

    nop

    nop

    invoke-static {v1, v6}, Ldsw;->ab(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-nez v6, :cond_13

    nop

    nop

    new-instance v6, Lqvg;

    nop

    nop

    nop

    invoke-direct {v6, v1}, Lqvg;-><init>(Landroid/content/Context;)V

    goto :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_13
    new-instance v6, Lqvg;

    nop

    nop

    nop

    nop

    invoke-direct {v6}, Lqvg;-><init>()V

    :goto_29
    sput-object v6, Lqvg;->a:Lqvg;

    nop

    nop

    :cond_14
    sget-object v1, Lqvg;->a:Lqvg;

    nop

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    iget-object v2, p0, Lqvy;->b:Lqvw;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v6, v2, Lqvw;->d:Z

    nop

    if-eqz v6, :cond_15

    nop

    move-object v2, v4

    nop

    nop

    nop

    nop

    goto :goto_2a

    nop

    nop

    :cond_15
    iget-object v2, v2, Lqvw;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-direct {p0, v2}, Lqvy;->d5484163cd8d335e6b17663474ff5f2bm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    :goto_2a
    iget-object v6, v1, Lqvg;->b:Ljava/lang/Object;

    nop

    nop

    if-eqz v6, :cond_0

    nop

    nop

    nop

    nop

    check-cast v6, Landroid/content/Context;

    nop

    nop

    invoke-static {v6}, Lpvb;->c(Landroid/content/Context;)Z

    move-result v6

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_2c
    :try_start_f
    new-instance v6, Lqve;

    nop

    invoke-direct {v6, v1, v2}, Lqve;-><init>(Lqvg;Ljava/lang/String;)V

    invoke-static {v6}, Lqrf;->e(Lqvd;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2d
    goto :goto_2e

    nop

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_10
    monitor-exit v2

    nop
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    throw v0

    nop

    nop

    nop

    nop

    :cond_16
    :goto_2e
    if-nez v4, :cond_17

    nop

    nop

    nop

    invoke-virtual {p0}, Lqvy;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto :goto_2f

    nop

    nop

    :cond_17
    move-object v1, v4

    nop

    nop

    nop

    nop

    :cond_18
    :goto_2f
    invoke-virtual {v3}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1a

    nop

    if-nez v5, :cond_19

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lqvy;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto :goto_30

    nop

    :cond_19
    invoke-virtual {p0, v5}, Lqvy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    :goto_30
    iput-object v1, p0, Lqvy;->k:Ljava/lang/Object;

    nop

    nop

    nop

    iput v0, p0, Lqvy;->j:I

    nop

    nop

    nop

    nop
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    return-object p0

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    nop

    :catch_2
    move-exception v9

    nop

    nop

    nop

    nop

    nop

    :try_start_12
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    sget-object v10, Lcom/google/android/apps/camera/legacy/lightcycle/panorama/RpD/WBNWZfrn;->jual:Ljava/lang/String;

    nop

    const-string v11, "Unable to query ContentProvider, using default values"

    nop

    nop

    nop

    invoke-static {v10, v11, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v9

    nop
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_35
    const v0, 0x12

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_36
    if-lez v0, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1b
    goto/32 :goto_5

    nop

    :goto_37
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lqvy;->m:Z

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    iget-object v0, p0, Lqvy;->i:Ljava/lang/Object;

    nop

    nop

    invoke-virtual {p0, v0}, Lqvy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lqvy;->i:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Lqvy;->m:Z

    nop

    nop

    nop

    nop

    nop

    :cond_1
    monitor-exit p0

    nop

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lqvy;->i:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    throw v0

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    iget-boolean v0, p0, Lqvy;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Lqvw;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Lqvy;->d5484163cd8d335e6b17663474ff5f2bm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

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
    iget-object v0, p0, Lqvy;->b:Lqvw;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
