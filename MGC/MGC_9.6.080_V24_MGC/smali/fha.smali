.class public final Lfha;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lfht;

.field private static final b:Ljava/lang/String;

.field private static c:Lfgz;

.field private static d:Lfgz;

.field private static e:I

.field private static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_6

    nop

    nop

    :goto_0
    goto :goto_5

    nop

    :catch_0
    move-exception v1

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

    :goto_1
    const-string v1, "CamAgntFact"

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

    :goto_2
    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const-string v1, "camera2.portability.force_api"

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    nop

    const-string v3, "get"

    nop

    nop

    nop

    const-class v4, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    const-class v5, Ljava/lang/String;

    nop

    nop

    nop

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    nop

    nop

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    nop

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Ljava/lang/String;

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-static {v2, v3, v1}, Lfhu;->b(Lfht;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    sput-object v0, Lfha;->a:Lfht;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sput-object v0, Lfha;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lfht;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    const-string v3, "Exception while getting system property: "

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
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

    :goto_e
    sget-object v2, Lfhv;->a:Lfht;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, v1}, Lfht;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    :goto_15
    const-string v0, "0"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v0, Lfhv;->a:Lfht;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lfgz;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x2

    nop

    goto/32 :goto_c

    nop

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

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_3
    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    const-class v0, Lfha;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
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

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_1
    sget-object v1, Lfha;->d:Lfgz;

    nop

    if-nez v1, :cond_2

    nop

    nop

    new-instance v1, Lffy;

    nop

    nop

    nop

    invoke-direct {v1, p0}, Lffy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lfha;->d:Lfgz;

    nop

    nop

    nop

    nop

    nop

    sput v3, Lfha;->f:I

    nop

    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_2
    sget p0, Lfha;->f:I

    nop

    nop

    nop

    nop

    nop

    add-int/2addr p0, v3

    nop

    nop

    nop

    sput p0, Lfha;->f:I

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object p0, Lfha;->d:Lfgz;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    :try_start_2
    invoke-static {}, Lfha;->c()I

    move-result v1

    nop

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_1

    nop

    sget-object p0, Lfha;->c:Lfgz;

    nop

    nop

    nop

    nop

    nop

    if-nez p0, :cond_3

    nop

    nop

    nop

    new-instance p0, Lfgm;

    nop

    invoke-direct {p0}, Lfgm;-><init>()V

    sput-object p0, Lfha;->c:Lfgz;

    nop

    sput v3, Lfha;->e:I

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    :cond_3
    sget p0, Lfha;->e:I

    nop

    nop

    nop

    add-int/2addr p0, v3

    nop

    sput p0, Lfha;->e:I

    nop

    nop

    :goto_b
    sget-object p0, Lfha;->c:Lfgz;

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_c
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    throw p0

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
    add-int v0, v0, v1

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
.end method

.method public static declared-synchronized b()V
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v1

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

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    monitor-exit v0

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

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {}, Lfha;->c()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    if-ne v1, v2, :cond_1

    nop

    sget v1, Lfha;->e:I

    nop

    nop

    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    nop

    sput v1, Lfha;->e:I

    nop

    if-nez v1, :cond_0

    nop

    sget-object v1, Lfha;->c:Lfgz;

    nop

    if-eqz v1, :cond_0

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lfgz;->g(Z)V

    move-object v4, v1

    nop

    nop

    check-cast v4, Lfgm;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lfgm;->f:Lfhp;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v4, Lfhp;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v5

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    iput-object v2, v4, Lfhp;->b:Ljava/lang/Boolean;

    nop

    nop

    monitor-exit v5

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v2, v4, Lfhp;->a:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    monitor-enter v2

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v4, v4, Lfhp;->a:Ljava/util/Queue;

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    check-cast v1, Lfgm;

    nop

    nop

    nop

    iget-object v1, v1, Lfgm;->e:Lfho;

    nop

    nop

    invoke-virtual {v1}, Lfho;->b()V

    sput-object v3, Lfha;->c:Lfgz;

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x17

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

    :goto_a
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :catchall_1
    move-exception v1

    nop

    nop

    nop

    nop

    :try_start_6
    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    :try_start_8
    monitor-exit v5

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1

    nop

    nop

    nop

    :cond_1
    sget v1, Lfha;->f:I

    nop

    add-int/lit8 v1, v1, -0x1

    nop

    nop

    sput v1, Lfha;->f:I

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

    sget-object v1, Lfha;->d:Lfgz;

    nop

    if-eqz v1, :cond_0

    nop

    nop

    sput-object v3, Lfha;->d:Lfgz;

    nop

    nop

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    const-class v0, Lfha;

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

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    :goto_e
    const v1, 0x2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    monitor-exit v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    throw v1

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static c()I
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "1"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

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

    nop

    :goto_5
    sget-object v0, Lfha;->a:Lfht;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_7
    sget-object v0, Lfha;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    return v2

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    :goto_b
    sget-object v0, Lfha;->a:Lfht;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    :goto_e
    const/4 v0, 0x3

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    invoke-static {v0}, Lfhu;->e(Lfht;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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
    const v0, 0x2

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

    :goto_12
    return v2

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x2

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

    :goto_15
    const-string v1, "2"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_18
    invoke-static {v0}, Lfhu;->e(Lfht;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

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

    :goto_1a
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop
.end method
