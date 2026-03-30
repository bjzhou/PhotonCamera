.class public final Ljub;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Ljub;->a:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Ljub;->b:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Ljub;->c:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lhoh;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Ljub;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lhnb;->f:Lhmn;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lhnb;->e:Lhmn;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Ljub;->c:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    sget-object v0, Lhnb;->d:Lhmn;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean v0, p0, Ljub;->b:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public constructor <init>(Ljua;)V
    .locals 8

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    cmpl-float v1, v2, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1
    const/high16 v1, 0x428c0000    # 70.0f

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

    :goto_2
    cmpl-float v7, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_7
    move v1, v5

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_8
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_35

    nop

    :goto_a
    goto/32 :goto_34

    nop

    nop

    :goto_b
    iget-boolean v1, p1, Ljua;->g:Z

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/high16 v7, 0x43340000    # 180.0f

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

    :goto_d
    iput-boolean v1, p0, Ljub;->a:Z

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    div-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    iget v0, p1, Ljua;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    iget v2, p1, Ljua;->d:I

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    int-to-float v1, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    div-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-ltz v7, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    iget-boolean v1, p1, Ljua;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    :goto_16
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_18
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_15

    nop

    :goto_1a
    iget v1, p1, Ljua;->e:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    iput-boolean v5, p0, Ljub;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v3, p1, Ljua;->f:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1e
    iget-boolean v1, p1, Ljua;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1f
    goto :goto_2b

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_21
    cmpl-float v0, v0, v4

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-boolean p1, p1, Ljua;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-boolean p1, p0, Ljub;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_25
    const/high16 v4, 0x43b40000    # 360.0f

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_26
    if-gez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_27
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_28
    const/4 v6, 0x0

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

    :goto_29
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2a
    move v1, v6

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_d

    nop

    nop

    :goto_2c
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2d
    mul-float/2addr v2, v7

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    :goto_2f
    if-eqz v1, :cond_5

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_5
    goto/32 :goto_1

    nop

    nop

    :goto_30
    mul-float/2addr v0, v4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_32
    if-eqz v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    :goto_33
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_34
    move v5, v6

    nop

    nop

    :goto_35
    goto/32 :goto_1b

    nop

    nop

    nop
.end method

.method public static a(Lnne;)Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

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

    :goto_1
    sget-object v0, Lnne;->p:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    sget-object v0, Lnne;->q:Lnne;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_c

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v0

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
    const/4 p0, 0x0

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

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
