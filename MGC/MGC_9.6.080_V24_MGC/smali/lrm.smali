.class public abstract Llrm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llrk;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lrkg;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    :goto_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Llrm;->a:Ljava/lang/Object;

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

    :goto_2
    const/4 v1, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Llrm;->b:Lrkg;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, v1}, Lrkg;-><init>([B)V

    goto/32 :goto_4

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

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_b

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    new-instance v0, Lrkg;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/lang/Object;

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

    :goto_c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_e

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x16

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

    nop

    :goto_11
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;)Llrl;
    .locals 5

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    throw p0

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_6
    new-instance v0, Llrl;

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

    nop

    nop

    :goto_7
    if-eqz v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Llrm;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x6

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    iget-object v0, p0, Llrm;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    invoke-direct {v0, p0, p1, v3}, Llrl;-><init>(Llrm;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Llrm;->b:Lrkg;

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lrkg;->c:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v2

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v1, Lrkg;->d:Ljava/lang/Object;

    nop

    nop

    check-cast v3, Ljava/util/LinkedList;

    nop

    nop

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result v3

    nop

    if-eqz v3, :cond_2

    nop

    nop

    nop

    iget-object v3, v1, Lrkg;->b:Ljava/lang/Object;

    nop

    check-cast v3, Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Ljava/util/Queue;

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    iget v4, v1, Lrkg;->a:I

    nop

    nop

    invoke-static {}, Lrkg;->b()V

    add-int/lit8 v4, v4, -0x1

    nop

    iput v4, v1, Lrkg;->a:I

    nop

    nop

    nop

    goto :goto_11

    nop

    :cond_2
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    monitor-exit v2

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object v0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_3
    monitor-exit v2

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_1

    nop

    nop
.end method
