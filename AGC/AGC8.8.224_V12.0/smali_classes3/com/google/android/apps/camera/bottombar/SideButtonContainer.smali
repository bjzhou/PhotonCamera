.class public final Lcom/google/android/apps/camera/bottombar/SideButtonContainer;
.super Landroidx/constraintlayout/widget/ConstraintLayout;

# interfaces
.implements Lcom/google/android/apps/camera/bottombar/SideButtonCombineListener;


# instance fields
.field private final containerBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/apps/camera/bottombar/R$drawable;->side_button_container_background:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/SideButtonContainer;->containerBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public onCouple()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/SideButtonContainer;->containerBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/SideButtonContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onDecouple()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/SideButtonContainer;->setBackgroundColor(I)V

    return-void
.end method
