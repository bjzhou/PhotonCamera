.class public final synthetic Lqry;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lssw;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lqqa;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .locals 0

    goto/32 :goto_3

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

    :goto_1
    iput-object p2, p0, Lqry;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lqry;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iput p4, p0, Lqry;->d:I

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

    :goto_4
    iput-object p1, p0, Lqry;->b:Ljava/lang/Object;

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
    return-void

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Lqsb;ILjava/lang/String;I)V
    .locals 0

    goto/32 :goto_1

    nop

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

    :goto_1
    iput p4, p0, Lqry;->d:I

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
    iput p2, p0, Lqry;->a:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p3, p0, Lqry;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    iput-object p1, p0, Lqry;->b:Ljava/lang/Object;

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

    :goto_5
    return-void

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 8

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v3, 0x3e8

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1, v3}, Lqkq;-><init>(I)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2
    move-object v1, v7

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

    :goto_3
    iget v5, p0, Lqry;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4
    iget v0, p0, Lqry;->d:I

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

    :goto_5
    invoke-static {p0, v7, v0}, Lsso;->j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    :goto_6
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x18

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_8
    iget-object v1, v1, Lqrr;->a:Lrss;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x16

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

    :goto_a
    const-wide/16 v2, 0x3e8

    nop

    nop

    :goto_b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v0, Lqsb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v3, 0x8

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    const-class v4, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v1, Lqpo;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-wide v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v7, Lqsa;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0}, Lsub;->q(Lsui;)Lsub;

    move-result-object p0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    :goto_1a
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_1c
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1d
    cmp-long v2, v2, v4

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1e
    move-object v2, v0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lqry;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_21
    invoke-static {p0, v4, v1, v3}, Lsrv;->i(Lsui;Ljava/lang/Class;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_22
    invoke-virtual {p0, v0, v1}, Lqqa;->n(ILqpo;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_2d

    nop

    nop

    :goto_24
    iget-object v2, p0, Lqry;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_25
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_26
    invoke-interface {v1}, Ltud;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v3, v0, Lqsb;->a:Lsul;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_28
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_2
    goto/32 :goto_37

    nop

    nop

    :goto_29
    iget-object v0, v0, Lqsb;->a:Lsul;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2a
    iget-object v1, p0, Lqqa;->b:Ltud;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v1, Lqrr;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2c
    iget-object v1, v0, Lqsb;->c:Ltud;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2f
    sget-object p0, Lsue;->a:Lsui;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v1}, Ltud;->a()Ljava/lang/Object;

    move-result-object v1

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

    nop

    :goto_31
    goto/16 :goto_23

    nop

    nop

    :goto_32
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_34
    if-eqz v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const-wide/16 v4, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_37
    sget-object p0, Lsue;->a:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v1}, Lqrr;->b()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_3b
    iget-object v0, p0, Lqry;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget v0, p0, Lqry;->a:I

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3d
    iget-object v0, p0, Lqry;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_10

    nop

    :goto_3f
    new-instance v1, Lqkq;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_40
    move-object v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_41
    check-cast p0, Lqqa;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-ne v2, v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_43
    invoke-direct/range {v1 .. v6}, Lqsa;-><init>(Lqsb;JILjava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    :goto_44
    check-cast v6, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_45
    add-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop
.end method
