.class public final synthetic Ljuf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpgg;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Lpgh;Loxv;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Ljuf;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p3, p0, Ljuf;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p4, p0, Ljuf;->d:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Ljuf;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

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

.method public synthetic constructor <init>(Ljuj;Ljvy;Ljava/util/concurrent/Executor;I)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljuf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Ljuf;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Ljuf;->c:Ljava/lang/Object;

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
    iput p4, p0, Ljuf;->d:I

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


# virtual methods
.method public final synthetic a()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const-string p0, ""

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Lpjo;)V
    .locals 6

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    if-ne v3, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_0
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    iget-object v2, p0, Ljuf;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_6
    const/16 v5, 0x869

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, v0, Ljuj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_8
    iget-object v0, p0, Ljuf;->b:Ljava/lang/Object;

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

    :goto_9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x1

    nop

    :goto_b
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Ljuf;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_d
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Lpjo;->a()Lpge;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0, v5, v3, v2}, Lscz;->y(Ljava/lang/String;ILjava/lang/Object;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v2, Ljuh;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_13
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v5, "Not enough frames in ZSL ring: %s in %s"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_16
    iget-object p1, p0, Ljuf;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_17
    if-le v3, v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    iget v0, p0, Ljuf;->d:I

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_19
    if-gt v3, v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p1, v0}, Lpge;->j(Lpuq;)V

    :goto_1c
    goto/32 :goto_3b

    nop

    nop

    :goto_1d
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1

    nop

    :goto_1e
    invoke-interface {v2}, Lpgh;->i()Lpgo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_20
    new-instance v0, Ljui;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-le v0, v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_22
    if-nez p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_7
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_3e

    nop

    nop

    :goto_25
    goto/32 :goto_19

    nop

    nop

    :goto_26
    goto :goto_1c

    nop

    nop

    :goto_27
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x9

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
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v2}, Lpgo;->d()Ljava/util/Set;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_8

    nop

    nop

    :goto_2d
    check-cast v0, Ljuj;

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

    :goto_2e
    invoke-interface {v2}, Lpgh;->b()I

    move-result v3

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2f
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v2, p1, v0, v1}, Ljuh;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_32
    invoke-interface {v2}, Lpgh;->i()Lpgo;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2

    nop

    :goto_34
    invoke-interface {v0, v5}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_35
    if-gt v3, v4, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p0, p0, Ljuf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_37
    sget-object v0, Ljer;->a:Lsdb;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {v0, p0, v2, p1}, Ljui;-><init>(Ljava/util/concurrent/Executor;Ldux;Lpge;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3a
    iget-object v0, p0, Ljuf;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {v0}, Lpgo;->d()Ljava/util/Set;

    :goto_3e
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast p0, Loxv;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method
