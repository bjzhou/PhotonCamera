.class public final synthetic Limw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/googlex/gcam/hdrplus/FrameRescorerCallback;


# instance fields
.field public final synthetic a:Linb;


# direct methods
.method public synthetic constructor <init>(Linb;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

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

    nop

    :goto_1
    iput-object p1, p0, Limw;->a:Linb;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method


# virtual methods
.method public final onRescore(I[J[F)[F
    .locals 7

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p1, Liik;->c:Lpdf;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_1
    add-int/lit8 p0, p0, 0x1

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

    :goto_2
    move p0, v3

    nop

    :goto_3
    goto/32 :goto_40

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lmkn;->c()J

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lrss;->h()Z

    move-result v2

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v2, v4}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_c
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aput v2, v1, p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    :goto_f
    aget p0, v1, v3

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    aget-wide v4, p2, p0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_11
    array-length v0, p3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_12
    invoke-interface {v2, v6, v4, v5}, Lscz;->u(Ljava/lang/String;J)V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_13
    const-string v6, "Score for frame at %d not available"

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_1
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_15
    return-object p3

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    aget-wide v5, p2, p0

    nop

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

    nop

    :goto_18
    check-cast p0, Limz;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Lind;->a:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_1a
    aget v2, p3, p0

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

    nop

    :goto_1b
    iget-object p0, p0, Limw;->a:Linb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lt v3, v0, :cond_2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1d
    aget v2, v1, p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Limz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v1, "ShotConfigFactory#FrameRescorerCallback"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_20
    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

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

    :goto_21
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto :goto_29

    nop

    :goto_24
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast p0, Lrss;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v2, Liik;->a:Lsdb;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_27
    aget-wide v4, p2, p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_3

    nop

    :goto_29
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget v2, v2, Llso;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2b
    const/4 v3, 0x0

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_3a

    nop

    :goto_2d
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2e
    if-lt p0, v2, :cond_3

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p1, Liik;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_31
    check-cast p0, Lmkn;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_32
    move-object p3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_33
    check-cast p1, Liik;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_34
    iget-object v0, p1, Liik;->c:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_35
    check-cast v2, Lscz;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_36
    const/high16 v4, -0x3ee00000    # -10.0f

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v2, p1, Liik;->b:Llsp;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_38
    const/16 v4, 0x611

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_39
    invoke-interface {p0}, Lpdf;->g()V

    :goto_3a
    goto/32 :goto_15

    nop

    nop

    :goto_3b
    iget-object p1, p0, Limz;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_32

    nop

    nop

    :goto_3d
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_e

    nop

    :goto_3f
    goto/32 :goto_2a

    nop

    nop

    :goto_40
    array-length v2, p2

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    cmpl-float p0, p0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v2, :cond_4

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_44
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object p0, p0, Linb;->l:Lind;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {v2, v5, v6}, Llsp;->b(J)Llso;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_47
    aput v4, v1, p0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_48
    if-nez p0, :cond_5

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_22

    nop

    nop

    :goto_4a
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop
.end method
