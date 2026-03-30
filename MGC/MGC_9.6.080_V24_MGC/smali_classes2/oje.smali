.class public final Loje;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lojf;

.field public b:Lojf;

.field public c:Loiz;

.field public d:[Logb;

.field public e:Z

.field public f:I

.field private final g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x20

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
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Loje;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Lngq;-><init>(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x7

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_e
    iput-object v0, p0, Loje;->g:Ljava/lang/Runnable;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    new-instance v0, Lngq;

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
.end method


# virtual methods
.method public final a()Lhon;
    .locals 8

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1}, Lolx;->ah(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3
    goto :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_27

    nop

    nop

    :goto_6
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, v0}, Lolx;->Y(ZLjava/lang/Object;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Loje;->c:Loiz;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v3, p0, Loje;->c:Loiz;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    move v0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move v0, v2

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    :goto_e
    iget-object v4, p0, Loje;->d:[Logb;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_f
    const-string v3, "Must set unregister function"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    :goto_11
    goto :goto_b

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "Must set holder"

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    invoke-static {v0, v3}, Lolx;->Y(ZLjava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x9

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v3, "Must set register function"

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1a
    invoke-direct/range {v1 .. v6}, Lojd;-><init>(Loje;Loiz;[Logb;ZI)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1b
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    :goto_1d
    move-object v2, p0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1e
    iget-boolean v5, p0, Loje;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_20
    new-instance v0, Lhon;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Loje;->g:Ljava/lang/Runnable;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v0, v7, v1, p0}, Lhon;-><init>(Lojd;Landroidx/wear/ambient/AmbientMode$AmbientController;Ljava/lang/Runnable;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return-object v0

    nop

    :goto_25
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_26
    move v1, v2

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_28
    move v0, v1

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

    :goto_29
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2a
    move-object v1, v7

    nop

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

    :goto_2b
    invoke-direct {v1, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Loje;->c:Loiz;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v1, "Key must not be null"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2e
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_30
    new-instance v7, Lojd;

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

    nop

    :goto_31
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

    :goto_32
    invoke-static {v0, v3}, Lolx;->Y(ZLjava/lang/Object;)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Loje;->a:Lojf;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Loje;->b:Lojf;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_35
    iget v6, p0, Loje;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v0, v0, Loiz;->b:Loix;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop
.end method
