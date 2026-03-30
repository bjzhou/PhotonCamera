.class public final Lkcf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lkcf;

.field public static final b:Lkcf;


# instance fields
.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    new-instance v0, Lkcf;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Lkcf;-><init>(Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Lkcf;-><init>(Z)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_b
    sput-object v0, Lkcf;->a:Lkcf;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lkcf;

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

    :goto_e
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sput-object v0, Lkcf;->b:Lkcf;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

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

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Lkcf;->c:Z

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
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_e

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    instance-of v1, p1, Lkcf;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    if-eq p1, p0, :cond_0

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

    :cond_0
    goto/32 :goto_12

    nop

    nop

    :goto_5
    const/4 v2, 0x0

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

    :goto_6
    goto/32 :goto_a

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_9
    return v2

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    return v0

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    :goto_e
    const v0, 0x15

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

    :goto_f
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    :goto_11
    iget-boolean p1, p1, Lkcf;->c:Z

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

    :goto_12
    return v0

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    :goto_14
    if-eq p0, p1, :cond_3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    check-cast p1, Lkcf;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean p0, p0, Lkcf;->c:Z

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 1

    goto/32 :goto_9

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Lkcf;->c:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    xor-int/2addr p0, v0

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
    return p0

    nop

    nop

    :goto_3
    const v0, 0xf4243

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

    :goto_4
    const/16 p0, 0x4cf

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    if-ne v0, p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_7
    goto :goto_5

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    const/16 p0, 0x4d5

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0xd

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

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    const v1, 0xe

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

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    const-string p0, "}"

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    iget-boolean p0, p0, Lkcf;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v1, "{"

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
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop
.end method
