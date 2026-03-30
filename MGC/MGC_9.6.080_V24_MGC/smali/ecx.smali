.class public Lecx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public d:I

.field public final e:Landroid/content/Context;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Lecr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lecx;->e:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

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

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iput-boolean v0, p0, Lecx;->f:Z

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    const v1, 0x12

    nop

    nop

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

    :goto_c
    iput-boolean v1, p0, Lecx;->h:Z

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

    :goto_d
    const v0, 0x7

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    iput-boolean v0, p0, Lecx;->i:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    iput-boolean v0, p0, Lecx;->g:Z

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public static final e(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "null"

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    const/16 v1, 0x40

    nop

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

    nop

    :goto_d
    const-string p0, "}"

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

    nop

    nop

    :goto_e
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    const v1, 0xd

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    nop

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

    :goto_14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    :goto_15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_16
    goto/32 :goto_12

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_18
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v1, "{"

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    :goto_1d
    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public d()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_15

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

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string p0, "}"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

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

    :goto_5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x6

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v1, 0x40

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v1, " id="

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_f
    const-string v1, "{"

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_10
    return-object p0

    nop

    :goto_11
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget p0, p0, Lecx;->d:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_15
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    :goto_19
    goto/32 :goto_c

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method
