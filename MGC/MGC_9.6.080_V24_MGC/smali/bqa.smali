.class public final Lbqa;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lufs;
.implements Lbpy;


# static fields
.field public static final a:Luad;


# instance fields
.field private final b:Luad;

.field private final c:Luad;

.field private volatile d:Luad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lbld;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lbld;

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

    :goto_3
    sput-object v0, Lbqa;->a:Luad;

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
.end method

.method public constructor <init>(Luad;Luad;)V
    .locals 0

    goto/32 :goto_3

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
    iput-object p1, p0, Lbqa;->b:Luad;

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
    iput-object p2, p0, Lbqa;->c:Luad;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 4

    goto/32 :goto_7

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

    nop

    nop

    goto/32 :goto_5

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

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    invoke-static {v2, p0, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v2, 0x187

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final b()Luad;
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x3

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

    :goto_d
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lbqa;->d:Luad;

    nop

    if-nez v0, :cond_2

    nop

    nop

    iget-object v0, p0, Lbqa;->b:Luad;

    nop

    nop

    sget-object v1, Lugy;->c:Ltzz;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Luad;->get(Luac;)Luab;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lugy;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Luha;

    nop

    nop

    invoke-direct {v2, v1}, Luha;-><init>(Lugy;)V

    invoke-interface {v0, v2}, Luad;->plus(Luad;)Luad;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lbqa;->c:Luad;

    nop

    nop

    invoke-interface {v0, v1}, Luad;->plus(Luad;)Luad;

    move-result-object v0

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    :cond_2
    sget-object v1, Lbqa;->a:Luad;

    nop

    if-ne v0, v1, :cond_3

    nop

    iget-object v0, p0, Lbqa;->b:Luad;

    nop

    nop

    nop

    nop

    sget-object v1, Lugy;->c:Ltzz;

    nop

    nop

    nop

    invoke-interface {v0, v1}, Luad;->get(Luac;)Luab;

    move-result-object v1

    nop

    nop

    check-cast v1, Lugy;

    nop

    new-instance v2, Luha;

    nop

    nop

    nop

    invoke-direct {v2, v1}, Luha;-><init>(Lugy;)V

    new-instance v1, Lbnb;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Lbnb;-><init>()V

    invoke-virtual {v2, v1}, Luhf;->p(Ljava/util/concurrent/CancellationException;)V

    invoke-interface {v0, v2}, Luad;->plus(Luad;)Luad;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lbqa;->c:Luad;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Luad;->plus(Luad;)Luad;

    move-result-object v0

    nop

    :cond_3
    :goto_e
    iput-object v0, p0, Lbqa;->d:Luad;

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

    :goto_f
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v1, Lbqa;->a:Luad;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    const v0, 0x1b

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lbqa;->d:Luad;

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

.method public final c()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final cc()V
    .locals 0

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

    :goto_1
    invoke-virtual {p0}, Lbqa;->d()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    :goto_1
    goto/32 :goto_6

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
    iget-object v0, p0, Lbqa;->d:Luad;

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lbqa;->a:Luad;

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lbqa;->d:Luad;

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    :cond_0
    new-instance v1, Lbnb;

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Lbnb;-><init>()V

    invoke-static {v0, v1}, Lucu;->q(Luad;Ljava/util/concurrent/CancellationException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    return-void

    nop

    :catchall_0
    move-exception v0

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

    :goto_6
    goto/32 :goto_c

    nop

    :goto_7
    monitor-exit p0

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

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method
