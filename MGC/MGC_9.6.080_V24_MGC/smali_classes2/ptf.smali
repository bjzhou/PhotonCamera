.class public final Lptf;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/ContentResolver;

.field public final c:Landroid/net/Uri;

.field public final d:Landroid/net/Uri;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

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

    :goto_1
    throw p0

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lptf;->d:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    iput p12, p0, Lptf;->l:I

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

    :goto_2
    iput-object p10, p0, Lptf;->j:Ljava/lang/String;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p11, p0, Lptf;->k:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lptf;->a:Landroid/content/Context;

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

    :goto_5
    iput-object p6, p0, Lptf;->f:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    iput-object p7, p0, Lptf;->g:Ljava/lang/String;

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

    nop

    :goto_7
    iput-object p3, p0, Lptf;->c:Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p2, p0, Lptf;->b:Landroid/content/ContentResolver;

    nop

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

    :goto_9
    iput p8, p0, Lptf;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    iput-object p5, p0, Lptf;->e:Ljava/lang/String;

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

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    iput-object p9, p0, Lptf;->i:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop
.end method

.method public static a(Landroid/content/Context;)Lpte;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
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

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p0, v0, Lpte;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    iput-object p0, v0, Lpte;->b:Landroid/content/ContentResolver;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput v1, v0, Lpte;->d:I

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

    :goto_a
    or-int/lit8 p0, p0, 0x3

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

    :goto_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0}, Lpte;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

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

    :goto_e
    const v0, 0xf

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    iput-byte p0, v0, Lpte;->f:B

    nop

    nop

    nop

    goto/32 :goto_6

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
    int-to-byte p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    iget-byte p0, v0, Lpte;->f:B

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x1d

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Lpte;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_3b

    nop

    nop

    :goto_0
    if-eq v1, v3, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_5
    return v2

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lptf;->j:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    instance-of v1, p1, Lptf;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lptf;->f:Ljava/lang/String;

    nop

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

    nop

    :goto_a
    if-nez v1, :cond_3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_25

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

    goto/32 :goto_11

    nop

    nop

    :goto_c
    iget-object v3, p1, Lptf;->e:Ljava/lang/String;

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

    :goto_d
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_e
    iget-object v3, p1, Lptf;->b:Landroid/content/ContentResolver;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eq p1, p0, :cond_4

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eq p0, p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_6
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_15
    check-cast p1, Lptf;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_7
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v3, p1, Lptf;->j:Ljava/lang/String;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_18
    iget-object v3, p1, Lptf;->c:Landroid/net/Uri;

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

    :goto_19
    iget-object v3, p1, Lptf;->f:Ljava/lang/String;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1a
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_8
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget p1, p1, Lptf;->l:I

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

    :goto_1c
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_21
    iget-object v3, p1, Lptf;->i:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_23
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_f

    nop

    :goto_24
    iget-object v3, p1, Lptf;->g:Ljava/lang/String;

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_25
    iget-object v1, p0, Lptf;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_26
    iget v1, p0, Lptf;->k:I

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v1, p0, Lptf;->g:Ljava/lang/String;

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

    :goto_28
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_a
    goto/32 :goto_31

    nop

    nop

    :goto_2b
    iget v1, p0, Lptf;->h:I

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v1, p0, Lptf;->c:Landroid/net/Uri;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v3, p1, Lptf;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget p0, p0, Lptf;->l:I

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

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v1, p0, Lptf;->d:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v3, p1, Lptf;->k:I

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

    :goto_33
    if-eq v1, v3, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_34
    iget v3, p1, Lptf;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v1, :cond_c

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_9

    nop

    nop

    :goto_36
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v1, :cond_d

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_15

    nop

    nop

    :goto_39
    iget-object v1, p0, Lptf;->i:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3a
    iget-object v1, p0, Lptf;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const v1, 0xf

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

    nop

    :goto_3d
    if-nez v1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_e
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_3e
    iget-object v3, p1, Lptf;->d:Landroid/net/Uri;

    nop

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

    :goto_3f
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v1, p0, Lptf;->b:Landroid/content/ContentResolver;

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
.end method

.method public final hashCode()I
    .locals 4

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_0
    const v1, 0x19

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

    :goto_1
    mul-int/2addr v0, v3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    xor-int/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v2, p0, Lptf;->b:Landroid/content/ContentResolver;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4
    xor-int/2addr v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    xor-int/2addr p0, v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    xor-int/2addr v0, v2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    mul-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_c
    iget-object v0, p0, Lptf;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    iget v2, p0, Lptf;->h:I

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

    :goto_e
    const v1, 0xf4243

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

    :goto_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Lptf;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_12
    xor-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_0
    goto/32 :goto_36

    nop

    :goto_14
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_15
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_16
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_17
    iget-object v2, p0, Lptf;->f:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    xor-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v2, p0, Lptf;->g:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1a
    xor-int/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1b
    return p0

    nop

    :goto_1c
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1e
    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_37

    nop

    :goto_22
    xor-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v2, p0, Lptf;->i:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_25
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_26
    iget v2, p0, Lptf;->k:I

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v3, -0x2aff6277

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_28
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v2, p0, Lptf;->c:Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2a
    xor-int/2addr v0, v2

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2b
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2c
    xor-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget p0, p0, Lptf;->l:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2e
    const v0, 0xe

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_30
    xor-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_31
    iget-object v2, p0, Lptf;->j:Ljava/lang/String;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_32
    mul-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_33
    xor-int/2addr v0, v2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    mul-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v2, p0, Lptf;->d:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_36
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lptf;->e:Ljava/lang/String;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lptf;->j:Ljava/lang/String;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x4

    nop

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

    :goto_9
    iget-object v1, p0, Lptf;->c:Landroid/net/Uri;

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

    :goto_a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    const-string p0, "}"

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    const-string v5, "{"

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v0, p0, Lptf;->h:I

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, p0, Lptf;->b:Landroid/content/ContentResolver;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_16
    const v1, 0x11

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

    :goto_17
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1e

    nop

    nop

    :goto_18
    iget-object v0, p0, Lptf;->d:Landroid/net/Uri;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v3, p0, Lptf;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1e
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    :goto_1f
    iget v0, p0, Lptf;->k:I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lptf;->g:Ljava/lang/String;

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

    nop

    :goto_21
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_22
    const-string v3, ", "

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v0, ", 0, "

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-object p0

    nop

    :goto_2a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_38

    nop

    :cond_0
    goto/32 :goto_37

    nop

    :goto_2e
    iget p0, p0, Lptf;->l:I

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Lptf;->f:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Lptf;->i:Ljava/lang/String;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_36
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop
.end method
