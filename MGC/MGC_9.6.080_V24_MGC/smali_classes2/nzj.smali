.class public final Lnzj;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "PG"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Landroid/content/res/ColorStateList;

.field public e:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lnzj;->e:Landroid/graphics/PorterDuff$Mode;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lnzj;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p1, Lnzj;->b:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p1, Lnzj;->d:Landroid/content/res/ColorStateList;

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
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    iput v0, p0, Lnzj;->c:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iget v0, p1, Lnzj;->c:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Lnzj;->a:I

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

    :goto_8
    iget-object p1, p1, Lnzj;->e:Landroid/graphics/PorterDuff$Mode;

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

    :goto_9
    iget v0, p1, Lnzj;->a:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lnzj;->e:Landroid/graphics/PorterDuff$Mode;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Lnzj;->b:I

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

    nop

    :goto_c
    iput-object v0, p0, Lnzj;->e:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    iput-object v0, p0, Lnzj;->d:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 0

    goto/32 :goto_0

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

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0, v1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;-><init>(Lnzj;Lnzk;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

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

    nop

    :goto_6
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_c
    const v0, 0x11

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object p1

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;-><init>(Lnzj;Lnzk;)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method
