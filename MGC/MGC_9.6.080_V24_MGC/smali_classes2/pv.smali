.class public final Lpv;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lwf;

.field public final b:Lpn;


# direct methods
.method public constructor <init>(Lwf;Lpn;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lpv;->b:Lpn;

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
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lpv;->a:Lwf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1
    const v0, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6
    iget-object p1, p1, Lpv;->b:Lpn;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    return v2

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x1

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

    :goto_c
    iget-object v3, p1, Lpv;->a:Lwf;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_d
    return v2

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lpv;->a:Lwf;

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

    nop

    :goto_10
    check-cast p1, Lpv;

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

    :goto_11
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_12
    goto/32 :goto_1d

    nop

    nop

    :goto_13
    if-eqz v1, :cond_0

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

    nop

    nop

    :goto_14
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_18
    if-eq p0, p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_19
    instance-of v1, p1, Lpv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1a
    return v0

    nop

    nop

    :goto_1b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_b

    nop

    nop

    :goto_1e
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    :goto_1f
    iget-object p0, p0, Lpv;->b:Lpn;

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    add-int/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    return v0

    nop

    nop

    :goto_5
    iget-object v0, p0, Lpv;->a:Lwf;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lpv;->b:Lpn;

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Lpv;->a:Lwf;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lpv;->b:Lpn;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    const v1, 0xf

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    sget-object v1, Lcom/google/android/apps/camera/ui/remotecontrol/Gizr/bXyemjIV;->anKEoJNgbD:Ljava/lang/String;

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

    :goto_10
    const/16 p0, 0x29

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v1, "InputRequest(image="

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop
.end method
