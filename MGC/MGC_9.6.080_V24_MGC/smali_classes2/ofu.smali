.class public final Lofu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static c:Lofu;


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method private final 86d5c0c77e4f72baec1b0d5a6810921fm()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, p0}, Lpdj;->c(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lofu;->b:Ljava/lang/Object;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Lofu;->a:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {v0}, Lwu;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Lofu;->a:I

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

    :goto_3
    new-instance v0, Lwu;

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

    :goto_4
    iput-object v0, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lofu;->a:I

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
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput v0, p0, Lofu;->a:I

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
    const/4 v0, 0x0

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

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public constructor <init>(Loyd;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Lpdf;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    const-string v0, "AliveLock"

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Lofu;->a:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-interface {p1, v0}, Lpdf;->b(Ljava/lang/String;)Lpdj;

    move-result-object p1

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

.method public constructor <init>([B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    new-array p1, p1, [J

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

    :goto_2
    iput-object p1, p0, Lofu;->b:Ljava/lang/Object;

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

    :goto_3
    const/16 p1, 0x80

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>([B[B)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const/16 p1, 0x100

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lofu;->b:Ljava/lang/Object;

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

    :goto_2
    new-array p1, p1, [Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>([C)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

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

    nop
.end method

.method static declared-synchronized b()Lofu;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    const-class v0, Lofu;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v1

    nop

    nop

    :catchall_0
    move-exception v1

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

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    monitor-enter v0

    nop

    nop

    nop

    :try_start_1
    sget-object v1, Lofu;->c:Lofu;

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    new-instance v1, Lofu;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Lofu;-><init>()V

    sput-object v1, Lofu;->c:Lofu;

    nop

    nop

    nop

    nop

    :cond_0
    sget-object v1, Lofu;->c:Lofu;

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    throw v1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x10

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

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
    const v0, 0x1f

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop
.end method


# virtual methods
.method final declared-synchronized a()Lofk;
    .locals 5

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

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

    nop

    :goto_2
    return-object v0

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    :goto_4
    goto/32 :goto_7

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

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    nop

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v0, p0, Lofu;->a:I

    nop

    nop

    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Loft;

    nop

    nop

    nop

    nop

    const-string v3, "UNKNOWN"

    nop

    nop

    nop

    nop

    nop

    const/16 v4, 0x3ea

    nop

    invoke-direct {v2, v3, v4, v0}, Loft;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    nop

    nop

    iput v0, p0, Lofu;->a:I

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v0, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Lofk;

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Lofk;-><init>(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    const v1, 0x7

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

.method final declared-synchronized c(Loft;)V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    :goto_2
    goto/32 :goto_0

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

    :cond_0
    :try_start_0
    iget-object v1, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    check-cast v2, Lyo;

    nop

    nop

    nop

    nop

    nop

    iget v2, v2, Lyo;->d:I

    nop

    nop

    nop

    const/16 v3, 0x64

    nop

    nop

    nop

    nop

    nop

    if-lt v2, v3, :cond_1

    nop

    nop

    nop

    iget v0, p0, Lofu;->a:I

    nop

    nop

    nop

    nop

    nop

    iget p1, p1, Loft;->c:I

    nop

    nop

    nop

    invoke-static {v0, p1}, Lrrf;->ag(II)I

    move-result p1

    nop

    iput p1, p0, Lofu;->a:I

    nop

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_1
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    const v1, 0x2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
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

    :goto_b
    monitor-exit p0

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

    :goto_c
    const v0, 0x2

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

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

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    new-instance v0, Lduy;

    nop

    iget-object v1, p1, Loft;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    iget v2, p1, Loft;->b:I

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    invoke-direct {v0, v1, v2}, Lduy;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lofu;->b:Ljava/lang/Object;

    nop

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Loft;

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

    iget v0, v1, Loft;->c:I

    nop

    iget p1, p1, Loft;->c:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, p1}, Lrrf;->ag(II)I

    move-result p1

    nop

    nop

    nop

    iput p1, v1, Loft;->c:I

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d(J)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget v0, p0, Lofu;->a:I

    nop

    nop

    nop

    iget-object v1, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, [J

    nop

    nop

    nop

    nop

    nop

    aput-wide p1, v1, v0

    nop

    nop

    nop

    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    rem-int/lit16 v0, v0, 0x80

    nop

    iput v0, p0, Lofu;->a:I

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    goto/32 :goto_3

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop
.end method

.method public final declared-synchronized e()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw v0

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget v0, p0, Lofu;->a:I

    nop

    add-int/lit8 v0, v0, 0x1

    nop

    iput v0, p0, Lofu;->a:I

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lofu;->86d5c0c77e4f72baec1b0d5a6810921fm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final declared-synchronized f()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget v0, p0, Lofu;->a:I

    nop

    nop

    nop

    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    iput v0, p0, Lofu;->a:I

    nop

    nop

    nop

    invoke-direct {p0}, Lofu;->86d5c0c77e4f72baec1b0d5a6810921fm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final declared-synchronized g()Z
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

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

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

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

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget v0, p0, Lofu;->a:I

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-gtz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop
.end method

.method public final declared-synchronized h(J)Lsvr;
    .locals 19

    goto/32 :goto_a

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    :goto_2
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

    :goto_3
    move-object/from16 v1, p0

    nop

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

    :goto_4
    if-lez v0, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_5
    monitor-exit p0

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

    :goto_6
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

    nop

    nop

    :goto_7
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_15

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    const v0, 0x6

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    add-int/2addr v14, v4

    nop

    nop

    :try_start_0
    new-array v0, v14, [I

    nop

    iget v2, v1, Lofu;->a:I

    nop

    nop

    nop

    nop

    if-gtz v2, :cond_3

    nop

    nop

    iget-object v2, v1, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v2, [J

    nop

    invoke-static {v2}, Lrkm;->aX([J)J

    move-result-wide v8

    nop

    nop

    nop

    nop

    cmp-long v2, v8, v6

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    goto :goto_c

    nop

    :cond_2
    move-wide v13, v6

    nop

    goto/16 :goto_13

    nop

    nop

    nop

    nop

    :cond_3
    :goto_c
    iget v2, v1, Lofu;->a:I

    nop

    nop

    nop

    nop

    if-lez v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v2, v4

    nop

    nop

    goto :goto_d

    nop

    nop

    :cond_4
    const/16 v2, 0x7f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v8, v1, Lofu;->b:Ljava/lang/Object;

    nop

    move-object v9, v8

    nop

    check-cast v9, [J

    nop

    nop

    nop

    nop

    nop

    aget-wide v9, v9, v2

    nop

    nop

    sub-long v11, v9, p1

    nop

    nop

    nop

    nop

    nop

    check-cast v8, [J

    nop

    invoke-static {v8}, Lrkm;->aX([J)J

    move-result-wide v13

    nop

    nop

    nop

    nop

    cmp-long v2, v13, v6

    nop

    nop

    nop

    if-eqz v2, :cond_5

    nop

    iget v2, v1, Lofu;->a:I

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    nop

    :cond_5
    move v2, v5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v8, v1, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v8, [J

    nop

    nop

    invoke-static {v8}, Lrkm;->aX([J)J

    move-result-wide v13

    nop

    nop

    nop

    cmp-long v8, v13, v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_6

    nop

    nop

    move v8, v3

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    :cond_6
    iget v8, v1, Lofu;->a:I

    nop

    :goto_f
    move v15, v4

    nop

    move-wide v13, v6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-ge v5, v8, :cond_9

    nop

    add-int v4, v2, v5

    nop

    rem-int/2addr v4, v3

    nop

    nop

    nop

    nop

    iget-object v3, v1, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v3, [J

    nop

    nop

    nop

    nop

    nop

    aget-wide v3, v3, v4

    nop

    nop

    cmp-long v17, v11, v3

    nop

    if-gtz v17, :cond_8

    nop

    nop

    nop

    nop

    nop

    cmp-long v17, v3, v9

    nop

    nop

    if-gtz v17, :cond_8

    nop

    move/from16 p1, v2

    nop

    const/4 v2, -0x1

    nop

    if-ne v15, v2, :cond_7

    nop

    nop

    nop

    move v15, v2

    nop

    nop

    nop

    move-wide v13, v3

    nop

    nop

    nop

    goto :goto_11

    nop

    :cond_7
    sub-long v6, v3, v6

    nop

    nop

    nop

    nop

    const-wide/32 v17, 0xf4240

    nop

    div-long v6, v6, v17

    nop

    long-to-int v6, v6

    nop

    nop

    aput v6, v0, v15

    nop

    :goto_11
    add-int/lit8 v15, v15, 0x1

    nop

    move-wide v6, v3

    nop

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    :cond_8
    move/from16 p1, v2

    nop

    nop

    nop

    nop

    nop

    const/4 v2, -0x1

    nop

    nop

    :goto_12
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    move v4, v2

    nop

    const/16 v3, 0x80

    nop

    nop

    nop

    move/from16 v2, p1

    nop

    nop

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    :cond_9
    :goto_13
    new-instance v2, Lsvr;

    nop

    nop

    sget-wide v3, Luek;->a:J

    nop

    nop

    nop

    nop

    nop

    sub-long/2addr v6, v13

    nop

    sget-object v3, Luem;->a:Luem;

    nop

    invoke-static {v6, v7, v3}, Luch;->i(JLuem;)J

    move-result-wide v3

    nop

    nop

    nop

    invoke-direct {v2, v3, v4, v0}, Lsvr;-><init>(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_14
    throw v0

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget v0, v1, Lofu;->a:I

    nop

    nop

    nop

    const/16 v3, 0x80

    nop

    nop

    nop

    nop

    const/4 v4, -0x1

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    const-wide/16 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    if-gtz v0, :cond_b

    nop

    nop

    nop

    iget-object v0, v1, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v0, [J

    nop

    nop

    invoke-static {v0}, Lrkm;->aX([J)J

    move-result-wide v8

    nop

    nop

    cmp-long v0, v8, v6

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_a

    nop

    nop

    nop

    goto :goto_17

    nop

    nop

    nop

    nop

    :cond_a
    move v14, v5

    nop

    goto/16 :goto_1c

    nop

    :cond_b
    :goto_17
    iget v0, v1, Lofu;->a:I

    nop

    if-lez v0, :cond_c

    nop

    nop

    nop

    add-int/2addr v0, v4

    nop

    nop

    nop

    nop

    nop

    goto :goto_18

    nop

    nop

    :cond_c
    const/16 v0, 0x7f

    nop

    nop

    nop

    :goto_18
    iget-object v8, v1, Lofu;->b:Ljava/lang/Object;

    nop

    move-object v9, v8

    nop

    check-cast v9, [J

    nop

    nop

    nop

    nop

    nop

    aget-wide v9, v9, v0

    nop

    nop

    nop

    nop

    nop

    sub-long v11, v9, p1

    nop

    nop

    nop

    nop

    nop

    check-cast v8, [J

    nop

    nop

    nop

    invoke-static {v8}, Lrkm;->aX([J)J

    move-result-wide v13

    nop

    cmp-long v0, v13, v6

    nop

    nop

    if-eqz v0, :cond_d

    nop

    nop

    nop

    nop

    iget v0, v1, Lofu;->a:I

    nop

    nop

    goto :goto_19

    nop

    :cond_d
    move v0, v5

    nop

    :goto_19
    iget-object v8, v1, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v8, [J

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8}, Lrkm;->aX([J)J

    move-result-wide v13

    nop

    nop

    cmp-long v8, v13, v6

    nop

    nop

    nop

    if-eqz v8, :cond_e

    nop

    nop

    nop

    move v8, v3

    nop

    goto :goto_1a

    nop

    nop

    nop

    nop

    :cond_e
    iget v8, v1, Lofu;->a:I

    nop

    :goto_1a
    move v13, v5

    nop

    move v14, v13

    nop

    :goto_1b
    if-ge v13, v8, :cond_10

    nop

    nop

    nop

    nop

    add-int v15, v0, v13

    nop

    rem-int/2addr v15, v3

    nop

    nop

    nop

    iget-object v2, v1, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v2, [J

    nop

    aget-wide v16, v2, v15

    nop

    nop

    cmp-long v2, v11, v16

    nop

    nop

    nop

    if-gtz v2, :cond_f

    nop

    nop

    nop

    nop

    cmp-long v2, v16, v9

    nop

    nop

    if-gtz v2, :cond_f

    nop

    nop

    nop

    nop

    add-int/lit8 v14, v14, 0x1

    nop

    :cond_f
    add-int/lit8 v13, v13, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_1b

    nop

    nop

    :cond_10
    :goto_1c
    const/4 v0, 0x2

    nop

    if-ge v14, v0, :cond_0

    nop

    new-instance v0, Lsvr;

    nop

    nop

    sget-wide v2, Luek;->a:J

    nop

    nop

    new-array v2, v5, [I

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v6, v7, v2}, Lsvr;-><init>(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_1d
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-object v2

    nop

    nop

    :catchall_0
    move-exception v0

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

    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method public final i()C
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    if-lt p0, v1, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x19

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

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    iget p0, p0, Lofu;->a:I

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

    :goto_11
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j(I)C
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    if-lt p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    check-cast p0, Ljava/lang/String;

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

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k(Ljava/lang/String;I)I
    .locals 5

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lofu;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1
    const/16 v4, 0x30

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-ge v0, v4, :cond_0

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

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4
    iget v3, p0, Lofu;->a:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    return v2

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p2, 0x5

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

    nop

    :goto_8
    mul-int/lit8 v2, v2, 0xa

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

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    add-int/2addr v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_1c

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput v3, p0, Lofu;->a:I

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

    :goto_f
    if-le v0, v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    throw p0

    nop

    :goto_11
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_12
    new-instance p0, Lexp;

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

    :goto_13
    invoke-direct {p0, p1, p2}, Lexp;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_15
    if-nez v3, :cond_2

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

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_16
    move v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v3}, Lofu;->j(I)C

    move-result v3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_18
    if-ltz v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/16 v4, 0x39

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1b
    move v3, v2

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-gt v2, p2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1f
    move v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, v0}, Lofu;->j(I)C

    move-result v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_22
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_23
    return p2

    nop

    :goto_24
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_25
    add-int/lit8 v0, v0, -0x30

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    return v1

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_5

    nop

    nop

    :goto_28
    if-lez v0, :cond_5

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    :goto_29
    const v1, 0x1e

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move v2, v1

    nop

    nop

    goto/32 :goto_1b

    nop

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

    goto/32 :goto_28

    nop

    nop

    nop

    nop
.end method

.method public final l()I
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    check-cast p0, Ljava/lang/String;

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
    return p0

    nop

    :goto_3
    iget-object p0, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final m()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lofu;->a:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Lofu;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method

.method public final n()Z
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    if-lt p0, v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Lofu;->a:I

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

    :goto_3
    const/4 p0, 0x1

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

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

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

    :goto_5
    iget-object v0, p0, Lofu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop
.end method

.method public final o()Ljava/lang/Object;
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lofu;->a:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    check-cast v2, [Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    const/4 v1, 0x0

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

    :goto_4
    add-int/lit8 v0, v0, -0x1

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

    :goto_5
    if-gtz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_6
    aget-object v3, v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    return-object v3

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    iget v0, p0, Lofu;->a:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    iget-object v2, p0, Lofu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_f
    aput-object v1, v2, v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    return-object v1

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    const v1, 0x2

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

    nop

    :goto_14
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method

.method public final p(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x9

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    iput v0, p0, Lofu;->a:I

    nop

    nop

    nop

    :goto_3
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

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    if-lt v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    :goto_8
    aput-object p1, v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_11

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v1, [Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v0, p0, Lofu;->a:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    const v1, 0x7

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v1, 0x100

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final q()V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lofu;->b:Ljava/lang/Object;

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

    :goto_1
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    iget p0, p0, Lofu;->a:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    check-cast v0, Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    check-cast v0, Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final r()V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    aput-object p0, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lofu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v2, v3, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

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

    :goto_9
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v2, 0xf0

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

    :goto_b
    const/4 v2, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_14

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    const/4 v3, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    const v1, 0x1c

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    new-array v0, v0, [Ljava/lang/Object;

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

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    :goto_15
    check-cast p0, Landroid/widget/ImageView;

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final s(Landroid/util/AttributeSet;I)V
    .locals 11

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v3, v2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1
    move-object v7, p1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    iget-object v2, p0, Lofu;->b:Ljava/lang/Object;

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
    sget-object v6, Lew;->f:[I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->x()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static/range {v4 .. v10}, Ldwb;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_0
    iget-object p1, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    check-cast p1, Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    const/4 p2, -0x1

    nop

    nop

    if-nez p1, :cond_0

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, p2}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result v1

    nop

    if-eq v1, p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    check-cast p1, Landroid/widget/ImageView;

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    invoke-static {p1, v1}, Le;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    iget-object v1, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, Landroid/widget/ImageView;

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_1

    nop

    nop

    nop

    invoke-static {p1}, Liy;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    iget-object v1, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientDelegate;->s(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    nop

    check-cast v1, Landroid/widget/ImageView;

    nop

    nop

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    const/4 p1, 0x3

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

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

    iget-object p0, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-virtual {v0, p1, p2}, Landroidx/wear/ambient/AmbientDelegate;->o(II)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, p2}, La;->n(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p0, Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x18

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

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

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, p1, v1, p2, v2}, Landroidx/wear/ambient/AmbientDelegate;->C(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e
    move v9, p2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    throw p0

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v1, Lew;->f:[I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    check-cast v4, Landroid/view/View;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_14
    move-object v4, v2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    iget-object v1, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

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

    :goto_17
    const/4 v10, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->x()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_4
    goto/32 :goto_7

    nop

    :goto_1b
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1c
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1d
    move-object v8, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v3, Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1f
    check-cast v8, Landroid/content/res/TypedArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

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
.end method

.method public final t(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput p1, p0, Lofu;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final u(I)V
    .locals 1

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p1}, Le;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    check-cast v0, Landroid/widget/ImageView;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-static {p1}, Liy;->b(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lofu;->r()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lofu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    if-nez p1, :cond_0

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

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    check-cast p1, Landroid/widget/ImageView;

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

    nop

    :goto_10
    if-nez p1, :cond_1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v0, Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final v()Z
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    check-cast p0, Landroid/widget/ImageView;

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

    :goto_4
    if-nez p0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lofu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    instance-of p0, p0, Landroid/graphics/drawable/RippleDrawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
