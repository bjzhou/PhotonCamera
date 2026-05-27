.class public final Ldbi;
.super Ljava/lang/Object;

# interfaces
.implements Ldby;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcdx;

.field public final c:Landroid/app/Activity;

.field public final d:Lfbz;

.field public final e:Lkaq;

.field public final f:Lcvr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcdx;Landroid/app/Activity;Lfbz;Lkaq;Lcvr;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldbi;->a:Landroid/content/Context;

    iput-object p2, p0, Ldbi;->b:Lcdx;

    iput-object p3, p0, Ldbi;->c:Landroid/app/Activity;

    iput-object p4, p0, Ldbi;->d:Lfbz;

    iput-object p6, p0, Ldbi;->f:Lcvr;

    const-string p1, "CamUnavailableHelp"

    invoke-interface {p5, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Ldbi;->e:Lkaq;

    return-void
.end method

.method private final e(II)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Ldbg;

    invoke-direct {v0, p0, p1, p2}, Ldbg;-><init>(Ldbi;II)V

    return-object v0
.end method


# virtual methods
.method public final a(I)Leg;
    .locals 4

    new-instance v0, Lmgv;

    iget-object v1, p0, Ldbi;->a:Landroid/content/Context;

    const v2, 0x7f1503e3

    invoke-direct {v0, v1, v2}, Lmgv;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Ldbi;->a:Landroid/content/Context;

    invoke-static {v1}, Lbze;->aa(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f1400e1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Ldbi;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1400e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmgv;->t(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lmgv;->u(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmgv;->k(Z)V

    new-instance v2, Ldbh;

    invoke-direct {v2, p0, p1, v1}, Ldbh;-><init>(Ldbi;II)V

    const v1, 0x7f1400dd

    invoke-virtual {v0, v1, v2}, Lmgv;->n(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Ldbh;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Ldbh;-><init>(Ldbi;II)V

    const p1, 0x7f140129

    invoke-virtual {v0, p1, v1}, Lmgv;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lef;->b()Leg;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)Leg;
    .locals 4

    new-instance v0, Lmgv;

    iget-object v1, p0, Ldbi;->a:Landroid/content/Context;

    const v2, 0x7f1503e3

    invoke-direct {v0, v1, v2}, Lmgv;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Ldbi;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1400e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmgv;->t(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Ldbi;->a:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {p0, v2, p1}, Ldbi;->e(II)Ljava/lang/Runnable;

    move-result-object v2

    const v3, 0x7f1400e3

    invoke-static {v3, v1, v2}, Lbze;->ab(ILandroid/content/Context;Ljava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmgv;->u(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmgv;->k(Z)V

    new-instance v1, Ldbh;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Ldbh;-><init>(Ldbi;II)V

    const p1, 0x7f1400dd

    invoke-virtual {v0, p1, v1}, Lmgv;->n(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lef;->b()Leg;

    move-result-object p1

    return-object p1
.end method

.method public final c(I)Leg;
    .locals 5

    new-instance v0, Lmgv;

    iget-object v1, p0, Ldbi;->a:Landroid/content/Context;

    const v2, 0x7f1503e3

    invoke-direct {v0, v1, v2}, Lmgv;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Ldbi;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1400e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmgv;->t(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Ldbi;->a:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {p0, v2, p1}, Ldbi;->e(II)Ljava/lang/Runnable;

    move-result-object v3

    const v4, 0x7f1400e2

    invoke-static {v4, v1, v3}, Lbze;->ab(ILandroid/content/Context;Ljava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmgv;->u(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmgv;->k(Z)V

    new-instance v1, Ldbh;

    invoke-direct {v1, p0, p1, v2}, Ldbh;-><init>(Ldbi;II)V

    const p1, 0x7f1400dd

    invoke-virtual {v0, p1, v1}, Lmgv;->n(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lef;->b()Leg;

    move-result-object p1

    return-object p1
.end method

.method public final d(II)V
    .locals 8

    iget-object v0, p0, Ldbi;->e:Lkaq;

    invoke-static {p1}, Lmoz;->L(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hardware help dialog for unavailability of any cameras due to reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ldcb;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at stage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Negative button clicked"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v2, p0, Ldbi;->d:Lfbz;

    const/4 v3, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    move v5, p2

    invoke-interface/range {v2 .. v7}, Lfbz;->W(IIILklv;I)V

    return-void
.end method
