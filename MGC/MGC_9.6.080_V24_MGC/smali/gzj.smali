.class public final synthetic Lgzj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpgv;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lfdo;Llgc;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgzj;->b:Ljava/lang/Object;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput p3, p0, Lgzj;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput-object p2, p0, Lgzj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Lgzj;->c:I

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

    nop

    :goto_3
    iput-object p2, p0, Lgzj;->b:Ljava/lang/Object;

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
    iput-object p1, p0, Lgzj;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpge;)V
    .locals 8

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lrss;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    move-object v0, v3

    nop

    nop

    nop

    nop

    check-cast v0, Lgzk;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lgzk;->c:Ljava/util/concurrent/ExecutorService;

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    new-instance v1, Las;

    nop

    nop

    nop

    nop

    nop

    const/16 v6, 0x14

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    move-object v4, p1

    nop

    invoke-direct/range {v2 .. v7}, Las;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[C)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit p0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object v1, p0

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x2

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1, v0}, Lpge;->e(Lphh;)Lprw;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Lpge;->close()V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v3, p0, Lgzj;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1c

    nop

    nop

    :goto_9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    :goto_b
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_c
    iget-object v1, v1, Lgrr;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_d
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Lmdp;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lmdp;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Loel;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lgzk;->b:Ljava/lang/Object;

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

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_13
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    :goto_15
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    throw p1

    nop

    :goto_17
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_19
    iget-object p0, p0, Lgzj;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_1a
    move-object v2, p0

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct/range {v1 .. v6}, Lkss;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lgzj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1d
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_2
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast p0, Lgzk;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_20
    move-object p0, v3

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

    :goto_21
    check-cast p1, Llln;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p0, Lfdo;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    :goto_24
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_25
    iget v0, p0, Lgzj;->c:I

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_27
    iget-object p0, p0, Lgzj;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v0, Lrss;

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

    :goto_29
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    :goto_2a
    const/4 v5, 0x2

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2b
    iget-object p0, p0, Lgzj;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-interface {p1}, Lpge;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p1}, Lpge;->close()V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    :goto_2f
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    monitor-enter v1

    nop

    nop

    nop

    :try_start_2
    invoke-interface {p1, v0}, Lpge;->e(Lphh;)Lprw;

    move-result-object v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    check-cast p0, Lgrr;

    nop

    nop

    nop

    iget-object p0, p0, Lgrr;->g:Lrss;

    nop

    nop

    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Lmrb;

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Lmrb;->f(Lprw;)V

    :cond_4
    invoke-interface {p1}, Lpge;->close()V

    monitor-exit v1

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_31
    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p0, p0, Lkwh;->f:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_34
    invoke-interface {p1}, Lpge;->close()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    return-void

    nop

    nop

    :goto_36
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_37
    invoke-interface {p1}, Lpge;->close()V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_6
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const v0, 0xf

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v1, p0, v0, v2}, Llwv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v1, p0, Lgzj;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p0, v0}, Lmrb;->f(Lprw;)V

    :goto_3d
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3e
    iget-object p0, p0, Lgzj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_3f
    check-cast p0, Lmrb;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_40
    check-cast p0, Lkwf;

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_41
    if-ne v0, v1, :cond_7

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_7
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_43
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast v0, Lphh;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_45
    check-cast v1, Lgrr;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_46
    new-instance v1, Llwv;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_48
    invoke-interface {p1, v0}, Lpge;->e(Lphh;)Lprw;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_49
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const/16 v2, 0x8

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-direct {v0, v1, p1}, Loel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v3, p0, Lgzj;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_4d
    const/4 v1, 0x1

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-ne v0, v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    throw p0

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_51
    iget-object p0, v0, Loel;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_53
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_54
    iget-object v0, p0, Lgzj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    :try_start_3
    invoke-interface {p1}, Lpge;->d()Lpro;

    move-result-object v1

    nop

    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    nop

    sget-object p0, Lldu;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    const/16 v0, 0xd44

    nop

    nop

    nop

    nop

    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    const-string v0, "Error retrieving metadata, ignoring frame"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/16 :goto_68

    nop

    nop

    nop

    :cond_9
    move-object v2, v0

    nop

    nop

    nop

    check-cast v2, Lldu;

    nop

    iget-object v2, v2, Lldu;->c:Lpcm;

    nop

    nop

    invoke-interface {v2, v1}, Lpcm;->a(Ljava/lang/Object;)V

    sget-object v2, Lnne;->s:Lnne;

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_55
    return-void

    nop

    nop

    :goto_56
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-ne v0, v1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_52

    nop

    nop

    :goto_58
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_51

    nop

    nop

    :goto_5a
    iget-object v0, p0, Lgzj;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v0, p0, Lgzj;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object p0, p0, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5f
    goto :goto_5c

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_61
    move-object v4, p1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_62
    invoke-interface {p1, v0}, Llln;->f(Loel;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_64
    iget-object p0, p0, Lkwf;->c:Lkwh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_65
    new-instance v0, Lkss;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object p0, p0, Lgzj;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_67
    if-ne p0, v2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    :cond_b
    :try_start_4
    sget-object v2, Lnne;->r:Lnne;

    nop

    nop

    nop

    if-eq p0, v2, :cond_c

    nop

    nop

    nop

    check-cast v0, Lldu;

    nop

    nop

    nop

    nop

    iget-object p0, v0, Lldu;->b:Lfyu;

    nop

    invoke-virtual {p0, v1}, Lfyu;->a(Lpro;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_c
    :goto_68
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-nez v0, :cond_d

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_6a
    if-nez p1, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :cond_e
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object p0, p0, Lgzj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v5, p0, Lgzj;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6d
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop
.end method
