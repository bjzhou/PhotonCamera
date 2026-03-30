.class public final Ldua;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldua;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ldua;

    nop

    nop

    nop

    goto/32 :goto_b

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

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x17

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    const v1, 0x10

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    invoke-direct {v0, v1, v1, v1, v1}, Ldua;-><init>(IIII)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sput-object v0, Ldua;->a:Ldua;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>(IIII)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iput p3, p0, Ldua;->d:I

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput p4, p0, Ldua;->e:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Ldua;->c:I

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput p1, p0, Ldua;->b:I

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

    :goto_4
    return-void

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop
.end method

.method public static b(IIII)Ldua;
    .locals 1

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    if-nez p3, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0, p1, p2, p3}, Ldua;-><init>(IIII)V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    new-instance v0, Ldua;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    move p1, p0

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

    :goto_5
    if-eqz p1, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move p2, p1

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

    :goto_7
    move p1, p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_8

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    if-eqz p0, :cond_2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    :goto_e
    if-eqz p2, :cond_3

    nop

    goto/32 :goto_a

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    sget-object p0, Ldua;->a:Ldua;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public static c(Landroid/graphics/Insets;)Ldua;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    const v1, 0x9

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

    :goto_2
    goto/32 :goto_d

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    invoke-static {v0, v1, v2, p0}, Ldua;->b(IIII)Ldua;

    move-result-object p0

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

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

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

    nop

    :goto_8
    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Landroid/graphics/Insets;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    iget v2, p0, Landroid/graphics/Insets;->right:I

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

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v1, p0, Landroid/graphics/Insets;->top:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/graphics/Insets;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    const v1, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v1, p0, Ldua;->c:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

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

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    iget v2, p0, Ldua;->d:I

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

    :goto_a
    iget v0, p0, Ldua;->b:I

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

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    iget p0, p0, Ldua;->e:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_12

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_14

    nop

    :goto_1
    iget p1, p1, Ldua;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-ne v2, v3, :cond_1

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

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    if-eq p0, p1, :cond_2

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ne v2, v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    check-cast p1, Ldua;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v3, p1, Ldua;->e:I

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

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_24

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v2, p0, Ldua;->b:I

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_c
    if-ne v2, v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return v1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v2, p0, Ldua;->e:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0xe

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1c

    nop

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    if-ne p0, p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_28

    nop

    nop

    :goto_17
    iget p0, p0, Ldua;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_19
    iget v2, p0, Ldua;->d:I

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1b
    return v1

    nop

    :goto_1c
    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    iget v3, p1, Ldua;->d:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_20
    iget v3, p1, Ldua;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_21
    const v1, 0x15

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return v0

    nop

    nop

    :goto_24
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_25
    return v1

    nop

    nop

    :goto_26
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-ne v2, v3, :cond_7

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return v1

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_23

    nop

    nop

    :goto_2a
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Ldua;->e:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iget v1, p0, Ldua;->c:I

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

    :goto_2
    iget v0, p0, Ldua;->b:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    mul-int/lit8 v0, v0, 0x1f

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

    nop

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    return v0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

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

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_10
    const v1, 0x13

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    iget v1, p0, Ldua;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Ldua;->b:I

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

    :goto_1
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

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
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 p0, 0x7d

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    const-string v1, ", top="

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v1, p0, Ldua;->d:I

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_f
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    const-string v1, ", bottom="

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_11
    iget v1, p0, Ldua;->c:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    iget p0, p0, Ldua;->e:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x15

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_c

    nop

    nop

    :goto_18
    const-string v1, "Insets{left="

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v1, ", right="

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method
