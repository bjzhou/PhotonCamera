.class public final synthetic Limx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/googlex/gcam/hdrplus/BaseFrameCallback;


# instance fields
.field public final synthetic a:Linb;


# direct methods
.method public synthetic constructor <init>(Linb;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Limx;->a:Linb;

    nop

    goto/32 :goto_1

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onBaseFrameSelected(IIJ)V
    .locals 10

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v3, p2, v2}, Lrrf;->r(ZLjava/lang/String;II)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1
    iget-object p0, v1, Linb;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_4
    iget-object p0, v1, Linb;->s:Ljava/util/concurrent/atomic/AtomicLong;

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_b
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    cmp-long p0, v2, p3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, v3, p2, v2}, Lrrf;->r(ZLjava/lang/String;II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    const v1, 0x18

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_10
    move p0, v0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2b

    nop

    nop

    :goto_15
    move p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move v2, p2

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move p0, v0

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_39

    nop

    nop

    :goto_1a
    iget p0, v1, Linb;->u:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

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

    :goto_1d
    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v0, Lilg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v6, v1, Linb;->d:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_20
    move p0, p1

    nop

    nop

    :goto_21
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_22
    const v0, 0x17

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v3, Lcom/google/android/apps/camera/logging/PTc/RjdpW;->wmrpgCpNfCK:Ljava/lang/String;

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

    :goto_24
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_26
    iget-object v2, v1, Linb;->d:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_27
    iget-object v2, v1, Linb;->c:Ljava/util/List;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_28
    const-string v3, "Base frame index %s >= payload timestamps size %s"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static/range {v4 .. v9}, Lrrf;->D(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v1, p0, Limx;->a:Linb;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v5, "Base frame timestamps from payloadTimestamps (%s) don\'t match. From index (%s): %s, actual: %s"

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move-object v5, p0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Lind;->b()Lrss;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move p0, p1

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p0, v1, Linb;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p0, v1, Linb;->d:Ljava/util/List;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_34
    goto :goto_31

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_36
    move v4, p1

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_2c

    nop

    nop

    :goto_38
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_39
    move v4, v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3a
    check-cast p0, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3b
    if-lt p2, p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    :goto_3c
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    move-object v0, p0

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3e
    if-eq p0, v0, :cond_3

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

    :cond_3
    goto/32 :goto_18

    nop

    nop

    :goto_3f
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_40
    iget-object p0, v1, Linb;->l:Lind;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-lt p2, p0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    :goto_42
    iget-object p0, v1, Linb;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_43
    invoke-interface/range {v0 .. v5}, Lilg;->d(Linb;IJLpro;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {p0}, Lrrf;->x(Z)V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_46
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_21

    nop

    :goto_48
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_49
    move-wide v3, p3

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_4b
    move p0, p1

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_4d
    check-cast v5, Lpro;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop
.end method
