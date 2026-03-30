.class public final synthetic Lmjj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Lmjl;


# direct methods
.method public synthetic constructor <init>(Lmjl;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lmjj;->a:Lmjl;

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


# virtual methods
.method public final doFrame(J)V
    .locals 7

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_2
    iget-object v0, p0, Lmjl;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    cmp-long p2, v3, v5

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

    :goto_4
    if-lt p2, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lmjl;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    iget-object p0, p0, Lmjl;->d:Lsuu;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p2, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p1, Lscz;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_c
    if-ltz p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_37

    nop

    :goto_f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object p1, Lmjl;->a:Lsdb;

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

    :goto_11
    check-cast v1, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_14
    invoke-interface {p1, p2, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/16 p2, 0x1156

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int/lit8 v2, p2, 0x1

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

    nop

    :goto_19
    iget-object p0, p0, Lmjj;->a:Lmjl;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lmjl;->c:Ljava/util/List;

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_1b
    move v0, p1

    nop

    nop

    :goto_1c
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-wide v5, Lmjl;->b:J

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lmjl;->d:Lsuu;

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

    :goto_20
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_25
    goto :goto_1c

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p1, p0, Lmjl;->c:Ljava/util/List;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_28
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v1, p0, Lmjl;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2a
    move p2, p1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2b
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_2c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 p1, 0x0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-ge v0, p1, :cond_3

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_30
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0}, Lmjl;->a()V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_33
    const/16 p1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {p1, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_36
    move v0, p2

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_38
    if-le p1, p2, :cond_4

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    nop

    :goto_39
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3a
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3b
    invoke-virtual {p0, p1}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-string p2, "%s"

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3e
    const/16 p2, 0x64

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3f
    move p2, v2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_40
    const v0, 0x16

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_41
    const-string v0, "Never reached the steady state."

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_42
    sub-long/2addr v3, v5

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    return-void

    nop

    :goto_44
    goto/32 :goto_10

    nop

    nop

    nop
.end method
