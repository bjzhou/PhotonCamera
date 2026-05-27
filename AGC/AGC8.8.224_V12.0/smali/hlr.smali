.class public final Lhlr;
.super Ljava/lang/Object;

# interfaces
.implements Lgek;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lmqp;

.field public final c:Ldhi;

.field private final d:Lgzm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgzm;Lmqp;Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhlr;->a:Landroid/content/Context;

    iput-object p2, p0, Lhlr;->d:Lgzm;

    iput-object p3, p0, Lhlr;->b:Lmqp;

    iput-object p4, p0, Lhlr;->c:Ldhi;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    iget-object v0, p0, Lhlr;->d:Lgzm;

    sget-object v1, Lgzd;->V:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lmgv;

    iget-object v2, p0, Lhlr;->a:Landroid/content/Context;

    const v3, 0x7f1503e3

    invoke-direct {v1, v2, v3}, Lmgv;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lhlr;->a:Landroid/content/Context;

    const v3, 0x7f14056a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmgv;->t(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lhlr;->a:Landroid/content/Context;

    const v3, 0x7f140569

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmgv;->m(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lhlr;->a:Landroid/content/Context;

    const v3, 0x7f140598

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcdc;

    const/16 v4, 0xf

    invoke-direct {v3, p0, v4}, Lcdc;-><init>(Lhlr;I)V

    invoke-virtual {v1, v2, v3}, Lmgv;->r(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v2, p0, Lhlr;->a:Landroid/content/Context;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmgv;->o(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Lef;->c()Leg;

    :cond_0
    return v0
.end method

.method public final u(Lgec;Lgej;Z)Z
    .locals 0

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lhlr;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
