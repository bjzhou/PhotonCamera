.class public final Lhcg;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/apps/camera/smarts/SmartsChipView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/smarts/SmartsChipView;I)V
    .locals 0

    iput-object p1, p0, Lhcg;->b:Lcom/google/android/apps/camera/smarts/SmartsChipView;

    iput p2, p0, Lhcg;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lhcg;->b:Lcom/google/android/apps/camera/smarts/SmartsChipView;

    iget v0, p0, Lhcg;->a:I

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->setVisibility(I)V

    return-void
.end method
