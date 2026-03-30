.class public final Lhu;
.super Landroid/widget/RatingBar;
.source "PG"


# instance fields
.field private final a:Lhs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, p0}, Lhs;-><init>(Landroid/widget/ProgressBar;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Llq;->d(Landroid/view/View;Landroid/content/Context;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    new-instance p1, Lhs;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lhu;->a:Lhs;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lhu;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    const v0, 0x7f04058b

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, p2, v0}, Lhs;->b(Landroid/util/AttributeSet;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final declared-synchronized onMeasure(II)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/RatingBar;->onMeasure(II)V

    iget-object p2, p0, Lhu;->a:Lhs;

    nop

    iget-object p2, p2, Lhs;->a:Landroid/graphics/Bitmap;

    nop

    if-eqz p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    nop

    nop

    nop

    invoke-virtual {p0}, Lhu;->getNumStars()I

    move-result v0

    nop

    mul-int/2addr p2, v0

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    invoke-static {p2, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lhu;->getMeasuredHeight()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1, p2}, Lhu;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

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

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
