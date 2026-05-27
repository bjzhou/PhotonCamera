.class public final Ldni;
.super Ljava/lang/Object;

# interfaces
.implements Lcik;


# instance fields
.field public final a:Ljava/lang/Object;

.field private final b:Ljuh;

.field private final synthetic c:I

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcvr;Ldhi;Landroid/content/Context;Lcdx;Ljuh;I[B[B[B[B)V
    .locals 0

    iput p6, p0, Ldni;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcvr;->C()Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    iput-object p1, p0, Ldni;->f:Ljava/lang/Object;

    iput-object p2, p0, Ldni;->d:Ljava/lang/Object;

    iput-object p3, p0, Ldni;->e:Ljava/lang/Object;

    iput-object p4, p0, Ldni;->a:Ljava/lang/Object;

    iput-object p5, p0, Ldni;->b:Ljuh;

    return-void
.end method

.method public constructor <init>(Ldnm;Lcdi;Lezx;Ldnk;Ljuh;I)V
    .locals 0

    iput p6, p0, Ldni;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldni;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldni;->f:Ljava/lang/Object;

    iput-object p3, p0, Ldni;->d:Ljava/lang/Object;

    iput-object p4, p0, Ldni;->e:Ljava/lang/Object;

    iput-object p5, p0, Ldni;->b:Ljuh;

    return-void
.end method


# virtual methods
.method public final bl()Lnou;
    .locals 8

    iget v0, p0, Ldni;->c:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldni;->d:Ljava/lang/Object;

    sget-object v3, Ldho;->ck:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Ldni;->b:Ljuh;

    iget-object v1, p0, Ldni;->d:Ljava/lang/Object;

    iget-object v3, p0, Ldni;->e:Ljava/lang/Object;

    check-cast v1, Lfak;

    invoke-static {v0, v1, v3}, Lfcr;->e(Ljuh;Lfak;Lfaz;)V

    iget-object v0, p0, Ldni;->f:Ljava/lang/Object;

    check-cast v0, Lcdi;

    invoke-virtual {v0}, Lcdi;->i()Ljuf;

    move-result-object v0

    iget-object v1, p0, Ldni;->a:Ljava/lang/Object;

    iget-object v3, p0, Ldni;->e:Ljava/lang/Object;

    check-cast v1, Ldnm;

    iget-object v4, v1, Ldnm;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lchq;

    const/16 v5, 0x10

    invoke-direct {v4, v1, v3, v5}, Lchq;-><init>(Ldnm;Ldns;I)V

    invoke-virtual {v0, v4}, Ljuf;->d(Lkad;)V

    invoke-static {v2}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ldni;->f:Ljava/lang/Object;

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v3, Lmgv;

    iget-object v4, p0, Ldni;->e:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    const v5, 0x7f1503e3

    invoke-direct {v3, v4, v5}, Lmgv;-><init>(Landroid/content/Context;I)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Ldni;->e:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Ldni;->e:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07010c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Ldni;->e:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07010d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v4, v5, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const v5, 0x7f1400da

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f1400dc

    invoke-virtual {v3, v5}, Lmgv;->s(I)V

    invoke-virtual {v3, v4}, Lmgv;->u(Landroid/view/View;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmgv;->k(Z)V

    new-instance v5, Lcdc;

    invoke-direct {v5, p0, v4, v2}, Lcdc;-><init>(Ldni;I[B)V

    const v2, 0x7f1400db

    invoke-virtual {v3, v2, v5}, Lmgv;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v2, p0, Ldni;->b:Ljuh;

    new-instance v4, Lazo;

    const/16 v5, 0x11

    invoke-direct {v4, v3, v5}, Lazo;-><init>(Lmgv;I)V

    invoke-virtual {v2, v4}, Ljuh;->execute(Ljava/lang/Runnable;)V

    :cond_1
    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ldni;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Ldez;->d(Lcik;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {p0}, Ldez;->d(Lcik;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
