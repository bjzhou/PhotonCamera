.class final Lkap;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkar;


# instance fields
.field private final a:Ljzf;

.field private volatile b:F

.field private volatile c:F

.field private final d:Lpck;

.field private final e:Llsn;


# direct methods
.method public constructor <init>(Ljzf;Llsn;Lpck;)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lkap;->b:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lkap;->c:F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    const p1, 0x7f7fffff    # Float.MAX_VALUE

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

    :goto_3
    iput-object p1, p0, Lkap;->a:Ljzf;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lkap;->d:Lpck;

    nop

    nop

    nop

    goto/32 :goto_5

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

    :goto_6
    iget p1, p2, Llsn;->a:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Lkap;->e:Llsn;

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

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop
.end method


# virtual methods
.method public final a()Lkak;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    sget-object p0, Lkak;->c:Lkak;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Llsc;Llsc;)Z
    .locals 6

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_0
    if-gtz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    :goto_1
    iget-object p2, p0, Lkap;->e:Llsn;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Lkap;->c:F

    nop

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

    :goto_3
    const v0, 0x3e851eb8    # 0.26f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_4
    int-to-float v0, v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v1, p1, p2}, Ljzf;->a(Llsc;Llsc;)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_25

    nop

    nop

    :goto_9
    iget-object v0, p0, Lkap;->d:Lpck;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_a
    iget p1, p0, Lkap;->b:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    cmp-long v0, p1, v2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    div-float/2addr p1, p2

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v2, p2, Llsc;->c:J

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_10
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_11
    cmpg-float v0, p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_12
    sub-float/2addr p2, v0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_13
    iget-wide p1, p1, Llsc;->c:J

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_31

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

    nop

    nop

    :goto_15
    const-wide/32 v2, 0xbebc200

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    iget p1, p2, Llsn;->b:F

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_17
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-gtz v0, :cond_2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_2f

    nop

    nop

    :goto_1a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    div-float/2addr v1, v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, p0, Lkap;->a:Ljzf;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v0, p0, Lkap;->b:F

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

    :goto_1e
    iget p2, p2, Llsn;->a:F

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_20
    return p0

    nop

    :goto_21
    goto/32 :goto_46

    nop

    nop

    :goto_22
    iput p1, p0, Lkap;->b:F

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_24
    div-double/2addr v2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x3e4ccccd    # 0.2f

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_26
    long-to-double p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_27
    cmpl-float p0, v1, p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-lez v0, :cond_3

    nop

    goto/32 :goto_3a

    nop

    :cond_3
    goto/32 :goto_39

    nop

    :goto_29
    iget v0, p2, Llsn;->b:F

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_2a
    cmpl-float v0, p1, v0

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

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2e
    add-float/2addr p1, v0

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput p1, p0, Lkap;->c:F

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_2

    nop

    nop

    :goto_32
    if-ltz v0, :cond_4

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget v0, v0, Lpck;->b:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_34
    const v0, 0x3fa66666    # 1.3f

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-gtz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_5
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_36
    return p0

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_38
    sub-long/2addr v2, p1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3b
    iget p1, p2, Llsn;->a:F

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const v2, -0x41b33333    # -0.2f

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_3d
    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3e
    cmpl-float v0, p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    float-to-double v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_40
    mul-double/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_41
    add-float/2addr p1, v2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_42
    const p2, 0x3d75c28c    # 0.059999987f

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_43
    double-to-float p1, v2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_44
    mul-float/2addr p1, p2

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

    :goto_45
    const v0, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_3a

    nop

    nop

    nop
.end method
