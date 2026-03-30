.class public final Lta;
.super Le;
.source "PG"


# instance fields
.field public final a:Landroidx/wear/ambient/AmbientDelegate;


# direct methods
.method public constructor <init>(Landroidx/wear/ambient/AmbientDelegate;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Lta;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v0}, Le;-><init>([C)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p1, Lta;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    return v2

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    return v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lta;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_c
    if-eq p0, p1, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_10
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    :goto_11
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    :goto_12
    instance-of v1, p1, Lta;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    return v2

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p1, p1, Lta;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_3
    goto/32 :goto_14

    nop
.end method

.method public final hashCode()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lta;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->hashCode()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    const v1, 0x14

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

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

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

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 p0, 0x29

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    nop

    nop

    :goto_f
    const-string v1, "RequestClose(activeCamera="

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lta;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method
