.class public final Lfrm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfrn;


# instance fields
.field private final a:Lfmf;

.field private final b:Lfrn;

.field private final c:Lfrn;


# direct methods
.method public constructor <init>(Lfmf;Lfrn;Lfrn;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lfrm;->c:Lfrn;

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
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lfrm;->a:Lfmf;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lfrm;->b:Lfrn;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lflx;Lfjp;)Lflx;
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Lflx;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    instance-of v0, v0, Lfrd;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, p0}, Lfqg;->g(Landroid/graphics/Bitmap;Lfmf;)Lfqg;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

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

    :goto_a
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x16

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lfrm;->a:Lfmf;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p1, p0, Lfrm;->b:Lfrn;

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

    :goto_15
    iget-object p0, p0, Lfrm;->c:Lfrn;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    invoke-interface {p1, p0, p2}, Lfrn;->a(Lflx;Lfjp;)Lflx;

    move-result-object p0

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

    :goto_17
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v0, Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1a
    return-object p0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p0, p1, p2}, Lfrn;->a(Lflx;Lfjp;)Lflx;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop
.end method
