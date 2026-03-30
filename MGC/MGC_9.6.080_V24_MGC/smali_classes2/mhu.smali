.class public final synthetic Lmhu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmhy;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/nio/ByteBuffer;

.field public final synthetic f:J

.field public final synthetic g:Lrss;


# direct methods
.method public synthetic constructor <init>(Lmhy;IIILjava/nio/ByteBuffer;JLrss;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p8, p0, Lmhu;->g:Lrss;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    iput p3, p0, Lmhu;->c:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-wide p6, p0, Lmhu;->f:J

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p5, p0, Lmhu;->e:Ljava/nio/ByteBuffer;

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
    iput-object p1, p0, Lmhu;->a:Lmhy;

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

    :goto_6
    iput p4, p0, Lmhu;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    iput p2, p0, Lmhu;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 15

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v4, Lrri;->a:Lrri;

    nop

    nop

    nop

    goto/32 :goto_21

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

    :goto_2
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_3
    const-string v4, "\'start()\' must be called before calling \'provideVideoFrame()\'."

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_74

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x2

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-gez v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :cond_0
    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lmhu;->e:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_9
    check-cast v1, Ljava/lang/Long;

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

    nop

    :goto_a
    iget-object v4, v0, Lrrp;->b:Lrrn;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    double-to-int v5, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v3, v0, Lrrp;->c:Lrro;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v4, :cond_1

    nop

    goto/32 :goto_18

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_48

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    move v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_15
    const-string v3, ") is outside the allowed range ("

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_16
    iget-object v3, v0, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_17
    goto/16 :goto_43

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_7f

    nop

    nop

    :goto_19
    invoke-static {v5, v3}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-ne v3, v4, :cond_3

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_3
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v3, v0, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1c
    check-cast v3, Lscz;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v5, v0, Lrrp;->b:Lrrn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move v5, v6

    nop

    :goto_1f
    goto/32 :goto_72

    nop

    nop

    :goto_20
    iget-object v0, p0, Lmhy;->m:Lfdo;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_22
    sget-object v4, Lrra;->e:Lrra;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_23
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_24
    const-wide/16 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_25
    rem-int/lit16 v0, v0, 0xb4

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c0

    nop

    nop

    :goto_27
    iget-object v1, v7, Lmii;->e:Lrss;

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto :goto_1f

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v4, Lscz;

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v13

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_2c
    const/16 v5, 0x157c

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v7, "StoredVideoFrameProcessor: current input FPS ("

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_2e
    if-gtz v5, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :cond_4
    :goto_2f
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v4, Lrra;->b:Lrra;

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v5, v0, Lrrp;->k:Lrpz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move-object v6, v8

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget v2, p0, Lmhu;->d:I

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-gez v5, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_5
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_b5

    nop

    nop

    :goto_36
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-ne v3, v4, :cond_6

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_38
    move-object v8, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_39
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_3a
    move v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_b7

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez v4, :cond_7

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_87

    nop

    nop

    :goto_3e
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    sget-object v4, Lrra;->c:Lrra;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_40
    rem-int v0, v0, v1

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

    :goto_41
    invoke-static {v4, v3}, Lj$/time/Duration;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)Lj$/time/Duration;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_43
    goto/32 :goto_5f

    nop

    nop

    :goto_44
    add-int/lit8 v4, v3, -0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_8
    goto/32 :goto_10

    nop

    :goto_46
    if-ne v3, v4, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    :cond_9
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    throw v1

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_49
    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_4a
    if-eq v3, v4, :cond_a

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_ab

    nop

    nop

    :goto_4b
    iget-wide v2, p0, Lmhu;->f:J

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

    :goto_4c
    iget-object v4, v0, Lrrp;->f:Lj$/time/Instant;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v4, v4, Lrrn;->h:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_4f
    if-ne v3, v4, :cond_b

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_50
    iget-object p0, p0, Lmhu;->a:Lmhy;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_51
    new-instance v2, Lrrq;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_52
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v3}, Lrro;->b()V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-eqz v3, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :cond_c
    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_55
    const-string v4, "SVFP: Input FPS warning"

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_56
    iget-boolean v3, v3, Lrrn;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_57
    iget v3, v0, Lrrp;->i:I

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_58
    iget v5, v5, Lrrn;->e:I

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

    nop

    :goto_59
    move v3, v6

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_5c
    invoke-static {v3, v4}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v3, v0, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object p0, p0, Lmhy;->g:Lpdf;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_61
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_62
    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_63
    const-string v3, ", "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_64
    if-eqz v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    :cond_d
    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_65
    sget-object v4, Lrra;->g:Lrra;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_67
    move v3, v6

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_68
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_69
    int-to-double v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    check-cast v0, Lrrb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v4, v5}, Lj$/time/Instant;->isAfter(Lj$/time/Instant;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v3, v0, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_6d
    iget-object v0, v0, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_6e
    iget v11, v7, Lmii;->c:I

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_6f
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_70
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v3

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-interface {v4, v5, v3}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_72
    const-string v3, "Can\'t call \'provideVideoFrame()\' after calling \'shutdown()\'."

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v4, v5, v6}, Lj$/time/Duration;->plusSeconds(J)Lj$/time/Duration;

    move-result-object v4

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_75
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_77
    iget-object v0, v0, Lrrb;->e:Lrrp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_79
    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_43

    nop

    nop

    :goto_7b
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_7c
    sget-object v3, Lrrp;->a:Lsdb;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_7e
    iput-object v3, v0, Lrrp;->f:Lj$/time/Instant;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7f
    iget-object v0, v0, Lrrp;->h:Ljava/util/concurrent/atomic/AtomicReference;

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

    :goto_80
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_81
    int-to-double v8, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_82
    move v2, v3

    nop

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v0, p0, Lmhy;->g:Lpdf;

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    :goto_86
    move-object v0, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_87
    iget-object v4, v0, Lrrp;->f:Lj$/time/Instant;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_88
    check-cast v0, Lrra;

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_89
    sget-object v4, Lrra;->a:Lrra;

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_8c
    const-string v4, "\'initialize()\' must be called before calling \'provideVideoFrame()\'."

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_8d
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8e
    iget-object v3, v0, Lrrp;->c:Lrro;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

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

    nop

    :goto_90
    iget-object v3, v0, Lrrp;->b:Lrrn;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v0}, Lrra;->name()Ljava/lang/String;

    goto/32 :goto_7a

    nop

    nop

    :goto_92
    const-string v5, "%s"

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_93
    cmpl-double v5, v3, v8

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_94
    iget v6, v5, Lrrn;->d:I

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_95
    double-to-int v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_96
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_97
    if-ne v3, v4, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :cond_e
    goto/32 :goto_14

    nop

    nop

    :goto_98
    const/4 v5, 0x1

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_99
    iget v3, p0, Lmhu;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_9a
    sget-object v4, Lrrp;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-static {v3, v4}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_5e

    nop

    nop

    :goto_9c
    iget-object v1, v1, Lrsx;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9d
    iget-object v5, v5, Lrrn;->h:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_a0
    iget-object v3, v0, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

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

    :goto_a1
    const/4 v6, 0x0

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_a2
    goto/16 :goto_b1

    nop

    nop

    nop

    nop

    :goto_a3
    goto/32 :goto_8e

    nop

    nop

    :goto_a4
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_27

    nop

    nop

    :goto_a5
    double-to-int v4, v6

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iget-object v3, v0, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_a7
    iget v0, p0, Lmhu;->b:I

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_a8
    iget-object v8, p0, Lmhu;->g:Lrss;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_a9
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_aa
    invoke-static {v1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v14

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v0, v0, Lrrb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_ac
    iget-object v12, v7, Lmii;->d:Lrri;

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    iget-object v9, v7, Lmii;->a:Ljava/nio/ByteBuffer;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_af
    sget-object v4, Lrra;->f:Lrra;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-interface {v3, v4}, Lscz;->s(Ljava/lang/String;)V

    :goto_b1
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    new-instance v7, Lmii;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_b3
    invoke-virtual {v3}, Lrro;->a()D

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    move v3, v6

    nop

    nop

    nop

    :goto_b5
    goto/32 :goto_3

    nop

    nop

    :goto_b6
    move v6, v3

    nop

    nop

    nop

    :goto_b7
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    if-eqz v0, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :cond_f
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_ba
    const-string v1, "SEController#provideVideoFrame"

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {v4, v5}, Lj$/time/Duration;->compareTo(Lj$/time/Duration;)I

    move-result v4

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_bc
    sget-object v5, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_bd
    cmpg-double v5, v3, v6

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_be
    invoke-direct/range {v0 .. v6}, Lmii;-><init>(Ljava/nio/ByteBuffer;IILrri;Lrss;Lrss;)V

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_bf
    iget-object v5, v0, Lrrp;->b:Lrrn;

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    iget v10, v7, Lmii;->b:I

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-direct/range {v8 .. v14}, Lrrq;-><init>(Ljava/nio/ByteBuffer;IILrri;Lj$/util/Optional;Lj$/util/Optional;)V

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    check-cast v1, Lrsx;

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_c3
    const/16 v4, 0x157d

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_c4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    const-string v3, ")."

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    move v6, v2

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop
.end method
