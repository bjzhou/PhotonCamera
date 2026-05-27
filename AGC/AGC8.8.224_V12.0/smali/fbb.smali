.class final Lfbb;
.super Lpn;


# instance fields
.field final synthetic a:Lfbc;


# direct methods
.method public constructor <init>(Lfbc;)V
    .locals 0

    iput-object p1, p0, Lfbb;->a:Lfbc;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lpn;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lfbb;->a:Lfbc;

    iget-object v0, v0, Lfbc;->x:Lezx;

    sget-object v1, Lezv;->a:Lezv;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lfak;->a(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lpn;->d(Z)V

    iget-object v0, p0, Lfbb;->a:Lfbc;

    invoke-virtual {v0}, Lpl;->onBackPressed()V

    :cond_0
    return-void
.end method
