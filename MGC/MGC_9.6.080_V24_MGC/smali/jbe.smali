.class public final Ljbe;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lsuu;

.field public b:Lsuu;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Lryb;

.field private h:B


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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljbf;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    const/16 p1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Ljbe;->e:Z

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p1, Ljbf;->c:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p1, Ljbf;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    iput-object v0, p0, Ljbe;->b:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    iget-object p1, p1, Ljbf;->g:Lryb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    iput v0, p0, Ljbe;->d:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iget-object v0, p1, Ljbf;->e:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Ljbe;->g:Lryb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Ljbe;->c:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-byte p1, p0, Ljbe;->h:B

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

    :goto_d
    iget-boolean v0, p1, Ljbf;->f:Z

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

    :goto_e
    iget-object v0, p1, Ljbf;->d:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    iput-boolean v0, p0, Ljbe;->f:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v0, p1, Ljbf;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    iput-object v0, p0, Ljbe;->a:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method


# virtual methods
.method public final a()Ljbf;
    .locals 10

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v6, :cond_0

    nop

    goto/32 :goto_15

    nop

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

    nop

    :goto_2
    const/16 v1, 0xf

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v2, v0

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_4
    iget-object v7, p0, Ljbe;->b:Lsuu;

    nop

    goto/32 :goto_d

    nop

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

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v4, p0, Ljbe;->d:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    const v1, 0xb

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-boolean v5, p0, Ljbe;->e:Z

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_b
    iget v3, p0, Ljbe;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    iget-object v6, p0, Ljbe;->a:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    if-nez v7, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    :goto_e
    throw p0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eq v0, v1, :cond_2

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    :goto_12
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    :goto_13
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_e

    nop

    nop

    :goto_14
    return-object v0

    nop

    :goto_15
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-boolean v8, p0, Ljbe;->f:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v9, :cond_4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1a
    iget-byte v0, p0, Ljbe;->h:B

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct/range {v2 .. v9}, Ljbf;-><init>(IIZLsuu;Lsuu;ZLryb;)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Ljbf;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v9, p0, Ljbe;->g:Lryb;

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
.end method

.method public final b(I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    int-to-byte p1, p1

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

    :goto_1
    or-int/lit8 p1, p1, 0x1

    nop

    nop

    goto/32 :goto_0

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
    iput p1, p0, Ljbe;->c:I

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

    :goto_4
    iput-byte p1, p0, Ljbe;->h:B

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

    :goto_5
    iget-byte p1, p0, Ljbe;->h:B

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

.method public final c(Lryb;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljbe;->g:Lryb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop
.end method

.method public final d(Z)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    or-int/lit8 p1, p1, 0x8

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iget-byte p1, p0, Ljbe;->h:B

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Ljbe;->f:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-byte p1, p0, Ljbe;->h:B

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    int-to-byte p1, p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final e(Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-byte p1, p0, Ljbe;->h:B

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Ljbe;->e:Z

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

    :goto_2
    int-to-byte p1, p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    or-int/lit8 p1, p1, 0x4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iput-byte p1, p0, Ljbe;->h:B

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final f(I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iget-byte p1, p0, Ljbe;->h:B

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

    :goto_1
    int-to-byte p1, p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-byte p1, p0, Ljbe;->h:B

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    or-int/lit8 p1, p1, 0x2

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
    iput p1, p0, Ljbe;->d:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    return-void

    nop
.end method
