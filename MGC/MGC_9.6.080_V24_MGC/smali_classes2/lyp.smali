.class public abstract Llyp;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic c:I

.field private static final d:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;

.field final b:Llyo;


# direct methods
.method private final declared-synchronized 23ce148e54b083367f51e25c7971761em()V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :cond_0
    :try_start_0
    iget-object v0, p0, Llyp;->a:Ljava/lang/String;

    nop

    nop

    const-string v1, "Duplicate setting key for: "

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v0, Llyp;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Llyp;->a:Ljava/lang/String;

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_0

    nop

    nop

    iget-object v1, p0, Llyp;->a:Ljava/lang/String;

    nop

    nop

    nop

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const v1, 0x10

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

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

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
    goto/32 :goto_5

    nop

    :goto_8
    goto/32 :goto_1

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

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Llyp;->d:Ljava/util/Map;

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

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {v0, p2}, Llyn;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Llyp;-><init>(Ljava/lang/String;Llyo;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Llyn;

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

.method public constructor <init>(Ljava/lang/String;Llyo;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Llyp;->b:Llyo;

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
    iput-object p1, p0, Llyp;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p0}, Llyp;->23ce148e54b083367f51e25c7971761em()V

    goto/32 :goto_4

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
.end method

.method public static a(Ljava/lang/String;)Llyp;
    .locals 1

    goto/32 :goto_1

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
    sget-object v0, Llyp;->d:Ljava/util/Map;

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
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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
    check-cast p0, Llyp;

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public abstract b(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final d(Lhoh;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Llyo;->a(Lhoh;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Llyp;->b:Llyo;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
