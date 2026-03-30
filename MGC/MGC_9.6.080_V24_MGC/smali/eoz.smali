.class public final Leoz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Leoe;

.field private final b:Ldwy;

.field private final c:F


# direct methods
.method public constructor <init>(Leoe;Ldwy;F)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Leoz;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Leoz;->b:Ldwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Leoz;->a:Leoe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return-void

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xe

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Leoz;->c:F

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_19

    nop

    nop

    :goto_6
    check-cast p1, Leoz;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_9
    iget p1, p1, Leoz;->c:F

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a
    return v0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_18

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

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

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

    :goto_e
    return v2

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x0

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

    :goto_11
    return v2

    nop

    :goto_12
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_28

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_20

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    cmpg-float p0, p0, p1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_19
    invoke-static {v1, v2}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1a
    const v0, 0x6

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

    :goto_1b
    iget-object v1, p0, Leoz;->b:Ldwy;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v3, p1, Leoz;->b:Ldwy;

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

    nop

    :goto_1d
    iget-object v3, p1, Leoz;->a:Leoe;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v1, :cond_1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1f
    if-eq p0, p1, :cond_2

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_20
    iget-object v1, p0, Leoz;->a:Leoe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_21
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_4

    nop

    nop

    :goto_27
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_29
    if-nez p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_24

    nop

    nop

    :goto_2a
    if-eqz p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2c
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2d
    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Leoz;->a:Leoe;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Leoe;->hashCode()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v0

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Leoz;->b:Ldwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ldwy;->hashCode()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x11

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
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    :goto_c
    const/16 p0, 0x29

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Leoz;->a:Leoe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_10
    const-string v1, ", windowInsetsCompat="

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Leoz;->b:Ldwy;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v1, "WindowMetrics( bounds="

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

    :goto_14
    goto/32 :goto_2

    nop

    :goto_15
    goto/32 :goto_6

    nop

    nop
.end method
