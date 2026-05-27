.class public final Ldbp;
.super Ljava/lang/Object;

# interfaces
.implements Ldca;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcdx;

.field public final c:Landroid/app/Activity;

.field public final d:Lcvr;

.field private final e:Lfbz;

.field private final f:Lkaq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcdx;Landroid/app/Activity;Lfbz;Lkaq;Lcvr;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldbp;->a:Landroid/content/Context;

    iput-object p2, p0, Ldbp;->b:Lcdx;

    iput-object p3, p0, Ldbp;->c:Landroid/app/Activity;

    iput-object p4, p0, Ldbp;->e:Lfbz;

    iput-object p6, p0, Ldbp;->d:Lcvr;

    const-string p1, "FallbackHelper"

    invoke-interface {p5, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Ldbp;->f:Lkaq;

    return-void
.end method

.method private final g(Lklv;III)Ljava/lang/Runnable;
    .locals 7

    new-instance v6, Ldbn;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ldbn;-><init>(Ldbp;Lklv;III)V

    return-object v6
.end method


# virtual methods
.method public final a(IILklv;)Leg;
    .locals 9

    new-instance v0, Lmgv;

    iget-object v1, p0, Ldbp;->a:Landroid/content/Context;

    const v2, 0x7f1503e3

    invoke-direct {v0, v1, v2}, Lmgv;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Ldbp;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1400e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmgv;->t(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Ldbp;->a:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {p0, p3, p1, p2, v2}, Ldbp;->g(Lklv;III)Ljava/lang/Runnable;

    move-result-object v2

    const v3, 0x7f1400e2

    invoke-static {v3, v1, v2}, Lbze;->ab(ILandroid/content/Context;Ljava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmgv;->u(Landroid/view/View;)V

    new-instance v1, Ldbo;

    const/4 v7, 0x1

    move-object v2, v1

    move-object v3, p0

    move-object v4, p3

    move v5, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Ldbo;-><init>(Ldbp;Lklv;III)V

    const v2, 0x7f1400dd

    invoke-virtual {v0, v2, v1}, Lmgv;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Ldbo;

    const/4 v8, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p3

    move v6, p1

    move v7, p2

    invoke-direct/range {v3 .. v8}, Ldbo;-><init>(Ldbp;Lklv;III)V

    const p1, 0x7f14012a

    invoke-virtual {v0, p1, v1}, Lmgv;->n(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lef;->b()Leg;

    move-result-object p1

    return-object p1
.end method

.method public final b(IILklv;)Leg;
    .locals 9

    new-instance v0, Lmgv;

    iget-object v1, p0, Ldbp;->a:Landroid/content/Context;

    const v2, 0x7f1503e3

    invoke-direct {v0, v1, v2}, Lmgv;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Ldbp;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1400e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmgv;->t(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Ldbp;->a:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {p0, p3, p1, p2, v2}, Ldbp;->g(Lklv;III)Ljava/lang/Runnable;

    move-result-object v2

    const v3, 0x7f1400e3

    invoke-static {v3, v1, v2}, Lbze;->ab(ILandroid/content/Context;Ljava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmgv;->u(Landroid/view/View;)V

    new-instance v1, Ldbo;

    const/4 v7, 0x4

    move-object v2, v1

    move-object v3, p0

    move-object v4, p3

    move v5, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Ldbo;-><init>(Ldbp;Lklv;III)V

    const v2, 0x7f1400dd

    invoke-virtual {v0, v2, v1}, Lmgv;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Ldbo;

    const/4 v8, 0x5

    move-object v3, v1

    move-object v4, p0

    move-object v5, p3

    move v6, p1

    move v7, p2

    invoke-direct/range {v3 .. v8}, Ldbo;-><init>(Ldbp;Lklv;III)V

    const p1, 0x7f14012a

    invoke-virtual {v0, p1, v1}, Lmgv;->n(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lef;->b()Leg;

    move-result-object p1

    return-object p1
.end method

.method public final c(IILklv;)Leg;
    .locals 9

    new-instance v0, Lmgv;

    iget-object v1, p0, Ldbp;->a:Landroid/content/Context;

    const v2, 0x7f1503e3

    invoke-direct {v0, v1, v2}, Lmgv;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Ldbp;->a:Landroid/content/Context;

    invoke-static {v1}, Lbze;->aa(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f1400e1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Ldbp;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1400e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmgv;->t(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lmgv;->u(Landroid/view/View;)V

    new-instance v1, Ldbo;

    const/4 v8, 0x2

    move-object v3, v1

    move-object v4, p0

    move-object v5, p3

    move v6, p1

    move v7, p2

    invoke-direct/range {v3 .. v8}, Ldbo;-><init>(Ldbp;Lklv;III)V

    const v2, 0x7f140129

    invoke-virtual {v0, v2, v1}, Lmgv;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Ldbo;

    const/4 v8, 0x3

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Ldbo;-><init>(Ldbp;Lklv;III)V

    const p1, 0x7f14012a

    invoke-virtual {v0, p1, v1}, Lmgv;->n(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lef;->b()Leg;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lklv;IIII)V
    .locals 8

    iget-object v0, p0, Ldbp;->f:Lkaq;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    packed-switch p2, :pswitch_data_0

    const-string v2, "SWITCH"

    goto :goto_0

    :pswitch_0
    const-string v2, "AUTOMATIC"

    :goto_0
    invoke-static {p3}, Ldcb;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p4}, Lmoz;->L(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, p5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hardware help dialog when falling back to working camera. defective camera: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Trigger reason "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Fallback reason "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at stage "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " event type "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v2, p0, Ldbp;->e:Lfbz;

    move v3, p5

    move v4, p4

    move v5, p3

    move-object v6, p1

    move v7, p2

    invoke-interface/range {v2 .. v7}, Lfbz;->W(IIILklv;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lklv;III)V
    .locals 6

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Ldbp;->d(Lklv;IIII)V

    return-void
.end method

.method public final f(Lklv;III)V
    .locals 6

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Ldbp;->d(Lklv;IIII)V

    return-void
.end method
