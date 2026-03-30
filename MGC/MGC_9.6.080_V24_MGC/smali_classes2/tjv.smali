.class public Ltjv;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ltjv;

.field private static volatile b:Z

.field private static volatile c:Ltjv;


# instance fields
.field private final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_a

    nop

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

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_1
    const v1, 0x15

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

    :goto_2
    sput-object v0, Ltjv;->a:Ltjv;

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

    nop

    :goto_3
    goto/32 :goto_c

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

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

    :goto_8
    new-instance v0, Ltjv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Ltjv;-><init>([B)V

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Ltjv;->d:Ljava/util/Map;

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
    return-void

    nop

    nop

    nop

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
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ltjv;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ltjv;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

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
    sget-object v0, Ltjv;->a:Ltjv;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ltjv;->d:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p1, Ltjv;->d:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eq p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

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

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

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
    iput-object p1, p0, Ltjv;->d:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method public static a()Ltjv;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Ltjv;->c:Ltjv;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    const-class v0, Ltjv;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_8
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    sget-object v1, Ltjv;->c:Ltjv;

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-object v1

    nop

    nop

    :cond_1
    sget-object v1, Ltlz;->a:Ltlz;

    nop

    nop

    nop

    nop

    nop

    const-class v1, Ltjv;

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ltka;->b(Ljava/lang/Class;)Ltjv;

    move-result-object v1

    nop

    sput-object v1, Ltjv;->c:Ltjv;

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-object v1

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    monitor-exit v0

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

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    throw v1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public static b()Ltjv;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ltjv;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ltjv;

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
    sget-object v0, Ltlz;->a:Ltlz;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop
.end method


# virtual methods
.method public c(Ltlq;I)Ltlk;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance v0, Ltju;

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

    :goto_1
    check-cast p0, Ltlk;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p1, p2}, Ltju;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Ltjv;->d:Ljava/util/Map;

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

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Ltlk;)V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v1, Ltkf;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iget v1, v1, Ltkf;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    invoke-direct {v0, v2, v1}, Ltju;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Ltjv;->d:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p1, Ltlk;->c:Ljava/lang/Object;

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

    :goto_a
    iget-object v2, p1, Ltlk;->d:Ljava/lang/Object;

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

    nop

    :goto_b
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1c

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ltju;

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

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method
