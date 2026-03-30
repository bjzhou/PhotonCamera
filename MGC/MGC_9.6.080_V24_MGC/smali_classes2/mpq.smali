.class public final synthetic Lmpq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:F

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljkg;FJI)V
    .locals 0

    goto/32 :goto_5

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
    iput-object p1, p0, Lmpq;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-wide p3, p0, Lmpq;->a:J

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

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput p2, p0, Lmpq;->b:F

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
    iput p5, p0, Lmpq;->d:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Lmpw;JFI)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmpq;->c:Ljava/lang/Object;

    nop

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

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-wide p2, p0, Lmpq;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iput p4, p0, Lmpq;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iput p5, p0, Lmpq;->d:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 7

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v1, Ljkg;

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

    :goto_1
    iget v1, p0, Lmpq;->b:F

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2
    check-cast v0, Lmpw;

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

    :goto_3
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Ljkj;->g:Lkbz;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v0}, Ljkg;->a(F)V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    :goto_9
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Lmpq;->b:F

    nop

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

    :goto_b
    invoke-interface {p0}, Lngo;->aB()V

    goto/32 :goto_17

    nop

    nop

    :goto_c
    iget-object v0, p0, Lmpq;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz p0, :cond_1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_34

    nop

    nop

    :goto_e
    invoke-interface {v4, v5, v6}, Lmyj;->h(J)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_f
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Ljkj;->f:Lngo;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    :goto_12
    const-string v1, "/video_state_recording_output"

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

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_16
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, v0, Lmpw;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p0}, Lkbz;->b()V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x7f130040

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

    :goto_1c
    iget-wide v4, p0, Lmpq;->a:J

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

    nop

    :goto_1d
    invoke-interface {p0, v3, v4, v5, v2}, Lngo;->I(IJZ)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1e
    float-to-int v3, v3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, v0}, Lmhf;->c(I)V

    :goto_20
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Lmpw;->k()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Ljkj;->I:Lmhf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_23
    iget-object p0, v0, Lmpw;->w:Lnsr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {p0}, Lngo;->p()V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_25
    div-float/2addr p0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    cmp-long p0, v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_27
    cmpl-float p0, v0, p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    mul-float/2addr v3, v0

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

    nop

    :goto_29
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    :goto_2a
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v1, p0, Lmpq;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/high16 v3, 0x42c80000    # 100.0f

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2d
    iget-object v2, v1, Ljkg;->a:Ljkj;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-wide v2, p0, Lmpq;->a:J

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_30
    iget-object v4, v0, Lmpw;->i:Lmyj;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    long-to-float p0, v4

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_32
    iget-object p0, v1, Ljkg;->a:Ljkj;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

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

    :goto_34
    iget-object p0, v1, Ljkg;->a:Ljkj;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_35
    invoke-interface {p0, v1, v5, v6}, Lnsr;->D(Ljava/lang/String;J)V

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_36
    iget-object p0, v0, Lmpw;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_37
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    :goto_39
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3b
    iget v0, p0, Lmpq;->d:I

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_3c
    const/high16 p0, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_3d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3e
    iget-object p0, v1, Ljkg;->a:Ljkj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3f
    float-to-long v5, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v2, 0x0

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

    :goto_41
    iget-object p0, v0, Lmpw;->l:Lngo;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p0, v2, Ljkj;->f:Lngo;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop
.end method
