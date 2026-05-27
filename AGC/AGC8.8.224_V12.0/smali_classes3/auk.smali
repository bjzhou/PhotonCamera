.class public final Lauk;
.super Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback$-CC;


# instance fields
.field final synthetic a:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    iput-object p1, p0, Lauk;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback$-CC;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lauk;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->f()V

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 2

    iget-object v0, p0, Lauk;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget v1, v0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    iget-object p1, v0, Landroidx/viewpager2/widget/ViewPager2;->j:Lath;

    check-cast p1, Lauq;

    invoke-virtual {p1}, Lauq;->f()V

    :cond_0
    return-void
.end method
