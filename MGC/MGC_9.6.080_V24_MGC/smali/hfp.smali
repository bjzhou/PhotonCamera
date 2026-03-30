.class public final Lhfp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public final b:Landroid/graphics/drawable/Drawable;

.field public final c:Landroid/graphics/drawable/Drawable;

.field public final d:Landroid/graphics/drawable/Drawable;

.field public final e:I

.field public final f:Landroid/animation/PointFEvaluator;

.field public final g:Landroid/animation/RectEvaluator;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    new-instance v0, Landroid/animation/RectEvaluator;

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
    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lhfp;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Landroid/animation/PointFEvaluator;

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

    :goto_4
    iput p5, p0, Lhfp;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lhfp;->a:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Landroid/animation/PointFEvaluator;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Lhfp;->g:Landroid/animation/RectEvaluator;

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

    :goto_9
    iput-object v0, p0, Lhfp;->f:Landroid/animation/PointFEvaluator;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    iput-object p4, p0, Lhfp;->d:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p2, p0, Lhfp;->b:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iget-object p1, p0, Lhfp;->c:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lhfp;->a:Landroid/graphics/drawable/Drawable;

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

    :goto_3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lhfp;->b:Landroid/graphics/drawable/Drawable;

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

    :goto_7
    iget-object p0, p0, Lhfp;->d:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop
.end method
