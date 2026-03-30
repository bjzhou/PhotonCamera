.class public final synthetic Ltbw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/googlex/gcam/hdrplus/MergedRawCallback;


# instance fields
.field public final synthetic a:Limz;


# direct methods
.method public synthetic constructor <init>(Limz;)V
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

    :goto_1
    iput-object p1, p0, Ltbw;->a:Limz;

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

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final accept(IJJI)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p2, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p3, p1}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lind;->j()Lrss;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lsza;->a:Lsye;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    iget-object p0, p4, Linb;->l:Lind;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p4, p0, Limz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

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

    nop

    :goto_7
    new-instance v0, Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_9
    iget-object p1, p4, Linb;->l:Lind;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    invoke-static {p5, p6}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    :goto_d
    check-cast p0, Lsza;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidAllocationId_get()J

    move-result-wide p5

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

    :goto_10
    check-cast p4, Linb;

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

    :goto_11
    invoke-virtual {p5}, Lind;->j()Lrss;

    move-result-object p5

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

    :goto_12
    const-string p3, "MergeRaw failed (shotId = %d)"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    iget p5, p4, Linb;->u:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p5}, Lrss;->h()Z

    move-result p5

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_15
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    check-cast p0, Lilo;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Lind;->j()Lrss;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_18
    invoke-interface {p1, p4, p0, v0}, Lilo;->a(Linb;Lsye;Lcom/google/googlex/gcam/ShotMetadata;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0, p4, p5}, Lcom/google/googlex/gcam/ShotMetadata;-><init>(J)V

    goto/32 :goto_2f

    nop

    nop

    :goto_1a
    invoke-static {p5}, Linb;->f(Lmmw;)Lsxn;

    move-result-object p5

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast p1, Lilo;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1c
    iget-boolean p1, p0, Lsza;->b:Z

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

    :goto_1d
    goto :goto_23

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance p2, Lilk;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Ltbw;->a:Limz;

    nop

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

    :goto_21
    if-eq p5, p6, :cond_1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_22
    const/4 p6, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p6}, Lrrf;->x(Z)V

    goto/32 :goto_26

    nop

    nop

    :goto_25
    const/4 p6, 0x1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p5, p4, Linb;->l:Lind;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v0, p5}, Lsgj;->A(Lcom/google/googlex/gcam/ShotMetadata;Lsxn;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p5, p4, Linb;->r:Lmmw;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_29
    invoke-interface {p0, p2}, Lilo;->b(Lilk;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const-string p6, "Got merged RAW callback but no callback present"

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p4, v0}, Linb;->c(Lcom/google/googlex/gcam/ShotMetadata;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2c
    cmp-long p2, p2, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2d
    return-void

    nop

    nop

    nop

    nop

    :goto_2e
    const-string p2, "doneWriting() must be called before getImage."

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2f
    invoke-static {p6}, Lsya;->a(I)Lsya;

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_30
    iget-object p0, p0, Limz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {p1, p2}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {p2, p1}, Lilk;-><init>(Ljava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop
.end method
