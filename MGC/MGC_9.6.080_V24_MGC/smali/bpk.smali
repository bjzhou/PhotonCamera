.class final Lbpk;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lbpv;

.field final synthetic b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lbpv;Ljava/lang/Throwable;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lbpk;->b:Ljava/lang/Throwable;

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lbpk;->a:Lbpv;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    instance-of v3, p1, Ljava/util/concurrent/CancellationException;

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    if-eq v4, v3, :cond_1

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    :cond_1
    move-object p1, v2

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    invoke-static {v0, p1}, Lrgw;->am(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_5

    nop

    nop

    nop

    :goto_4
    move-object v0, v2

    nop

    :cond_2
    :goto_5
    iput-object v0, p0, Lbpv;->e:Ljava/lang/Throwable;

    nop

    nop

    nop

    iget-object p0, p0, Lbpv;->o:Lulh;

    nop

    nop

    nop

    sget-object p1, Lbpi;->a:Lbpi;

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Lulh;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lbpk;->b:Ljava/lang/Throwable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    monitor-exit v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

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
    goto/32 :goto_6

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_c
    monitor-enter v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    check-cast p1, Ljava/lang/Throwable;

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

    :goto_e
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lbpk;->a:Lbpv;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4

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

    :goto_12
    goto/32 :goto_a

    nop

    nop

    :goto_13
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_16
    if-lez v0, :cond_4

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_9

    nop

    :goto_17
    iget-object v1, p0, Lbpv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_18
    monitor-exit v1

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
.end method
