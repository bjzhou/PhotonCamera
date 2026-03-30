.class public final Ltum;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltur;
.implements Ltud;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private volatile b:Ltur;

.field private volatile c:Ljava/lang/Object;


# direct methods
.method private final declared-synchronized 7ecc92917e9c4556cc19f457ddc41af8m()Ljava/lang/Object;
    .locals 6

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_f

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

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ltum;->c:Ljava/lang/Object;

    nop

    sget-object v1, Ltum;->a:Ljava/lang/Object;

    nop

    nop

    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    iget-object v0, p0, Ltum;->b:Ltur;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ltur;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    iget-object v2, p0, Ltum;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    if-eq v2, v1, :cond_2

    nop

    if-ne v2, v0, :cond_1

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    const-string v1, "Scoped provider was invoked recursively returning different results: "

    nop

    nop

    nop

    nop

    const-string v3, " & "

    nop

    const-string v4, ". This is likely due to a circular dependency."

    nop

    nop

    new-instance v5, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    invoke-static {v0, v2, v1, v3, v4}, La;->bo(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_6
    iput-object v0, p0, Ltum;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-object v1, p0, Ltum;->b:Ltur;

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    :goto_9
    throw v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    const v1, 0xe

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

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object v0

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

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

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

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/lang/Object;

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
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Ltum;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>(Ltur;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Ltum;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ltum;->b:Ltur;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    sget-object v0, Ltum;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public static b(Ltur;)Ltud;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    instance-of v0, p0, Ltud;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p0}, Ltum;-><init>(Ltur;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Ltud;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

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

    :goto_5
    return-object v0

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_7
    new-instance v0, Ltum;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static c(Ltxm;)Ltud;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {p0}, Ltum;->b(Ltur;)Ltud;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    invoke-static {p0}, Lrgw;->aq(Ltxm;)Ltur;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static d(Ltur;)Ltur;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Ltum;-><init>(Ltur;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ltum;

    nop

    nop

    goto/32 :goto_2

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

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    instance-of v0, p0, Ltum;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static e(Ltxm;)Ltxm;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {p0}, Ltum;->d(Ltur;)Ltur;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    invoke-static {p0}, Lrgw;->aq(Ltxm;)Ltur;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

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

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x14

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

    :goto_5
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

    :goto_6
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    :goto_7
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ltum;->7ecc92917e9c4556cc19f457ddc41af8m()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_d

    nop

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

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Ltum;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

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

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v1, Ltum;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
