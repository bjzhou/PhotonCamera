.class public final Lcom/google/android/apps/camera/jupiter/JupiterButton;
.super Lhp;
.source "PG"

# interfaces
.implements Lglr;


# instance fields
.field public a:Z

.field private final b:Landroid/graphics/drawable/Drawable;

.field private final c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Lhp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    const p2, 0x7f08032f

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lcom/google/android/apps/camera/jupiter/JupiterButton;->b:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const p2, 0x7f080330

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    iput-boolean p2, p0, Lcom/google/android/apps/camera/jupiter/JupiterButton;->a:Z

    nop

    nop

    goto/32 :goto_1

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

    :goto_a
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lcom/google/android/apps/camera/jupiter/JupiterButton;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/jupiter/JupiterButton;->setBackgroundColor(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    goto :goto_4

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/camera/jupiter/JupiterButton;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    iget-boolean v0, p0, Lcom/google/android/apps/camera/jupiter/JupiterButton;->a:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/android/apps/camera/jupiter/JupiterButton;->b:Landroid/graphics/drawable/Drawable;

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
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/jupiter/JupiterButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
