.class public Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceKnob;
.super Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lgfj;->c:Lgfj;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceKnob;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
