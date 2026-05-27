.class public final Lmll;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/material/tabs/TabLayout;

.field public final b:Landroidx/viewpager2/widget/ViewPager2;

.field public c:Lls;

.field public d:Z

.field public e:Lmlj;

.field public f:Lmlb;

.field public g:Lej;

.field private final h:Lmli;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lmli;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmll;->a:Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p0, Lmll;->b:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p3, p0, Lmll;->h:Lmli;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lmll;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->g()V

    iget-object v0, p0, Lmll;->c:Lls;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lls;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lmll;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->d()Lmle;

    move-result-object v3

    iget-object v4, p0, Lmll;->h:Lmli;

    invoke-interface {v4, v3, v2}, Lmli;->a(Lmle;I)V

    iget-object v4, p0, Lmll;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4, v3, v1}, Lcom/google/android/material/tabs/TabLayout;->f(Lmle;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    iget-object v0, p0, Lmll;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lmll;->b:Landroidx/viewpager2/widget/ViewPager2;

    iget v1, v1, Landroidx/viewpager2/widget/ViewPager2;->b:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lmll;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->a()I

    move-result v2

    if-eq v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->c(I)Lmle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->h(Lmle;)V

    :cond_1
    return-void
.end method
