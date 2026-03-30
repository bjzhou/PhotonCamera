.class public final synthetic Ltby;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/googlex/gcam/hdrplus/MergedLumaDenoisedCallback;


# instance fields
.field public final synthetic a:Limz;


# direct methods
.method public synthetic constructor <init>(Limz;)V
    .locals 0

    goto/32 :goto_0

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
    iput-object p1, p0, Ltby;->a:Limz;

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

    :goto_2
    return-void

    nop
.end method


# virtual methods
.method public final accept(IJJ)I
    .locals 1

    goto/32 :goto_2a

    nop

    nop

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p3, p4, p1, p2}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_18

    nop

    nop

    :goto_4
    iget-object p0, p3, Linb;->l:Lind;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    :goto_6
    const/4 p0, 0x2

    nop

    :goto_7
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_8
    check-cast p3, Linb;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lsyv;->a:Lcom/google/googlex/gcam/GrayImageS16;

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_a
    invoke-virtual {p3}, Linb;->a()I

    goto/32 :goto_33

    nop

    nop

    :goto_b
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_c
    check-cast p0, Llnt;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_d
    iget-object p0, p0, Lind;->b:Lrss;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    invoke-static {p1, p2}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p2, Lilk;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    invoke-direct {p2, p1}, Lilk;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Limz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string p2, "doneWriting() must be called before getImage."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    const-string p3, "Failed to obtain luma-denoised image."

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_14
    invoke-direct {v0, p4, p5}, Lcom/google/googlex/gcam/ShotMetadata;-><init>(J)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_15
    iget-object p0, p1, Llnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_16
    sget-object p1, Llii;->a:Lsdb;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Ltby;->a:Limz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_18
    new-instance p1, Lcom/google/googlex/gcam/GrayImageS16;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_7

    nop

    nop

    :goto_1a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 p2, 0x0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object p3, Lcom/google/android/apps/camera/imax/cyclops/processing/jQJ/fbmdK;->vkfpwADXZYTti:Ljava/lang/String;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1f
    const/16 p4, 0xe96

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_20
    const/4 p3, 0x0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_21
    iget-boolean p0, p0, Llii;->e:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p1, Lind;->b:Lrss;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    cmp-long p2, p2, p4

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_24
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-wide/16 p2, 0x0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_26
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidAllocationId_get()J

    move-result-wide p4

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget-object p2, Llii;->a:Lsdb;

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

    :goto_28
    return p0

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v0, Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast p0, Llii;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2c
    iget-object p1, p3, Linb;->l:Lind;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1, p3, p0, v0}, Llnt;->a(Linb;Lcom/google/googlex/gcam/GrayImageS16;Lcom/google/googlex/gcam/ShotMetadata;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p1, p2, p3}, Lcom/google/googlex/gcam/GrayImageS16;-><init>(J)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2f
    iget-object p3, p0, Limz;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_30
    check-cast p0, Lsyv;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {p3, p1}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-nez p2, :cond_1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_33
    check-cast p1, Llnt;

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_34
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_35
    check-cast p3, Linb;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_36
    iget-boolean p1, p0, Lsyv;->b:Z

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

    :goto_37
    invoke-virtual {p0, p2, p1, p2}, Llnt;->a(Linb;Lcom/google/googlex/gcam/GrayImageS16;Lcom/google/googlex/gcam/ShotMetadata;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method
