.class public final Lpux;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpun;

.field public final b:Lpur;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lpur;)V
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lpux;->b:Lpur;

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

    :goto_1
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lpux;->a:Lpun;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Lpum;->a()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x0

    nop

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

    :goto_6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

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

    :goto_7
    iget-object p1, v1, Lpum;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_8
    new-instance v0, Lpun;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_9
    iget-byte p1, v1, Lpum;->e:B

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_b
    invoke-direct {v1, v2}, Lpum;-><init>([B)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    iget-object v3, v1, Lpum;->c:Lrss;

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

    nop

    :goto_e
    iput-object p1, v1, Lpum;->c:Lrss;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    invoke-direct {v0, p1, v2, v3, v1}, Lpun;-><init>(Landroid/content/Context;Lrss;Lrss;Lrss;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Lpum;->a()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eq p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p1, v1, Lpum;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_16
    iget-object v1, v1, Lpum;->d:Lrss;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x16

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v1, Lpum;

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

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_21
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_22
    iget-object v2, v1, Lpum;->b:Lrss;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v0}, Lpuy;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_17

    nop

    nop

    :goto_27
    new-instance v0, Lpuy;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Landroid/content/Context;Lpul;)Lpux;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v1, Lpur;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    return-object v0

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0, v1}, Lpux;-><init>(Landroid/content/Context;Lpur;)V

    goto/32 :goto_2

    nop

    nop

    :goto_5
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_b
    invoke-direct {v1, p1}, Lpur;-><init>(Lpul;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lpux;

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

    :goto_d
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x10

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

    nop

    nop

    :goto_7
    const-string p0, "}"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

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

    nop

    :goto_b
    const-string v1, ", basis="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lpux;->a:Lpun;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    :goto_11
    const v1, 0x8

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

    nop

    nop

    :goto_12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v1, "CollectionBasisLogVerifier{collectionBasisContext="

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

    :goto_14
    iget-object p0, p0, Lpux;->b:Lpur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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
.end method
