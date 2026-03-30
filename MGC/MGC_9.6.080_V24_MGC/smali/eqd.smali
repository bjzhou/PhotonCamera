.class public final Leqd;
.super Landroidx/wear/ambient/WearableControllerProvider;
.source "PG"


# instance fields
.field public final b:Lepu;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    sget-object v0, Lepu;->a:Lepu;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, v1}, Landroidx/wear/ambient/WearableControllerProvider;-><init>([C)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1f

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    iput-object v0, p0, Leqd;->b:Lepu;

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

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    const v1, 0x8

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    check-cast p1, Leqd;

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
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p1, Leqd;->b:Lepu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_b
    return p0

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xa

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1}, Lepu;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_f
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    return p0

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eq p0, p1, :cond_3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Leqd;->b:Lepu;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_18

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lepu;->hashCode()I

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    const v0, 0x2f9dc8

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Leqd;->b:Lepu;

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

    :goto_4
    add-int/2addr v0, p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Leqd;->b:Lepu;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v1, "Failure {mOutputData="

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    const/16 p0, 0x7d

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1a

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method
