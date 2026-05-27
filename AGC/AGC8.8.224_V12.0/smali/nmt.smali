.class final Lnmt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lnnb;

.field final b:Lnou;


# direct methods
.method public constructor <init>(Lnnb;Lnou;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnmt;->a:Lnnb;

    iput-object p2, p0, Lnmt;->b:Lnou;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lnmt;->a:Lnnb;

    sget-object v1, Lnnb;->e:Lnmm;

    iget-object v0, v0, Lnnb;->value:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnmt;->b:Lnou;

    invoke-static {v0}, Lnnb;->k(Lnou;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lnnb;->e:Lnmm;

    iget-object v2, p0, Lnmt;->a:Lnnb;

    invoke-virtual {v1, v2, p0, v0}, Lnmm;->f(Lnnb;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnmt;->a:Lnnb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnnb;->m(Lnnb;Z)V

    :cond_1
    return-void
.end method
