.class public final synthetic Ligk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpqt;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lhbk;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Ligk;->b:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ligk;->a:Ljava/lang/Object;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ligm;I)V
    .locals 0

    goto/32 :goto_2

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

    :goto_1
    iput-object p1, p0, Ligk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Ligk;->b:I

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
    return-void

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    goto/32 :goto_17

    nop

    nop

    :goto_0
    iget-object v0, v0, Lhbk;->i:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    iput p1, p0, Ligm;->k:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ligk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    check-cast v0, Lhbk;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Ligm;

    nop

    nop

    goto/32 :goto_1

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

    goto/32 :goto_14

    nop

    nop

    :goto_6
    const v1, 0x12

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    const/16 v2, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Ligk;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v1, Lhbk;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lhbk;->f:Lgwo;

    nop

    nop

    nop

    nop

    sget-object v2, Lgwo;->d:Lgwo;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lgwo;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Ligk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Lhbk;

    nop

    nop

    iget-object v1, v1, Lhbk;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v1, p0, Ligk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    check-cast v2, Lhbk;

    nop

    nop

    nop

    nop

    iget v2, v2, Lhbk;->h:I

    nop

    nop

    nop

    nop

    nop

    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    if-ne v2, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lhbk;

    nop

    nop

    nop

    nop

    nop

    iput p1, v1, Lhbk;->h:I

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_1
    sub-int/2addr p1, v2

    nop

    nop

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    nop

    nop

    nop

    nop

    const/16 v1, 0x3c

    nop

    nop

    if-le p1, v1, :cond_3

    nop

    nop

    nop

    nop

    const/16 v1, 0x12c

    nop

    nop

    if-ge p1, v1, :cond_3

    nop

    iget-object p1, p0, Ligk;->a:Ljava/lang/Object;

    nop

    check-cast p1, Lhbk;

    nop

    nop

    invoke-virtual {p1}, Lhbk;->c()V

    iget-object p1, p0, Ligk;->a:Ljava/lang/Object;

    nop

    check-cast p1, Lhbk;

    nop

    nop

    iget-object p1, p1, Lhbk;->k:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_2

    nop

    nop

    nop

    sget-object v1, Lgwo;->b:Lgwo;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object v2, p1

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lgwr;

    nop

    const/4 v3, 0x0

    nop

    iput-boolean v3, v2, Lgwr;->h:Z

    nop

    nop

    check-cast p1, Lgwr;

    nop

    nop

    iget-object p1, p1, Lgwr;->c:Loyn;

    nop

    nop

    nop

    invoke-interface {p1, v1}, Loyn;->a(Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Ligk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    move-object p1, p0

    nop

    check-cast p1, Lhbk;

    nop

    nop

    nop

    iget-object p1, p1, Lhbk;->e:Lneh;

    nop

    nop

    check-cast p0, Lhbk;

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Lhbk;->d(Lneh;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_3
    iget-object v1, p0, Ligk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Lhbk;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lhbk;->j:Lmss;

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lmss;->d:Ljava/lang/Object;

    nop

    nop

    monitor-enter v2

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, v1, Lmss;->c:Lmsv;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, p0, Ligk;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Ligk;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_2
    monitor-exit v2

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0

    nop

    nop

    nop

    :cond_5
    :goto_f
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

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

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_15

    nop

    nop

    :goto_10
    const/16 v2, 0x154

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    throw p0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    :goto_17
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_18
    if-gt p1, v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lt p1, v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_7
    :try_start_4
    sget-object p1, Lmsv;->d:Lmsv;

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Lmsv;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    if-nez p1, :cond_8

    nop

    nop

    nop

    nop

    iget-object p1, p0, Ligk;->a:Ljava/lang/Object;

    nop

    check-cast p1, Lhbk;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lhbk;->j:Lmss;

    nop

    sget-object v1, Lmsv;->d:Lmsv;

    nop

    nop

    invoke-virtual {p1, v1}, Lmss;->a(Lmsv;)V

    iget-object p0, p0, Ligk;->a:Ljava/lang/Object;

    nop

    nop

    move-object p1, p0

    nop

    nop

    nop

    nop

    check-cast p1, Lhbk;

    nop

    iget-object p1, p1, Lhbk;->d:Lneh;

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lhbk;

    nop

    nop

    invoke-virtual {p0, p1}, Lhbk;->d(Lneh;)V

    goto :goto_1b

    nop

    nop

    :goto_1a
    sget-object p1, Lmsv;->c:Lmsv;

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Lmsv;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    if-nez p1, :cond_8

    nop

    nop

    nop

    iget-object p1, p0, Ligk;->a:Ljava/lang/Object;

    nop

    check-cast p1, Lhbk;

    nop

    nop

    iget-object p1, p1, Lhbk;->j:Lmss;

    nop

    sget-object v1, Lmsv;->c:Lmsv;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Lmss;->a(Lmsv;)V

    iget-object p0, p0, Ligk;->a:Ljava/lang/Object;

    nop

    check-cast p0, Lhbk;

    nop

    nop

    invoke-virtual {p0}, Lhbk;->a()V

    :cond_8
    :goto_1b
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_9

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method
