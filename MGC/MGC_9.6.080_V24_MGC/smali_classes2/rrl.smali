.class public final Lrrl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public a:Lj$/time/Duration;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public d:Lrrp;

.field private e:Lj$/time/Instant;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lrrl;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput v1, p0, Lrrl;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

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

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_9
    iput-object v0, p0, Lrrl;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Lrrl;->e:Lj$/time/Instant;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 6

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-gez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :cond_0
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_1
    iget-object v0, p1, Lrrp;->b:Lrrn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v3, "StoredVideoFrameProcessor: current output FPS ("

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p1, Lrrp;->g:Lj$/time/Instant;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-wide/16 v1, 0x1

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lrrl;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    :goto_8
    goto/16 :goto_6e

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_50

    nop

    :goto_b
    goto/32 :goto_69

    nop

    nop

    :goto_c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_e
    const-string p2, ")."

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_35

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_11
    check-cast p2, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz p2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_80

    nop

    nop

    :goto_13
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_51

    nop

    nop

    :goto_16
    iget-object p1, p1, Lrrp;->k:Lrpz;

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p1, Lrrp;->b:Lrrn;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v2, v3, p1, p2}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p2, v0, v1}, Lj$/time/Duration;->multipliedBy(J)Lj$/time/Duration;

    move-result-object p2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p2, v0, v1}, Lj$/time/Duration;->minusNanos(J)Lj$/time/Duration;

    move-result-object p2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_5
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1e
    iget p2, p2, Lrrn;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-wide/32 v0, 0x1e8480

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_21
    invoke-interface {p2, v0}, Lscz;->s(Ljava/lang/String;)V

    :goto_22
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast p2, Lrrq;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p1, p0, Lrrl;->d:Lrrp;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    int-to-long v0, v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_26
    sget-object p2, Lrrp;->a:Lsdb;

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_27
    if-gez v0, :cond_6

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

    :cond_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v1}, Lj$/time/Instant;->isAfter(Lj$/time/Instant;)Z

    move-result v0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_29
    iput p1, p0, Lrrl;->f:I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1, p2}, Lj$/time/Duration;->compareTo(Lj$/time/Duration;)I

    move-result p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p2}, Lrro;->a()D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_2c
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_2d
    const-string p2, ", "

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v0, p1, v1}, Lnaz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_49

    nop

    nop

    :goto_2f
    sub-long/2addr p1, v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_30
    iget p2, p1, Lrrp;->i:I

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_31
    const-string p2, ") is outside the allowed range ("

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {v0, v1, p2}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_33
    mul-long/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_31

    nop

    nop

    :goto_36
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_37
    invoke-static {p2, p1}, Lj$/time/Duration;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)Lj$/time/Duration;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const-string v0, "SVFP: Output FPS warning"

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object p2, p1, Lrrp;->d:Lrro;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    double-to-int p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const-string v1, "%s"

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

    :goto_3f
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p2}, Lrro;->b()V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_41
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p2, p0, Lrrl;->a:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_43
    const/16 v1, 0x157e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_44
    iget-object p2, p1, Lrrp;->b:Lrrn;

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_45
    cmpg-double p2, v0, v2

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_46
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {p2, v0}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p2, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v0, p1, Lrrp;->g:Lj$/time/Instant;

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez p2, :cond_7

    nop

    goto/32 :goto_8f

    nop

    :cond_7
    goto/32 :goto_8e

    nop

    nop

    :goto_4c
    iget p1, p0, Lrrl;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_4d
    iget-object p2, p0, Lrrl;->e:Lj$/time/Instant;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_4e
    invoke-virtual {v0, v1}, Lj$/time/Duration;->compareTo(Lj$/time/Duration;)I

    move-result v0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {p2}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p2

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_51
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

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

    :goto_52
    return-void

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p2, v0}, Lj$/time/Instant;->equals(Ljava/lang/Object;)Z

    move-result p2

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_55
    int-to-double v2, v2

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

    :goto_56
    iget-object v0, p1, Lrrp;->g:Lj$/time/Instant;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_57
    const-wide/32 v0, 0x3b9aca00

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    add-int v0, v0, v1

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v0, v0, Lrrn;->h:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_5b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    sget-object v0, Lrrp;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_5d
    if-gez p2, :cond_8

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :cond_8
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-nez p2, :cond_9

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1d

    nop

    nop

    :goto_5f
    iget v2, p2, Lrrn;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_60
    add-int/lit8 p1, p1, 0x1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v1, v1, Lrrn;->h:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    add-int/lit8 v0, p2, -0x1

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_63
    cmpl-double p2, v0, v4

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_64
    const/4 p0, 0x0

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_65
    new-instance v0, Lnaz;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    div-long v2, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_67
    sget-object v1, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_68
    check-cast v0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_69
    iget-object p2, p1, Lrrp;->h:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_6b
    const/16 v0, 0x157f

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

    :goto_6c
    invoke-static {v0, p2}, Lj$/time/Duration;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)Lj$/time/Duration;

    move-result-object v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v0, v1, v2}, Lj$/time/Duration;->plusSeconds(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6f
    iget-object p2, p1, Lrrp;->b:Lrrn;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_70
    double-to-int v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_71
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_72
    iget-object p2, p1, Lrrp;->d:Lrro;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_74
    double-to-int v0, v2

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_75
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_76
    if-lez v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_3a

    nop

    :goto_77
    const/16 v1, 0xc

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_78
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_7a
    int-to-double v4, p2

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

    :goto_7b
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

    :goto_7c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget v0, p0, Lrrl;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_7e
    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v0, p0, Lrrl;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_80
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_59

    nop

    nop

    :goto_83
    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    if-gtz p2, :cond_b

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

    :cond_b
    :goto_85
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_86
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_87
    iget-object p2, p0, Lrrl;->e:Lj$/time/Instant;

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_88
    goto/16 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_89
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_8b
    iget-boolean p2, p2, Lrrn;->b:Z

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    if-nez p1, :cond_c

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    sget-object v0, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_8e
    iput-object p1, p0, Lrrl;->e:Lj$/time/Instant;

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-object v0, p0, Lrrl;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop
.end method
