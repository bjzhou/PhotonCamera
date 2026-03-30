.class public final Lfpe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfjs;


# instance fields
.field private final a:Lfmf;

.field private final b:Lfjs;


# direct methods
.method public constructor <init>(Lfmf;Lfjs;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lfpe;->a:Lfmf;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lfpe;->b:Lfjs;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/io/File;Lfjp;)Z
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfpe;->b:Lfjs;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    const v0, 0xd

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

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    new-instance v0, Lfqg;

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
    goto/32 :goto_c

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p1, Lflx;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    iget-object v1, p0, Lfpe;->a:Lfmf;

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

    :goto_10
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1}, Lflx;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, p1, v1, v2}, Lfqg;-><init>(Landroid/graphics/Bitmap;Lfmf;I)V

    goto/32 :goto_0

    nop

    nop

    :goto_13
    invoke-interface {p0, v0, p2, p3}, Lfjs;->a(Ljava/lang/Object;Ljava/io/File;Lfjp;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final b()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
