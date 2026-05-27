.class public final Lmlk;
.super Ljava/lang/Object;

# interfaces
.implements Lmlb;


# instance fields
.field private final synthetic a:I

.field private final b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0

    iput p2, p0, Lmlk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmlk;->b:Landroid/view/ViewGroup;

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;I)V
    .locals 0

    iput p2, p0, Lmlk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmlk;->b:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final a(Lmle;)V
    .locals 2

    iget v0, p0, Lmlk;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lmlk;->b:Landroid/view/ViewGroup;

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->b(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lmlk;->b:Landroid/view/ViewGroup;

    iget p1, p1, Lmle;->d:I

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->d(IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lmle;)V
    .locals 0

    iget p1, p0, Lmlk;->a:I

    return-void
.end method

.method public final c()V
    .locals 1

    iget v0, p0, Lmlk;->a:I

    return-void
.end method
