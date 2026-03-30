.class public final Lohw;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:I

.field private final b:Logy;

.field private final c:Ljava/lang/String;

.field private final d:Lnar;


# direct methods
.method public constructor <init>(Lnar;Logy;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lohw;->d:Lnar;

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

    :goto_2
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lohw;->b:Logy;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput p1, p0, Lohw;->a:I

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

    :goto_7
    iput-object p3, p0, Lohw;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnar;->b:Ljava/lang/Object;

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

    :goto_1
    check-cast p0, Ljava/lang/String;

    nop

    goto/32 :goto_2

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
    iget-object p0, p0, Lohw;->d:Lnar;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_21

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-static {v2, v3}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    :goto_4
    goto/32 :goto_13

    nop

    nop

    :goto_5
    iget-object p0, p0, Lohw;->c:Ljava/lang/String;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_7
    if-eqz v2, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_8
    return v1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    instance-of v2, p1, Lohw;

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

    nop

    :goto_b
    const v1, 0x13

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

    nop

    nop

    :goto_c
    invoke-static {p0, p1}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    iget-object v3, p1, Lohw;->d:Lnar;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1f

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    :goto_12
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    invoke-static {v2, v3}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    :goto_17
    iget-object v2, p0, Lohw;->b:Logy;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p1, p1, Lohw;->c:Ljava/lang/String;

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

    nop

    :goto_19
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz p1, :cond_4

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1c
    return v1

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1e
    iget-object v3, p1, Lohw;->b:Logy;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1f
    check-cast p1, Lohw;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v2, :cond_5

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_22
    if-eq p1, p0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v2, p0, Lohw;->d:Lnar;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_24
    const/4 v0, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop
.end method

.method public final hashCode()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lohw;->a:I

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
    return p0

    nop

    nop

    nop
.end method
