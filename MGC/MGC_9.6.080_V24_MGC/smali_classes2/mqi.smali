.class public final Lmqi;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lj$/time/Duration;

.field public b:Landroid/view/ViewGroup;

.field public c:Landroid/view/View;

.field public d:Z

.field public e:I

.field public f:Lkyf;

.field public g:Lixe;

.field public h:Lmjv;

.field private final i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    iput-object v0, p0, Lmqi;->c:Landroid/view/View;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    :goto_6
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    const/16 v1, 0xb

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Ljic;-><init>(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    iput-boolean v0, p0, Lmqi;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lmqi;->i:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    new-instance v0, Ljic;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    iput v0, p0, Lmqi;->e:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop
.end method


# virtual methods
.method public final a()Lmqj;
    .locals 8

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lmqj;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1
    const v1, 0x2

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

    nop

    nop

    :goto_2
    iget-object v5, p0, Lmqi;->i:Ljava/lang/Runnable;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v1, p0, v0, v2, v3}, Lmiv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_10

    nop

    nop

    :goto_4
    iget-object v0, p0, Lmqi;->g:Lixe;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x6

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_a
    new-instance v1, Lmiv;

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

    :goto_b
    invoke-direct/range {v1 .. v7}, Lmqj;-><init>(Lj$/time/Duration;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Runnable;IZ)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v6, p0, Lmqi;->e:I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lmqi;->b:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_10
    iput-object v1, v0, Lmqj;->c:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

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

    :goto_13
    return-object v0

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lmqi;->c:Landroid/view/View;

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

    :goto_16
    const v0, 0x1c

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

    :goto_17
    add-int v0, v0, v1

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

    :goto_18
    iget-object v0, p0, Lmqi;->h:Lmjv;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    iget-object v3, p0, Lmqi;->b:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1b
    iget-object v0, p0, Lmqi;->f:Lkyf;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p0, Lmqi;->a:Lj$/time/Duration;

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

    :goto_1e
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-boolean v7, p0, Lmqi;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1f

    nop

    nop

    :goto_21
    iget-object v0, p0, Lmqi;->c:Landroid/view/View;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_23
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object v1, v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_25
    iget-object v4, p0, Lmqi;->c:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_26
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_27
    if-nez v7, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method
