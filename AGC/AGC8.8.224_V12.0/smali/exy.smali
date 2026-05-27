.class public final Lexy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;ZII)V
    .locals 0

    iput p4, p0, Lexy;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexy;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lexy;->a:Z

    iput p3, p0, Lexy;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lcds;IZI)V
    .locals 0

    iput p4, p0, Lexy;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexy;->c:Ljava/lang/Object;

    iput p2, p0, Lexy;->b:I

    iput-boolean p3, p0, Lexy;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;ZII)V
    .locals 0

    iput p4, p0, Lexy;->d:I

    iput-object p1, p0, Lexy;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lexy;->a:Z

    iput p3, p0, Lexy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lexy;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lexy;->c:Ljava/lang/Object;

    iget-boolean v1, p0, Lexy;->a:Z

    iget v2, p0, Lexy;->b:I

    sget-object v3, Limz;->a:Lj$/time/Duration;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lexy;->c:Ljava/lang/Object;

    iget v2, p0, Lexy;->b:I

    iget-boolean v3, p0, Lexy;->a:Z

    new-instance v4, Lcsf;

    check-cast v0, Lcds;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Lcsf;-><init>(Lcds;I)V

    iget-object v5, v0, Lcds;->d:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcds;->e:Landroid/content/DialogInterface$OnClickListener;

    :goto_0
    invoke-static {}, Ljuh;->a()V

    invoke-virtual {v0}, Lcds;->d()V

    iget-object v6, v0, Lcds;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-eqz v6, :cond_1

    iget-object v0, v0, Lcds;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    return-void

    :cond_1
    new-instance v6, Lmgv;

    iget-object v7, v0, Lcds;->a:Landroid/app/Activity;

    const v8, 0x7f1503e3

    invoke-direct {v6, v7, v8}, Lmgv;-><init>(Landroid/content/Context;I)V

    iget-object v7, v0, Lcds;->a:Landroid/app/Activity;

    const v8, 0x7f1400e7

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmgv;->t(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcds;->a:Landroid/app/Activity;

    invoke-virtual {v7, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lmgv;->m(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v1}, Lmgv;->k(Z)V

    new-instance v1, Lcdr;

    invoke-direct {v1, v5}, Lcdr;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v6, v1}, Lmgv;->p(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v1, v6, Lef;->a:Leb;

    iput-object v4, v1, Leb;->l:Landroid/content/DialogInterface$OnDismissListener;

    iget-object v1, v0, Lcds;->a:Landroid/app/Activity;

    const v2, 0x7f14014b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v5}, Lmgv;->o(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    if-eqz v3, :cond_2

    iget-object v1, v0, Lcds;->a:Landroid/app/Activity;

    const v2, 0x7f1400e5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v3}, Lmgv;->r(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_2
    invoke-virtual {v6}, Lef;->c()Leg;

    move-result-object v1

    iput-object v1, v0, Lcds;->g:Leg;

    return-void

    :pswitch_1
    iget-object v0, p0, Lexy;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    const v2, 0x7f0b01e8

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v2, p0, Lexy;->a:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget v1, p0, Lexy;->b:I

    packed-switch v1, :pswitch_data_1

    return-void

    :pswitch_2
    const v1, 0x7f1403a9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :pswitch_3
    const v1, 0x7f1403ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :pswitch_4
    const v1, 0x7f1403ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :pswitch_5
    const v1, 0x7f1403aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
