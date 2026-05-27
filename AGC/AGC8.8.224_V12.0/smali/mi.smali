.class public final Lmi;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmi;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmi;->f:Z

    iput v0, p0, Lmi;->g:I

    iput v0, p0, Lmi;->b:I

    iput v0, p0, Lmi;->c:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lmi;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmi;->e:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method final a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 5

    iget v0, p0, Lmi;->a:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v2, -0x1

    iput v2, p0, Lmi;->a:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->I(I)V

    iput-boolean v1, p0, Lmi;->f:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lmi;->f:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmi;->e:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_2

    iget v2, p0, Lmi;->d:I

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget v2, p0, Lmi;->d:I

    if-lez v2, :cond_4

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->J:Lmn;

    iget v3, p0, Lmi;->b:I

    iget v4, p0, Lmi;->c:I

    invoke-virtual {p1, v3, v4, v2, v0}, Lmn;->c(IIILandroid/view/animation/Interpolator;)V

    iget p1, p0, Lmi;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmi;->g:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_3

    const-string p1, "RecyclerView"

    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v1, p0, Lmi;->f:Z

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Scroll duration must be a positive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iput v1, p0, Lmi;->g:I

    return-void
.end method

.method public final b(IIILandroid/view/animation/Interpolator;)V
    .locals 0

    iput p1, p0, Lmi;->b:I

    iput p2, p0, Lmi;->c:I

    iput p3, p0, Lmi;->d:I

    iput-object p4, p0, Lmi;->e:Landroid/view/animation/Interpolator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmi;->f:Z

    return-void
.end method
