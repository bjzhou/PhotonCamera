.class public final synthetic Lixd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpqs;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lgqh;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p1, p0, Lixd;->a:Ljava/lang/Object;

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

    :goto_1
    return-void

    nop

    :goto_2
    iput p2, p0, Lixd;->b:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Lixe;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lixd;->a:Ljava/lang/Object;

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

    :goto_3
    iput p2, p0, Lixd;->b:I

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
.end method


# virtual methods
.method public final a(Lpcg;)V
    .locals 5

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_1
    sget-object p1, Lixe;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    iget-object v1, v0, Lgqh;->c:Ljava/lang/Object;

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
    check-cast v0, Lgqh;

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

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    :goto_6
    invoke-virtual {v0, p1}, Lgqh;->b(Lpcg;)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    monitor-enter p1

    nop

    :try_start_0
    move-object v0, p0

    nop

    check-cast v0, Lixe;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lixe;->d:Ljava/util/PriorityQueue;

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    new-array v2, v1, [Lixf;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, [Lixf;

    nop

    nop

    nop

    nop

    nop

    array-length v2, v0

    nop

    :goto_8
    if-ge v1, v2, :cond_3

    nop

    nop

    nop

    nop

    aget-object v3, v0, v1

    nop

    nop

    invoke-interface {v3}, Lixf;->q()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-nez v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    move-object v4, p0

    nop

    nop

    nop

    nop

    check-cast v4, Lixe;

    nop

    nop

    iget-object v4, v4, Lixe;->q:Lixf;

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_2

    nop

    nop

    nop

    nop

    move-object v4, p0

    nop

    check-cast v4, Lixe;

    nop

    invoke-virtual {v4, v3}, Lixe;->f(Lixf;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    :cond_3
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lixe;

    nop

    iget-object v0, v0, Lixe;->q:Lixf;

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    invoke-interface {v0}, Lixf;->q()Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    check-cast p0, Lixe;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Lixe;->f(Lixf;)V

    :cond_4
    monitor-exit p1

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit p1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lixd;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    iget v0, p0, Lixd;->b:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x20

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x7

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    throw p0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lixd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    move-object v2, v0

    nop

    nop

    check-cast v2, Lgqh;

    nop

    nop

    iget-boolean v2, v2, Lgqh;->d:Z

    nop

    nop

    nop

    if-nez v2, :cond_5

    nop

    nop

    check-cast v0, Lgqh;

    nop

    iget-object v0, v0, Lgqh;->a:Loxv;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Loxv;->a(Ljava/lang/Object;)V

    :cond_5
    iget-object p0, p0, Lixd;->a:Ljava/lang/Object;

    nop

    nop

    check-cast p0, Lgqh;

    nop

    nop

    nop

    iget-object p0, p0, Lgqh;->b:Loxv;

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lpcg;->b(I)Lpcg;

    move-result-object p1

    nop

    nop

    invoke-virtual {p0, p1}, Loxv;->a(Ljava/lang/Object;)V

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_13

    nop

    nop

    :goto_16
    iget-object v0, p0, Lixd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method
