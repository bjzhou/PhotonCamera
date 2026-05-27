.class public final Lntj;
.super Ljava/lang/Object;

# interfaces
.implements Ljke;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lntg;

.field final synthetic c:Ljke;

.field final synthetic d:Lnto;


# direct methods
.method public constructor <init>(Lnto;Landroid/content/Context;Lntg;Ljke;)V
    .locals 0

    iput-object p1, p0, Lntj;->d:Lnto;

    iput-object p2, p0, Lntj;->a:Landroid/content/Context;

    iput-object p3, p0, Lntj;->b:Lntg;

    iput-object p4, p0, Lntj;->c:Ljke;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lntj;->c:Ljke;

    invoke-interface {v0, p1, p2}, Ljke;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final b(Ljkd;)V
    .locals 4

    new-instance v0, Lntm;

    iget-object v1, p0, Lntj;->a:Landroid/content/Context;

    iget-object v2, p0, Lntj;->d:Lnto;

    iget-object v2, v2, Lnto;->a:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lntj;->b:Lntg;

    invoke-direct {v0, v1, v2, v3, p1}, Lntm;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lntg;Ljkd;)V

    iget-object p1, p0, Lntj;->c:Ljke;

    invoke-interface {p1, v0}, Ljke;->b(Ljkd;)V

    return-void
.end method
