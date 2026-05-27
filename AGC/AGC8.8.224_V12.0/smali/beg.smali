.class final Lbeg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lbej;

.field final b:Lnou;


# direct methods
.method public constructor <init>(Lbej;Lnou;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbeg;->a:Lbej;

    iput-object p2, p0, Lbeg;->b:Lnou;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbeg;->a:Lbej;

    iget-object v0, v0, Lbej;->d:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbeg;->b:Lnou;

    invoke-static {v0}, Lbej;->a(Lnou;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lbej;->b:Lbea;

    iget-object v2, p0, Lbeg;->a:Lbej;

    invoke-virtual {v1, v2, p0, v0}, Lbea;->d(Lbej;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbeg;->a:Lbej;

    invoke-static {v0}, Lbej;->b(Lbej;)V

    :cond_1
    return-void
.end method
