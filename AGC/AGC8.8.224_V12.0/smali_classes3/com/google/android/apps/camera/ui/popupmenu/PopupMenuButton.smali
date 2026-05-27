.class public Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuButton;
.super Liq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Liq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f08015c

    invoke-virtual {p0, p1}, Liq;->setBackgroundResource(I)V

    invoke-static {p0}, Linb;->e(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuButton;->setColorFilter(I)V

    return-void
.end method
