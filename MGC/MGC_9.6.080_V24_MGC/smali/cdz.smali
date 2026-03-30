.class public final Lcdz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcfk;


# instance fields
.field private final a:Landroid/graphics/PathMeasure;


# direct methods
.method public constructor <init>(Landroid/graphics/PathMeasure;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcdz;->a:Landroid/graphics/PathMeasure;

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()F
    .locals 0

    goto/32 :goto_1

    nop

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
    iget-object p0, p0, Lcdz;->a:Landroid/graphics/PathMeasure;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final b(FFLcfi;)V
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    const-string p1, "Unable to obtain android.graphics.Path"

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p3, p3, Lcdy;->a:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    check-cast p3, Lcdy;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    :goto_8
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lcdz;->a:Landroid/graphics/PathMeasure;

    nop

    nop

    nop

    goto/32 :goto_4

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

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    instance-of v0, p3, Lcdy;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Lcfi;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcdz;->a:Landroid/graphics/PathMeasure;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    const/4 v0, 0x0

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

    :goto_3
    invoke-virtual {p0, p1, v0}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p1, Lcdy;->a:Landroid/graphics/Path;

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

    :goto_5
    check-cast p1, Lcdy;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method
