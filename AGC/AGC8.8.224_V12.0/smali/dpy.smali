.class public final Ldpy;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lhrz;

.field public final c:Ljwb;

.field public d:Lgej;

.field public e:I

.field private final f:Ljuh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhrz;Ljuh;Ljwb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lgej;->M:Lgej;

    iput-object v0, p0, Ldpy;->d:Lgej;

    const/4 v0, -0x1

    iput v0, p0, Ldpy;->e:I

    iput-object p1, p0, Ldpy;->a:Landroid/content/Context;

    iput-object p2, p0, Ldpy;->b:Lhrz;

    iput-object p3, p0, Ldpy;->f:Ljuh;

    iput-object p4, p0, Ldpy;->c:Ljwb;

    return-void
.end method

.method public static b([Landroid/widget/FrameLayout;Lgej;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_5

    sget-object v2, Lgej;->M:Lgej;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x0

    goto :goto_4

    :cond_1
    :goto_2
    sget-object v2, Lgej;->K:Lgej;

    if-ne p1, v2, :cond_3

    if-eq v1, v3, :cond_2

    goto :goto_3

    :cond_2
    goto :goto_1

    :cond_3
    :goto_3
    sget-object v2, Lgej;->L:Lgej;

    const/16 v4, 0x8

    if-ne p1, v2, :cond_4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    :goto_4
    aget-object v2, p0, v1

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    add-int/2addr v1, v3

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static c(Lgej;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;II)V
    .locals 1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lgej;->M:Lgej;

    if-ne p0, v0, :cond_1

    move v0, p4

    goto :goto_0

    :cond_1
    move v0, p5

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    sget-object p1, Lgej;->K:Lgej;

    if-ne p0, p1, :cond_2

    move p1, p4

    goto :goto_1

    :cond_2
    move p1, p5

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    sget-object p1, Lgej;->L:Lgej;

    if-eq p0, p1, :cond_3

    move p4, p5

    :cond_3
    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method public static d(Lgej;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V
    .locals 1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lgej;->M:Lgej;

    if-ne p0, v0, :cond_1

    move v0, p4

    goto :goto_0

    :cond_1
    move v0, p5

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object p1, Lgej;->K:Lgej;

    if-ne p0, p1, :cond_2

    move p1, p4

    goto :goto_1

    :cond_2
    move p1, p5

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object p1, Lgej;->L:Lgej;

    if-eq p0, p1, :cond_3

    move p4, p5

    :cond_3
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method public static e(Lgej;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    sget-object v0, Lgej;->M:Lgej;

    const v1, 0x7f0803d7

    const v2, 0x7f0803d8

    if-ne p0, v0, :cond_0

    const v0, 0x7f0803d7

    goto :goto_0

    :cond_0
    const v0, 0x7f0803d8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    sget-object p1, Lgej;->K:Lgej;

    if-ne p0, p1, :cond_1

    const p1, 0x7f0803d7

    goto :goto_1

    :cond_1
    const p1, 0x7f0803d8

    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    sget-object p1, Lgej;->L:Lgej;

    if-ne p0, p1, :cond_2

    goto :goto_2

    :cond_2
    const v1, 0x7f0803d8

    :goto_2
    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public final a(Lgej;)V
    .locals 2

    iget-object v0, p0, Ldpy;->f:Ljuh;

    new-instance v1, Ldpw;

    invoke-direct {v1, p0, p1}, Ldpw;-><init>(Ldpy;Lgej;)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method
