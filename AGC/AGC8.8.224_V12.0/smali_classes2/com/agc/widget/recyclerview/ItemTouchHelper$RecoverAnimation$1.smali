.class Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;IIFFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation$1;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation$1;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    return-void
.end method
