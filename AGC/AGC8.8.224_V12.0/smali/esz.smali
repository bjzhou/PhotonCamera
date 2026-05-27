.class public final Lesz;
.super Ljava/lang/Object;

# interfaces
.implements Lhip;


# instance fields
.field public final a:Logd;

.field private final b:Logd;

.field private final c:Lnph;

.field private final d:Logd;

.field private final e:Logd;

.field private final f:Ligx;

.field private final g:Ljwb;

.field private final h:Ljuh;

.field private final i:Lkbc;

.field private final j:Lbkc;


# direct methods
.method public constructor <init>(Lbkc;Lnph;Logd;Ligx;Logd;Logd;Logd;Ljwb;Ljuh;Lkbc;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lesz;->j:Lbkc;

    iput-object p3, p0, Lesz;->b:Logd;

    iput-object p2, p0, Lesz;->c:Lnph;

    iput-object p6, p0, Lesz;->d:Logd;

    iput-object p7, p0, Lesz;->e:Logd;

    iput-object p4, p0, Lesz;->f:Ligx;

    iput-object p5, p0, Lesz;->a:Logd;

    iput-object p8, p0, Lesz;->g:Ljwb;

    iput-object p9, p0, Lesz;->h:Ljuh;

    iput-object p10, p0, Lesz;->i:Lkbc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lesz;->i:Lkbc;

    const-string v1, "EssentialUiInit#start"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lesz;->g:Ljwb;

    sget-object v1, Lgyu;->e:Lgyu;

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lesz;->j:Lbkc;

    invoke-virtual {v0}, Lbkc;->e()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcdg;->j(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lesz;->b:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbf;

    sget-object v1, Lklv;->a:Lklv;

    invoke-virtual {v0, v1}, Ldbf;->g(Lklv;)V

    :cond_0
    iget-object v0, p0, Lesz;->c:Lnph;

    iget-object v1, p0, Lesz;->f:Ligx;

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object v0, p0, Lesz;->i:Lkbc;

    const-string v1, "EssentialUiInit#prewarm"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lesz;->e:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    iget-object v0, p0, Lesz;->d:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    iget-object v0, p0, Lesz;->i:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, p0, Lesz;->h:Ljuh;

    iget-object v1, p0, Lesz;->i:Lkbc;

    new-instance v2, Lerm;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lerm;-><init>(Lesz;I)V

    const-string v3, "EssentialUiInit#wire"

    invoke-interface {v1, v3, v2}, Lkbc;->c(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
