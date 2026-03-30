.class public final Lolg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static b:Lolg;

.field private static final c:Lolh;


# instance fields
.field public a:Lolh;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    const v0, 0xe

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    move-object v0, v6

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    new-instance v6, Lolh;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

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

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct/range {v0 .. v5}, Lolh;-><init>(IZZII)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    :goto_11
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    sput-object v6, Lolg;->c:Lolh;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static declared-synchronized a()Lolg;
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const-class v0, Lolg;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v1, Lolg;->b:Lolg;

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    new-instance v1, Lolg;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Lolg;-><init>()V

    sput-object v1, Lolg;->b:Lolg;

    nop

    nop

    nop

    nop

    :cond_0
    sget-object v1, Lolg;->b:Lolg;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

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

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object v1

    nop

    :catchall_0
    move-exception v1

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    throw v1

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized b(Lolh;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    const v0, 0x4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    :try_start_0
    iget-object v0, p0, Lolg;->a:Lolh;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    iget v1, p1, Lolh;->a:I

    nop

    nop

    nop

    iget v0, v0, Lolh;->a:I

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_7
    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x14

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lt v0, v1, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :cond_2
    :goto_d
    :try_start_1
    iput-object p1, p0, Lolg;->a:Lolh;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    throw p1

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_f

    nop

    nop

    :goto_12
    if-eqz p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_3
    sget-object p1, Lolg;->c:Lolh;

    nop

    nop

    nop

    iput-object p1, p0, Lolg;->a:Lolh;

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_15

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    :goto_15
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method
