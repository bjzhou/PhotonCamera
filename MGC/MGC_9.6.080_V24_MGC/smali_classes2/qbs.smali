.class public final synthetic Lqbs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrsk;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field private final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lnjb;IILandroid/view/SurfaceView;I)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lqbs;->c:Ljava/lang/Object;

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

    :goto_1
    iput p3, p0, Lqbs;->a:I

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

    nop

    :goto_2
    iput p2, p0, Lqbs;->b:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    iput-object p1, p0, Lqbs;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iput p5, p0, Lqbs;->e:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Lqbv;IILrss;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lqbs;->c:Ljava/lang/Object;

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
    iput p5, p0, Lqbs;->e:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lqbs;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    iput-object p4, p0, Lqbs;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

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
    iput p3, p0, Lqbs;->a:I

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
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Lqbs;->a:I

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1
    check-cast v2, Landroid/view/SurfaceView;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1, v3, v4}, Lnje;->b(II)Lrss;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Ljava/util/List;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

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
    invoke-virtual/range {v2 .. v7}, Lqbv;->o(ILtkb;JLsre;)V

    goto/32 :goto_31

    nop

    nop

    :goto_9
    iget-object p0, p0, Lqbs;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v7, Lsre;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_b
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_c
    check-cast v1, Lnjb;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    :goto_e
    int-to-long v0, v1

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

    :goto_f
    check-cast v5, Ltkb;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lqbs;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    const/4 v5, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_15
    move-object v2, v0

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

    :goto_16
    iget v3, p0, Lqbs;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    move-object v4, v5

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

    :goto_18
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_19
    iget-object v2, p0, Lqbs;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    iget v0, p0, Lqbs;->e:I

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

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v0, Lrss;

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

    nop

    :goto_1d
    iget-object v0, p0, Lqbs;->d:Ljava/lang/Object;

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

    :goto_1e
    move-wide v5, v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v4, v5}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v5

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

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_21
    check-cast p1, Lnje;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_22
    check-cast v2, Lqbv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_23
    iget v4, p0, Lqbs;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_24
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_25
    move-object v0, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_26
    invoke-direct/range {v0 .. v5}, Lnja;-><init>(Lnjb;Landroid/view/SurfaceView;III)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_3
    goto/32 :goto_2c

    nop

    :goto_28
    new-instance v6, Lnja;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_29
    move-object v7, v0

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

    :goto_2a
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v5, v4}, Ltkb;->r(Ltkg;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_36

    nop

    :goto_2d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast p0, Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2f
    check-cast v4, Lsqr;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_30
    invoke-virtual {p1, v6}, Lrss;->d(Lrtm;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_31
    goto :goto_39

    nop

    nop

    :goto_32
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_34
    const v1, 0x1d

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

    :goto_35
    return-object p0

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget v3, p0, Lqbs;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    :goto_39
    goto/32 :goto_4

    nop

    nop
.end method
