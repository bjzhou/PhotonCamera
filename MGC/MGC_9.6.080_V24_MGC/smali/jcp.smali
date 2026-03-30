.class public final Ljcp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Linb;

.field final b:Llhz;

.field final c:I

.field final d:Lpsf;

.field public final e:Lsuu;

.field final f:Ljava/util/List;

.field final g:Lsuu;

.field final h:Lsuu;

.field final i:Landroid/os/ConditionVariable;

.field final j:Ljava/util/List;

.field k:I

.field l:I

.field m:J

.field n:Ljcv;

.field o:I


# direct methods
.method public constructor <init>(Linb;Llhz;ILpsf;Lsuu;)V
    .locals 5

    goto/32 :goto_16

    nop

    nop

    :goto_0
    if-eq p5, v1, :cond_0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_31

    nop

    nop

    :goto_1
    iput-object p4, p0, Ljcp;->f:Ljava/util/List;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_2
    iput-object p2, p0, Ljcp;->b:Llhz;

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

    :goto_3
    iput v0, p0, Ljcp;->l:I

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4
    cmp-long p5, v3, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Ljcp;->g:Lsuu;

    nop

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

    :goto_6
    invoke-virtual {p5}, Lcom/google/googlex/gcam/FrameRequest;->d()Lsxd;

    move-result-object p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    new-instance p4, Lsuu;

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

    :goto_8
    iput-object p5, p0, Ljcp;->e:Lsuu;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_9
    new-instance p4, Lsuu;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Ljcp;->n:Ljcv;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v1, Lsxd;->c:Lsxd;

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

    :goto_c
    goto/16 :goto_3b

    nop

    nop

    :goto_d
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_e
    int-to-long v3, v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Ljcp;->o:I

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_10
    iput p3, p0, Ljcp;->c:I

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p5, v0}, Lcom/google/googlex/gcam/FrameRequestVector;->b(I)Lcom/google/googlex/gcam/FrameRequest;

    move-result-object p5

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Linb;->a()I

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0xf

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

    nop

    :goto_17
    goto/32 :goto_41

    nop

    nop

    :goto_18
    const/4 p5, 0x1

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

    :goto_19
    add-int v0, v0, v1

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

    :goto_1a
    goto :goto_11

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    new-instance p4, Landroid/os/ConditionVariable;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p4, p5}, Landroid/os/ConditionVariable;-><init>(Z)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object p4, p0, Ljcp;->d:Lpsf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1f
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_21
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_40

    nop

    :goto_22
    if-nez p2, :cond_2

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_23
    if-ltz p5, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p4}, Lsuu;-><init>()V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

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

    :goto_29
    const-wide/16 p4, 0x0

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

    :goto_2a
    sget-object p0, Lsed;->a:Lsdr;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {p4}, Lsuu;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput-object p4, p0, Ljcp;->h:Lsuu;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object p4, p0, Ljcp;->j:Ljava/util/List;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2e
    iput-wide p4, p0, Ljcp;->m:J

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2f
    iput p2, p0, Ljcp;->c:I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_30
    iput v0, p0, Ljcp;->o:I

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_31
    add-int/lit8 p4, p4, 0x1

    nop

    nop

    :goto_32
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_33
    iput-object p4, p0, Ljcp;->i:Landroid/os/ConditionVariable;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_34
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_35
    new-instance p4, Ljava/util/ArrayList;

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

    :goto_36
    invoke-virtual {p2}, Lcom/google/googlex/gcam/BurstSpec;->c()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object p5

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput-object p1, p0, Ljcp;->a:Linb;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_38
    iput v0, p0, Ljcp;->k:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_39
    new-instance p4, Ljava/util/ArrayList;

    nop

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

    nop

    :goto_3a
    move p4, v0

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p2}, Lcom/google/googlex/gcam/BurstSpec;->c()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object p5

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_3d
    iget-object p2, p2, Llhz;->o:Lcom/google/googlex/gcam/BurstSpec;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_40
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p5}, Lcom/google/googlex/gcam/FrameRequestVector;->a()J

    move-result-wide v1

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
.end method
