.class public final Lcom/google/android/apps/camera/bottombar/SideButtonContainer;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "PG"

# interfaces
.implements Lglr;


# instance fields
.field private final i:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    const p2, 0x7f08049c

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/SideButtonContainer;->i:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

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

    :goto_6
    const/4 v0, 0x0

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
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/SideButtonContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/SideButtonContainer;->i:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/SideButtonContainer;->setBackgroundColor(I)V

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

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
