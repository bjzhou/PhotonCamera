.class public final Lphk;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpnx;

.field public final b:Lprw;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpnx;Lprw;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lphk;->b:Lprw;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p1, p0, Lphk;->a:Lpnx;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    instance-of v1, p1, Lphk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    iget-object p0, p1, Lphk;->b:Lprw;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v3, p1, Lphk;->a:Lpnx;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    return v2

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lphk;->b:Lprw;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xf

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eq p1, p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p1, Lphk;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0, p1}, Lprw;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    if-eqz p0, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_22

    nop

    :goto_12
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_2

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

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz p0, :cond_3

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

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_15
    return v0

    nop

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Lphk;->a:Lpnx;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

    :goto_1b
    invoke-virtual {v1, v3}, Lpnx;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1d
    if-nez v1, :cond_6

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

    :cond_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p1, Lphk;->b:Lprw;

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

    :goto_1f
    return v0

    nop

    nop

    :goto_20
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_21
    goto :goto_20

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    xor-int/2addr p0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    goto :goto_10

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lphk;->b:Lprw;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_9
    mul-int/2addr p0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lphk;->a:Lpnx;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x17

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0}, Lprw;->hashCode()I

    move-result v0

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    xor-int/2addr p0, v0

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

    :goto_12
    const v1, 0xf4243

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    iget p0, p0, Lpnx;->b:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    nop

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    :goto_b
    goto/32 :goto_18

    nop

    :goto_c
    iget-object v0, p0, Lphk;->b:Lprw;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    const-string p0, ", "

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lphk;->a:Lpnx;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    sget-object p0, Landroidx/viewpager2/widget/jY/lIiWb;->ovKfgG:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v2, Lwireless/android/learning/acmi/p11/metadata/eGU/nQGhNZMKfLcyQ;->vbEPcSYarMpx:Ljava/lang/String;

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

    nop

    nop

    :goto_17
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Lpnx;->a:Ljava/lang/String;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
