.class public final synthetic Laic;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$DurationScaleChangeListener;


# instance fields
.field public final synthetic a:Laid;


# direct methods
.method public synthetic constructor <init>(Laid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laic;->a:Laid;

    return-void
.end method


# virtual methods
.method public final onChanged(F)V
    .locals 1

    iget-object v0, p0, Laic;->a:Laid;

    iget-object v0, v0, Laid;->b:Ljava/lang/Object;

    check-cast v0, Laif;

    iput p1, v0, Laif;->f:F

    return-void
.end method
